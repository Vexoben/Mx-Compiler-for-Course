package Middleend.llvmir;

import Frontend.Tools.Error.IRError;
import Frontend.Tools.Position;
import Frontend.Tools.Registry.FuncRegistry;
import Frontend.Tools.Scope.BaseScope;
import Frontend.Tools.Type.BaseType;
import Frontend.Tools.Type.FuncType;
import Frontend.Tools.Type.VarType;
import Frontend.ast.*;
import Frontend.ast.ASTVisitor;
import Frontend.ast.def.*;
import Frontend.ast.expr.*;
import Frontend.ast.stmt.*;
import Middleend.llvmir.Constant.*;
import Middleend.llvmir.Inst.*;
import Middleend.llvmir.Type.*;

import java.awt.image.PackedColorModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Stack;

public class IRBuilder implements ASTVisitor {
    Stack<BaseScope> scopes = new Stack<>();    // maybe useless?
    BasicBlock cur_block = null;
    Function cur_func = null;
    IRScope cur_scope = new IRScope(null);
    Stack<BasicBlock> continue_jump_to = new Stack<>(), break_jump_to = new Stack<>();
    HashMap<String, StructType> class_table;
    HashMap<String, Function> func_table;
    boolean is_constructor = false, is_member = false;
    String cur_class_name = null;
    Function init_func = new Function("__init_function__", new IRFuncType(null, new VoidType(), new ArrayList<>()));

    public IRBuilder(RootNode root) {
        visit(root);
    }

    DerivedType translate_vartype(VarType type) {
        DerivedType basetype = null;
        if (type.match_type(BaseType.BuiltinType.INT)) basetype = new IntType();
        else if (type.match_type(BaseType.BuiltinType.BOOL)) basetype = new BoolType();
        else if (type.match_type(BaseType.BuiltinType.STRING)) basetype = new PointerType(new IntType(8));
        else if (type.built_in_type == BaseType.BuiltinType.CLASS) {
            basetype = class_table.get(type.typename);
        } else throw new IRError(new Position(0, 0), "unknown error");
        DerivedType realtype = basetype;
        for (int k = 0; k < type.dimension; ++k) {
            realtype = new PointerType(realtype);
        }
        return realtype;
    }

    Function translate_functype(String name, FuncType type, DerivedType _belong) {
        ArrayList<DerivedType> args = new ArrayList<>();
        if (_belong != null) {
            args.add(_belong);
        }
        type.func_args_type.forEach(i -> args.add(translate_vartype(i)));
        IRFuncType functype = new IRFuncType(_belong, translate_vartype(type.ret_type), args);
        return new Function(name, functype);
    }

    Function constructor_functype(String name, DerivedType _belong) {
        ArrayList<DerivedType> args = new ArrayList<>();
        IRFuncType ret = new IRFuncType(_belong, new VoidType(), args);
        return new Function(name, ret);
    }

    String rename_member_func(String origin_name, String class_name) {
        return "__in_class__" + class_name + "_" + origin_name;
    }

    String rename_constructor(String class_name) {
        return "__constructor__" + class_name;
    }

    @Override
    public void visit(RootNode obj) {
        scopes.push(obj.global_scope);
        // builtin_function
        // todo
        // declare classes, member_function, constructor
        obj.child_list.forEach(i -> {
            if (i instanceof ClassDefNode) {
                StructType type = new StructType(((ClassDefNode) i).class_registry.name);
                class_table.put(type.get_name(), type);
            }
        });
        obj.child_list.forEach(i -> {
            if (i instanceof ClassDefNode) {
                StructType type = class_table.get(((ClassDefNode) i).class_registry.name);
                ArrayList<VarType> var_list = ((ClassDefNode) i).class_registry.class_type.var_list;
                var_list.forEach(j -> type.add_var(translate_vartype(j)));
                ArrayList<FuncType> func_list = ((ClassDefNode) i).class_registry.class_type.func_list;
                func_list.forEach(j -> {
                    String func_name = rename_member_func(j.typename, ((ClassDefNode) i).class_registry.name);
                    func_table.put(func_name, translate_functype(func_name, j, type));
                });
                if (((ClassDefNode) i).constructor != null) {
                    String func_name = rename_constructor(((ClassDefNode) i).class_registry.name);
                    func_table.put(func_name, constructor_functype(func_name, type));
                }
            }
        });

        // declare functions
        obj.child_list.forEach(i -> {
            if (i instanceof FuncDefNode) {
                String func_name = ((FuncDefNode) i).func_registry.name;
                func_table.put(func_name, translate_functype(func_name, ((FuncDefNode) i).func_registry.func_type, null));
            }
        });

        // declare global-variables
        obj.child_list.forEach(i -> {
            if (i instanceof VarDefNode) {
                visit(i);
            }
        });

        obj.child_list.forEach(i -> {
            if (i instanceof ClassDefNode) {
                visit(i);
            }
            if (i instanceof FuncDefNode) {
                visit(i);
            }
        });

        scopes.pop();
    }
    @Override
    public void visit(BlockNode obj) {
        scopes.push(obj.suite_scope);
        obj.stmt_list.forEach(i -> i.accept(this));
        scopes.pop();
    }
    @Override
    public void visit(StmtNode obj) {} // abstract node
    @Override
    public void visit(DefNode obj) {}  // abstract node
    @Override
    public void visit(ExprNode obj) {} // abstract node

    //def
    @Override
    public void visit(FuncDefNode obj) {
        scopes.push(obj.func_scope);
        cur_func.entry_block.insert(new BasicBlock("__first_block__" + obj.func_registry.name, cur_func));
        cur_block = cur_func.entry_block.next_block;
        if (is_constructor) {
            cur_func = func_table.get(rename_constructor(cur_class_name));
        }
        else if (is_member) {
            cur_func = func_table.get(rename_member_func(obj.func_registry.name, cur_class_name));
        }
        else cur_func = func_table.get(obj.func_registry.name);

        // "this" to be 0-th operand if in class
        if (is_constructor || is_member) {
            cur_func.add_operand(new Value(new PointerType(class_table.get(cur_class_name)), cur_func.get_name() + "_this"));
        }
        // parameters
        obj.arg_list.forEach(i -> {
            i.accept(this);
            cur_func.add_operand(i.value);
        });

        if (obj.func_registry.name.equals("main")) {    // call init function; return 0 in default
            cur_func.entry_block.push_back(new FuncCallInst(init_func, cur_func.entry_block, new ArrayList<>()));
            cur_func.entry_block.push_back(new StoreInst(new IntConst(0), cur_func.ret_value_ptr, cur_func.entry_block));
        }

        obj.block_node.accept(this);
        if (cur_func.entry_block.next_block != null) {
            cur_func.entry_block.push_back(new BrInst(cur_func.entry_block.next_block, cur_func.entry_block));
        }
        cur_func.get_blocks().forEach(i -> {
            if (i.next_block != null) {
                i.push_back(new BrInst(i.next_block, i));
            }
        });
        cur_func = null;
        cur_block = null;
        scopes.pop();
    }
    @Override
    public void visit(ClassDefNode obj) {

    }
    @Override
    public void visit(VarSingleDefNode obj) {
        AllocaInst addr = new AllocaInst(translate_vartype(obj.var_type), obj.registry.name, cur_func.entry_block);
        cur_func.entry_block.push_back(addr);

        if (obj.assign != null) {
            obj.assign.accept(this);
            cur_func.entry_block.push_back(new StoreInst(obj.assign.result, addr, cur_func.entry_block));
        } else if (obj.var_type.is_array() || obj.var_type.is_class()) {
            cur_func.entry_block.push_back(new StoreInst(new NullConst(), addr, cur_func.entry_block));
        } else if (cur_func == init_func) {
            if (addr.get_pointed_type().match(new IntType())) {
                cur_func.entry_block.push_back(new StoreInst(new IntConst(0), addr, cur_func.entry_block));
            }
            if (addr.get_pointed_type().match(new BoolType())) {
                cur_func.entry_block.push_back(new StoreInst(new BoolConst(false), addr, cur_func.entry_block));
            }
        }
        cur_scope.add_var(obj.registry.name, addr);
        obj.value = addr;
    }

    @Override
    public void visit(VarAnyNumberDefNode obj) {
        int size = obj.registry_list.size();
        for (int i = 0; i < size; ++i) {
            AllocaInst addr = new AllocaInst(translate_vartype(obj.var_type), obj.registry_list.get(i).name, cur_func.entry_block);
            cur_func.entry_block.push_back(addr);
            if (obj.assign_list.get(i) != null) {
                obj.assign_list.get(i).accept(this);
                cur_func.entry_block.push_back(new StoreInst(obj.assign_list.get(i).result, addr, cur_func.entry_block));
            } else if (obj.var_type.is_array() || obj.var_type.is_class()) {
                cur_func.entry_block.push_back(new StoreInst(new NullConst(), addr, cur_func.entry_block));
            } else if (cur_func == init_func) {
                if (addr.get_pointed_type().match(new IntType())) {
                    cur_func.entry_block.push_back(new StoreInst(new IntConst(0), addr, cur_func.entry_block));
                }
                if (addr.get_pointed_type().match(new BoolType())) {
                    cur_func.entry_block.push_back(new StoreInst(new BoolConst(false), addr, cur_func.entry_block));
                }
            }
            cur_scope.add_var(obj.registry_list.get(i).name, addr);
            obj.value_list.add(addr);
        }
    }
    @Override
    public void visit(VarDefNode obj) {} // abstract node
    //expr
    @Override
    public void visit(VarExprNode obj) { // array

    }
    @Override
    public void visit(AssignExprNode obj) {
        obj.left_expr.accept(this);
        obj.right_expr.accept(this);
        obj.result = obj.right_expr.result;
        obj.result.mem_pos = obj.left_expr.result.mem_pos;
        cur_block.push_back(new StoreInst(obj.right_expr.result, obj.left_expr.result.mem_pos, cur_block));
    }
    @Override
    public void visit(BinaryExprNode obj) {

    }
    @Override
    public void visit(ConstExprNode obj) {} // did not be used
    @Override
    public void visit(FuncCallExprNode obj) {

    }
    @Override
    public void visit(MemberVisitExprNode obj) {

    }
    @Override
    public void visit(NewExprNode obj) {

    }
    @Override
    public void visit(LambdaExprNode obj) {}    // unimplemented
    @Override
    public void visit(PostfixExprNode obj) {
        obj.var.accept(this);
        Value mem_pos = obj.var.result.mem_pos, tmp = null;
        if (obj.is_add) {
            tmp = new BinaryInst(new IntType(), "add_inst", BinaryExprNode.BinaryOperator.ADD, new IntConst(1), obj.var.result, cur_block);
        } else {
            tmp = new BinaryInst(new IntType(), "add_inst", BinaryExprNode.BinaryOperator.SUB, obj.var.result, new IntConst(1), cur_block);
        }
        cur_block.push_back(new StoreInst(tmp, mem_pos, cur_block));
        obj.result = obj.var.result;
    }
    @Override
    public void visit(PrefixExprNode obj) {
        obj.var.accept(this);
        Value mem_pos = obj.var.result.mem_pos, tmp = null;
        if (obj.is_add) {
            tmp = new BinaryInst(new IntType(), "add_inst", BinaryExprNode.BinaryOperator.ADD, new IntConst(1), obj.var.result, cur_block);
        } else {
            tmp = new BinaryInst(new IntType(), "add_inst", BinaryExprNode.BinaryOperator.SUB, obj.var.result, new IntConst(1), cur_block);
        }
        cur_block.push_back(new StoreInst(tmp, mem_pos, cur_block));
        obj.result = tmp;
        obj.result.mem_pos = obj.var.result.mem_pos;
    }
    @Override
    public void visit(UnaryExprNode obj) {
        obj.origin_expr.accept(this);
        switch (obj.op) {
            case Positive:
                obj.result = obj.origin_expr.result;
                break;
            case Negative:
                obj.result = new BinaryInst(new IntType(), "sub_inst", BinaryExprNode.BinaryOperator.SUB, new IntConst(0), obj.origin_expr.result, cur_block);
                break;
            case Not:
                obj.result = new BinaryInst(new BoolType(), "xor_inst", BinaryExprNode.BinaryOperator.XOR, new BoolConst(true), obj.origin_expr.result, cur_block);
                break;
            case ReverseBit:
                obj.result = new BinaryInst(new IntType(), "xor_inst", BinaryExprNode.BinaryOperator.XOR, new IntConst(-1), obj.origin_expr, cur_block);
                break;
        }
    }
    @Override
    public void visit(AtomExprNode obj) {
        if (obj.expr_type.match_type(BaseType.BuiltinType.INT)) {
            obj.result = new IntConst(Integer.parseInt(obj.ctx.IntConst().toString()));
        } else if (obj.expr_type.match_type(BaseType.BuiltinType.BOOL)) {
            obj.result = new BoolConst(obj.ctx.True() == null ? false : true);
        } else if (obj.expr_type.match_type(BaseType.BuiltinType.STRING)) {
            obj.result = new StringConst(obj.ctx.StringConst().toString());
        } else if (obj.expr_type.match_type(BaseType.BuiltinType.NULL)) {
            obj.result = new NullConst();
        } else if (obj.expr_type.match_type(BaseType.BuiltinType.THIS)) {
            // todo
        } else {
            if (obj.is_var) {

            } else {
                obj.result = scopes.
            }
        }
    }

    // stmt
    @Override
    public void visit(ForStmtNode obj) {
        // before: cur -> cur_next
        // after: cur -> init -> condition; condition(branch); repeat -> step -> condition; exit -> cur_next
        scopes.push(obj.scope);
        BasicBlock init_block = new BasicBlock("for_init", cur_func);
        BasicBlock condition_block = new BasicBlock("for_condition", cur_func);
        BasicBlock step_block = new BasicBlock("for_step", cur_func);
        BasicBlock repeat_block = new BasicBlock("for_repeat", cur_func);
        BasicBlock exit_block = new BasicBlock("for_exit", cur_func);
        cur_block.insert(init_block);
        init_block.insert(condition_block);
        condition_block.insert(exit_block);
        condition_block.cut();
        repeat_block.link(step_block);
        step_block.link(condition_block);

        cur_block = init_block;
        if (obj.init != null) obj.init.accept(this);

        cur_block = condition_block;
        if (obj.condition != null) obj.condition.accept(this);
        cur_block.push_back(new BrInst(obj.condition.expr.result, repeat_block, exit_block, cur_block));

        cur_block = repeat_block;
        continue_jump_to.push(step_block);
        break_jump_to.push(exit_block);
        obj.stmt.accept(this);
        continue_jump_to.pop();
        break_jump_to.pop();

        cur_block = step_block;
        if(obj.stmt != null); obj.stmt.accept(this);

        cur_block = exit_block;
        scopes.pop();
    }
    @Override
    public void visit(WhileStmtNode obj) {
        // before: cur -> cur_next
        // after: cur -> condition_block; condition(branch); exit_block -> cur_next
        BasicBlock condition_block = new BasicBlock("while_condition", cur_func);
        BasicBlock repeat_block = new BasicBlock("while_repeat", cur_func);
        BasicBlock exit_block = new BasicBlock("while_exit", cur_func);
        cur_block.insert(condition_block);
        condition_block.insert(exit_block);
        condition_block.cut();
        repeat_block.link(condition_block);

        cur_block = condition_block;
        obj.condition.accept(this);
        cur_block.push_back(new BrInst(obj.condition.result, repeat_block, exit_block, cur_block));

        cur_block = repeat_block;
        scopes.push(obj.scope);
        continue_jump_to.push(condition_block);
        break_jump_to.push(exit_block);
        obj.stmt.accept(this);
        continue_jump_to.pop();
        break_jump_to.pop();
        scopes.pop();

        cur_block = exit_block;
    }
    @Override
    public void visit(BlockStmtNode obj) {
        obj.block.accept(this);
    }
    @Override
    public void visit(IfStmtNode obj) {
        // before: cur -> cur_next
        // after: cur, branch ; exit_block -> cur_next
        BasicBlock if_block = new BasicBlock ("if_true", cur_func);
        BasicBlock else_block = new BasicBlock("if_false", cur_func);
        BasicBlock exit_block = new BasicBlock("if_exit", cur_func);
        cur_block.insert(exit_block);
        cur_block.cut();
        if_block.link(exit_block);
        else_block.link(exit_block);

        // condition
        obj.condition.accept(this);
        cur_block.push_back(new BrInst(obj.condition.result, if_block, else_block, cur_block));
        // if_block
        scopes.push(obj.if_scope);
        cur_block = if_block;
        obj.if_stmt.accept(this);
        scopes.pop();
        // else_block
        if (obj.else_scope != null) {
            scopes.push(obj.else_scope);
            cur_block = else_block;
            obj.else_stmt.accept(this);
            scopes.pop();
        }
        // exit
        cur_block = exit_block;
    }
    @Override
    public void visit(JumpStmtNode obj) {
        if (obj.jump_case == JumpStmtNode.JUMP_CASE.CONTINUE) {
            cur_block.push_back(new BrInst(continue_jump_to.peek(), cur_block));
        } else if (obj.jump_case == JumpStmtNode.JUMP_CASE.BREAK) {
            cur_block.push_back(new BrInst(break_jump_to.peek(), cur_block));
        } else {
            if (obj.return_value != null) {
                obj.return_value.accept(this);
            }
            if (!((IRFuncType)cur_func.get_type()).get_ret_type().match(new VoidType())) {
                // assign ret value
                // todo
                cur_block.push_back(new StoreInst(obj.return_value.result, cur_func.ret_value_ptr, cur_block));
            } else {
                cur_block.push_back(new StoreInst(null, cur_func.ret_value_ptr, cur_block));
            }
            cur_block.push_back(new BrInst(cur_func.exit_block, cur_block));
        }
    }
    @Override
    public void visit(AtomStmtNode obj) {
        if (obj.expr != null) {
            obj.expr.accept(this);
        }
    }

}