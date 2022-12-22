package Middleend.llvmir;

import Frontend.Tools.Error.IRError;
import Frontend.Tools.Position;
import Frontend.Tools.Registry.FuncRegistry;
import Frontend.Tools.Registry.VarRegistry;
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
import org.antlr.v4.runtime.misc.Pair;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Stack;

public class IRBuilder implements ASTVisitor {
    BasicBlock cur_block = null;
    Function cur_func = null;
    IRScope cur_scope = new IRScope(null);
    Stack<BasicBlock> continue_jump_to = new Stack<>(), break_jump_to = new Stack<>();
    HashMap<String, StructType> class_table = new HashMap<>();
    HashMap<String, Function> func_table = new HashMap<>();
    HashMap<String, GlobalValue> const_string_table = new HashMap<>();
    boolean is_constructor = false, is_member_function = false, is_member_variable = false;
    String cur_class_name = null;
    Function init_func = new Function("__init_function__", new IRFuncType(null, new VoidType(), new ArrayList<>()));


    static PointerType char_ptr = new PointerType(new IntType(8));
    static VoidType void_type = new VoidType();
    static IntType int_type = new IntType();
    static IntType bool_tyoe = new IntType(1);
    // malloc function
    static Function func_malloc = new Function("__built_in_malloc", new IRFuncType(null, char_ptr, int_type));
    // built-in function
    static Function func_print = new Function("print", new IRFuncType(null, void_type, char_ptr)),
            func_println = new Function("println", new IRFuncType(null, void_type, char_ptr)),
            func_printInt = new Function("printInt", new IRFuncType(null, void_type, int_type)),
            func_printlnInt = new Function("printlnInt", new IRFuncType(null, void_type, int_type)),
            func_getString = new Function("getString", new IRFuncType(null, char_ptr)),
            func_getInt = new Function("getInt", new IRFuncType(null, int_type)),
            func_toString = new Function("toString", new IRFuncType(null, char_ptr, int_type));
    // string operator
    static Function str_eq = new Function("__build_in_str_eq", new IRFuncType(null, bool_tyoe, char_ptr, char_ptr)),
            str_neq = new Function("__build_in_str_neq", new IRFuncType(null, bool_tyoe, char_ptr, char_ptr)),
            str_slt = new Function("__build_in_str_slt", new IRFuncType(null, bool_tyoe, char_ptr, char_ptr)),
            str_sle = new Function("__build_in_str_sle", new IRFuncType(null, bool_tyoe, char_ptr, char_ptr)),
            str_sgt = new Function("__build_in_str_sgt", new IRFuncType(null, bool_tyoe, char_ptr, char_ptr)),
            str_sge = new Function("__build_in_str_sge", new IRFuncType(null, bool_tyoe, char_ptr, char_ptr)),
            str_add = new Function("__build_in_str_add", new IRFuncType(null, char_ptr, char_ptr, char_ptr));
    // string built-in method
    static Function str_length = new Function("__built_in_length", new IRFuncType(null, int_type, char_ptr)),
            str_substring = new Function("__built_in_substring", new IRFuncType(null, char_ptr, char_ptr, int_type, int_type)),
            str_parseInt = new Function("__built_in_parseInt", new IRFuncType(null, int_type, char_ptr)),
            str_ord = new Function("__built_in_ord", new IRFuncType(null, int_type, char_ptr, int_type));

    static ArrayList<Value> zero_index = new ArrayList<>();

    public IRBuilder(RootNode root) {
        zero_index.add(new IntConst(0));
        root.accept(this);
    }

    DerivedType translate_vartype_base(VarType type) {
        DerivedType basetype = null;
        if (type.match_type(BaseType.BuiltinType.INT)) basetype = new IntType();
        else if (type.match_type(BaseType.BuiltinType.BOOL)) basetype = new BoolType();
        else if (type.match_type(BaseType.BuiltinType.STRING)) basetype = new PointerType(new IntType(8));
        else if (type.built_in_type == BaseType.BuiltinType.CLASS) {
            basetype = new PointerType(class_table.get(type.typename));
//            basetype = class_table.get(type.typename);
        } else if (type.match_type(BaseType.BuiltinType.VOID)) {
            basetype = new VoidType();
        }
        else {
            throw new IRError(new Position(0, 0), "translate_vartype_base");
        }
        return basetype;
    }

    DerivedType translate_vartype(VarType type) {
        DerivedType realtype = translate_vartype_base(type);
        for (int k = 0; k < type.dimension; ++k) {
            realtype = new PointerType(realtype);
        }
        return realtype;
    }

    Function translate_functype(String name, FuncType type, DerivedType _belong) {
        ArrayList<DerivedType> args = new ArrayList<>();
        if (_belong != null) {
            args.add(new PointerType(_belong));
        }
        String func_name = name;
        type.func_args_type.forEach(i -> {
            DerivedType tp = translate_vartype(i);
//            if (tp.is_class_ptr()) {
//                tp = new PointerType(tp);
//            }
            args.add(tp);
        });
        DerivedType ret_type = translate_vartype(type.ret_type);
        if (ret_type.is_class_ptr()) {
            ret_type = new PointerType(ret_type);
        }
        IRFuncType functype = new IRFuncType(_belong, ret_type, args);
        Function func;
        if (_belong != null) {
            func = new Function(func_name, functype);
            Value value = new Value(new PointerType(_belong), func.get_origin_name() + "_this");
            func.add_operand(value);
            func.add_args_name(value.get_name());
            AllocaInst allo = new AllocaInst((DerivedType) value.type, "this_alloca", cur_block);
            func.entry_block.push_back(allo);
            func.entry_block.push_back(new StoreInst(value, allo, func.entry_block));
            func.this_alloca = allo;
        } else {
            func = new Function(func_name, functype);
        }
        return func;
    }

    Function constructor_functype(String name, DerivedType _belong) {
        ArrayList<DerivedType> args = new ArrayList<>();
        args.add(new PointerType(class_table.get(name), 1));
        IRFuncType ret = new IRFuncType(_belong, new VoidType(), args);
        Function func = new Function(rename_constructor(name), ret);
        Value value = new Value(new PointerType(_belong, 1), func.get_origin_name() + "_this");
        func.add_operand(value);
        func.add_args_name(value.get_name());
        AllocaInst allo = new AllocaInst((DerivedType) value.type, "this_alloca", cur_block);
        func.entry_block.push_back(allo);
        func.entry_block.push_back(new StoreInst(value, allo, func.entry_block));
        func.this_alloca = allo;
        return func;
    }

    String rename_member_func(String origin_name, String class_name) {
        return "__in_class__" + class_name + "_" + origin_name;
    }

    String rename_constructor(String class_name) {
        return "__constructor__" + class_name;
    }

    @Override
    public void visit(RootNode obj) {
        cur_func = init_func;
        func_table.put(cur_func.name, cur_func);
        cur_block = cur_func.entry_block;
        // declare classes, member_function, constructor
        obj.child_list.forEach(i -> {
            if (i instanceof ClassDefNode) {
                StructType type = new StructType(((ClassDefNode) i).class_registry.name);
                class_table.put(type.get_name(), type);
            }
        });
        obj.child_list.forEach(i -> {
            if (i instanceof ClassDefNode) {
                cur_class_name = ((ClassDefNode) i).class_registry.name;
                StructType type = class_table.get(cur_class_name);
                for (VarRegistry j: ((ClassDefNode) i).class_scope.var_map.values()) {
                    type.add_var(j);
                }
                for (FuncRegistry j: (((ClassDefNode) i).class_scope.func_map.values())) {
                    String func_name = rename_member_func(j.name, ((ClassDefNode) i).class_registry.name);
                    func_table.put(func_name, translate_functype(func_name, j.func_type, type));
                }

                if (((ClassDefNode) i).constructor != null) {
                    String func_name = rename_constructor(((ClassDefNode) i).class_registry.name);
                    func_table.put(func_name, constructor_functype(type.get_name(), type));
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

        // visit global-variables
        obj.child_list.forEach(i -> {
            if (i instanceof VarDefNode) {
                i.accept(this);
            }
        });
        
        debug("------------");

        obj.child_list.forEach(i -> {
            if (i instanceof ClassDefNode) {
                cur_class_name = ((ClassDefNode) i).class_registry.name;
                i.accept(this);
                cur_class_name = null;
            }
            if (i instanceof FuncDefNode) {
                i.accept(this);
            }
        });
        init_func.exit_block.push_back(new RetInst(null, init_func.exit_block));
        init_func.add_block(init_func.exit_block);
        init_func.blocks.forEach(i -> {
            if (i.next_block != null) {
                i.push_back(new BrInst(i.next_block, i));
            }
        });
    }
    @Override
    public void visit(BlockNode obj) {
        cur_scope = new IRScope(cur_scope);
        obj.stmt_list.forEach(i -> i.accept(this));
        cur_scope = cur_scope.parent;
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
        cur_scope = new IRScope(cur_scope);
        if (is_constructor) {
            cur_func = func_table.get(rename_constructor(cur_class_name));
            cur_func.is_constructor = true;
        }
        else if (is_member_function) {
            cur_func = func_table.get(rename_member_func(obj.func_registry.name, cur_class_name));
            cur_func.is_member_function = true;
        }
        else cur_func = func_table.get(obj.func_registry.name);
        cur_func.entry_block.insert(new BasicBlock("first_block__" + cur_func.get_origin_name(), cur_func));
        cur_block = cur_func.entry_block.next_block;

/*        // allocation to this
        if (is_member_function || is_constructor) {
            AllocaInst allo = new AllocaInst(new PointerType((DerivedType) cur_func.get_operand(0).type), "this_alloca", cur_block);
            cur_block.push_back(allo);
            cur_func.this_alloca = allo;
        }
*/
        // parameters
        obj.arg_list.forEach(i -> {
            i.accept(this);
            cur_func.add_args_name(i.value.get_name());
            cur_func.add_operand(i.value);
        });

        if (obj.func_registry.name.equals("main")) {    // call init function; return 0 in default
            cur_func.entry_block.push_back(new FuncCallInst(init_func, cur_func.entry_block, new ArrayList<>()));
            cur_func.exit_block.push_back(new RetInst(new IntConst(0), cur_func.exit_block));
        } else if (cur_func.get_ret_type().match(new VoidType())) {
            cur_func.exit_block.push_back(new RetInst(null, cur_func.exit_block));
        }
        obj.block_node.accept(this);
        cur_func.add_block(cur_func.exit_block);
        cur_func.get_blocks().forEach(i -> {
            if (i.next_block != null && (i.next_block.get_inst().size() > 0 || i.next_block != cur_func.exit_block)) {
                i.push_back(new BrInst(i.next_block, i));
            }
        });
        cur_func = null;
        cur_block = null;
        cur_scope = cur_scope.parent;
    }
    @Override
    public void visit(ClassDefNode obj) {
        cur_scope = new IRScope(cur_scope, true);
        is_member_variable = true;
        obj.var_list.forEach(i -> i.accept(this));
        is_member_variable = false;
        is_constructor = true;
        cur_func = func_table.get(rename_constructor(cur_class_name));
        obj.constructor.accept(this);
        cur_func = null;
        is_constructor = false;
        obj.func_list.forEach(i -> {
            is_member_function = true;
            cur_func = func_table.get(rename_member_func(i.func_registry.name, cur_class_name));
            cur_scope = new IRScope(cur_scope);
            i.accept(this);
            cur_scope = cur_scope.parent;
            cur_func = null;
            is_member_function = false;
        });
        cur_scope = cur_scope.parent;
    }
    @Override
    public void visit(VarSingleDefNode obj) { // only used in function args
        DerivedType type = translate_vartype(obj.var_type);
//        if (type.is_class_ptr()) {
//            type = new PointerType(type);
//        }
        Value arg_def = new Value(type, cur_func.ori_name + "_" + obj.registry.name);
/*        Value addr;
        if (cur_func == init_func) {
            addr = new GlobalVariable(obj.registry.name, new PointerType(translate_vartype(obj.var_type)));
        } else {
            addr = new AllocaInst(translate_vartype(obj.var_type), obj.registry.name + "_addr", cur_block);
            cur_block.push_back((BaseInst) addr);
            cur_block.push_back(new StoreInst(arg_def, addr, cur_block));
        }*/


        AllocaInst addr = new AllocaInst(type, obj.registry.name, cur_block);
        cur_block.push_back((BaseInst) addr);
        cur_block.push_back(new StoreInst(arg_def, addr, cur_block));
        addr.mem_pos = addr;
/*
        if (obj.assign != null) {
            obj.assign.accept(this);
            cur_block.push_back(new StoreInst(obj.assign.result, addr, cur_block));
        } else if (obj.var_type.is_array() || obj.var_type.is_class()) {
            cur_block.push_back(new StoreInst(new NullConst(), addr, cur_block));
        } else if (cur_func == init_func) {
            if (((PointerType) addr.get_type()).get_pointed_type().match(new IntType())) {
                cur_block.push_back(new StoreInst(new IntConst(0), addr, cur_block));
            }
            if (((PointerType) addr.get_type()).get_pointed_type().match(new BoolType())) {
                cur_block.push_back(new StoreInst(new BoolConst(false), addr, cur_block));
            }
        }*/
        cur_scope.add_var(addr.get_origin_name(), addr.get_mem_pos());
        obj.value = arg_def;
    }

    @Override
    public void visit(VarAnyNumberDefNode obj) {
        int size = obj.registry_list.size();
        if (is_member_variable) {
            cur_func = func_table.get(rename_constructor(cur_class_name));
        }
        for (int i = 0; i < size; ++i) {
            Value addr;
            if (is_member_variable) { // class member
                ArrayList<Value> args = new ArrayList<>();
                args.add(new IntConst(0)); args.add(new IntConst(i));
                LoadInst ptr = new LoadInst(cur_func.this_alloca, "load_inst", cur_block);
                cur_func.entry_block.push_back(ptr);
                addr = new GetElementPtrInst(ptr, args, new PointerType(translate_vartype(obj.var_type)), cur_func.entry_block);
                addr.mem_pos = addr;
                addr.ori_name = obj.registry_list.get(i).name;
            }
            else if (cur_func == init_func) { // global variable
                addr = new GlobalValue(obj.registry_list.get(i).name, new PointerType(translate_vartype(obj.var_type), !obj.var_type.is_fund() ? 2 : 1));
                addr.mem_pos = addr;
            } else  {// local variable
                DerivedType allo_type = translate_vartype(obj.var_type);
                addr = new AllocaInst(allo_type, obj.registry_list.get(i).name, cur_block);
                addr.mem_pos = addr;
                cur_func.entry_block.push_back((BaseInst) addr);
            }
            if (obj.assign_list.get(i) != null) {
                obj.assign_list.get(i).accept(this);
                if (is_member_variable) {
                    cur_block.push_back((BaseInst) addr);
                }
                if (obj.assign_list.get(i).expr_type.is_string()) {
                    ArrayList<Value> indexes = new ArrayList<>();
                    indexes.add(new IntConst(0)); indexes.add(new IntConst(0));
                    GetElementPtrInst ptr = new GetElementPtrInst(obj.assign_list.get(i).result, indexes, new PointerType(new IntType(8)), cur_block);
                    cur_block.push_back(ptr);
                    // GetElementPtrInst char_ptr = new GetElementPtrInst(addr, zero_index, )
                    cur_block.push_back(new StoreInst(ptr, addr.mem_pos, cur_block));
                } else if (obj.assign_list.get(i).expr_type.is_class()) {
                    LoadInst ptr = new LoadInst(obj.assign_list.get(i).result, "load_inst", cur_block);
                    cur_block.push_back(ptr);
                    cur_block.push_back(new StoreInst(ptr, addr, cur_block));
                } else {
                    cur_block.push_back(new StoreInst(obj.assign_list.get(i).result, addr, cur_block));
                }
            } else if (obj.var_type.is_array() || obj.var_type.is_class()) {
                if (obj.var_type.is_class()) {
                    Function constructor = func_table.get(rename_constructor(obj.var_type.typename));
                    StructType struct_type = (StructType) ((PointerType)((PointerType)addr.get_type()).get_pointed_type()).get_pointed_type();
                    AllocaInst allo = new AllocaInst(struct_type, "allo", cur_func.entry_block);
                    cur_func.entry_block.push_back(allo);
                    cur_func.entry_block.push_back(new StoreInst(allo, addr, cur_func.entry_block));
                    ArrayList<Value> args = new ArrayList<>();
                    args.add(allo);
                    FuncCallInst inst = new FuncCallInst(constructor, cur_block, args);
                    cur_func.entry_block.push_back(inst);
                }
/*                if (is_member_variable) {
                    cur_block.push_back((BaseInst) addr);
                }
                cur_block.push_back(new StoreInst(new NullConst(), addr, cur_block));

            */} else if (cur_func == init_func) {
                if (((PointerType) addr.get_type()).get_pointed_type().match(new IntType())) {
                    cur_func.entry_block.push_back(new StoreInst(new IntConst(0), addr, cur_block));
                }
                if (((PointerType) addr.get_type()).get_pointed_type().match(new BoolType())) {
                    cur_func.entry_block.push_back(new StoreInst(new BoolConst(false), addr, cur_block));
                }
            }
            cur_scope.add_var(addr.get_origin_name(), addr.get_mem_pos());
            obj.value_list.add(addr);
        }
    }
    @Override
    public void visit(VarDefNode obj) {} // abstract node
    //expr
    @Override
    public void visit(VarExprNode obj) { // array
        ArrayList<Value> indexes = new ArrayList<>();
        indexes.add(obj.index.result);
        obj.result = new GetElementPtrInst(obj.array.result, indexes, ((PointerType)obj.array.result.get_type()).get_pointed_type(), cur_block);
    }
    @Override
    public void visit(AssignExprNode obj) {
        obj.left_expr.accept(this);
        obj.right_expr.accept(this);
        obj.result = obj.right_expr.result;
        obj.result.mem_pos = obj.left_expr.result.mem_pos;
        if (obj.right_expr.expr_type.match_type(BaseType.BuiltinType.STRING)) {
            ArrayList<Value> indexes = new ArrayList<>();
            indexes.add(new IntConst(0)); indexes.add(new IntConst(0));
            GetElementPtrInst ptr = new GetElementPtrInst(obj.right_expr.result, indexes, new PointerType(new IntType(8)), cur_block);
            cur_block.push_back(ptr);
            cur_block.push_back(new StoreInst(ptr, obj.left_expr.result.mem_pos, cur_block));
        } else if (obj.right_expr.expr_type.is_class()) {
            LoadInst ptr = new LoadInst(obj.right_expr.result, "load_inst", cur_block);
            cur_block.push_back(ptr);
            cur_block.push_back(new StoreInst(ptr, obj.left_expr.result.mem_pos, cur_block));
        } else {
            cur_block.push_back(new StoreInst(obj.right_expr.result, obj.left_expr.result.mem_pos, cur_block));
        }
    }
    @Override
    public void visit(BinaryExprNode obj) {
        obj.left_expr.accept(this);
        obj.right_expr.accept(this);
        if (obj.left_expr.expr_type.match_type(BaseType.BuiltinType.STRING)) {
            FuncCallInst inst;
            ArrayList<Value> args = new ArrayList<>();
            args.add(obj.left_expr.result);
            args.add(obj.right_expr.result);
            switch (obj.op) {
                case EQUAL -> inst = new FuncCallInst(str_eq, cur_block, args);
                case NOTEQUAL -> inst = new FuncCallInst(str_neq, cur_block, args);
                case ADD -> inst = new FuncCallInst(str_add, cur_block, args);
                case LESS -> inst = new FuncCallInst(str_slt, cur_block, args);
                case GREATER -> inst = new FuncCallInst(str_sgt, cur_block, args);
                case LEQ -> inst = new FuncCallInst(str_sle, cur_block, args);
                case GEQ -> inst = new FuncCallInst(str_sge, cur_block, args);
                default -> throw new IRError(new Position(0, 0), "BinaryExprNode");
            }
            cur_block.push_back(inst);
            obj.result = inst;
        }
        else {
            // todo: 短路求值
            BinaryInst inst;
            if (obj.op.is_check_equal()) {
                inst = new BinaryInst(new BoolType(), "", obj.op, obj.left_expr.result, obj.right_expr.result, cur_block);
            } else {
                inst = new BinaryInst(new IntType(), "", obj.op, obj.left_expr.result, obj.right_expr.result, cur_block);
            }
            cur_block.push_back(inst);
            obj.result = inst;
        }
    }
    @Override
    public void visit(ConstExprNode obj) {} // did not be used
    @Override
    public void visit(FuncCallExprNode obj) {
        obj.func_name.accept(this);
        assert obj.func_name.result instanceof Function;
        ArrayList<Value> args = new ArrayList<>();
        if (obj.func_name instanceof MemberVisitExprNode) {
            LoadInst load = new LoadInst(((MemberVisitExprNode) obj.func_name).callee, "load_inst", cur_block);
            cur_block.push_back(load);
            args.add(load);
        }
        obj.args.forEach(i -> {
            i.accept(this);
            if (!i.expr_type.is_fund()) {
                LoadInst load = new LoadInst(i.result, "load_inst", cur_block);
                cur_block.push_back(load);
                args.add(load);
            } else args.add(i.result);
        });
        FuncCallInst inst = new FuncCallInst((Function) obj.func_name.result, cur_block, args);
        obj.result = inst;
        cur_block.push_back(inst);
    }
    @Override
    public void visit(MemberVisitExprNode obj) {
        obj.class_expr.accept(this);
        obj.callee = obj.class_expr.result;
        StructType type = (StructType) ((PointerType)((PointerType)obj.callee.get_type()).get_pointed_type()).get_pointed_type();
        /*if (obj.class_expr instanceof AtomExprNode) {
            if (obj.class_expr.expr_type.match_type(BaseType.BuiltinType.THIS)) { // this
                scope = scopes.peek().in_class();
                if (scope == null) {
                    throw new SemanticError(obj.pos, "I can't find the class");
                }
            } else if (((AtomExprNode)obj.class_expr).maybe_var == false
                    && !(obj.class_expr.expr_type.match_type(BaseType.BuiltinType.STRING))) { // identifier
                throw new SemanticError(obj.pos, ((AtomExprNode)obj.class_expr).identifier + "is not a class");
            }
        }*/
        if (obj.is_func) {
            if (obj.class_expr.expr_type.match_type(BaseType.BuiltinType.STRING)) {
                if (obj.member_name.equals("length")) {
                    obj.result = str_length;
                } else if (obj.member_name.equals("substring")){
                    obj.result = str_substring;
                } else if (obj.member_name.equals("parseInt")) {
                    obj.result = str_parseInt;
                } else if (obj.member_name.equals("ord")) {
                    obj.result = str_ord;
                } else throw new IRError(new Position(0, 0), "MemberVisitNode");
            } else {
                obj.result = func_table.get(rename_member_func(obj.member_name, type.get_name()));
            }
        } else if (obj.is_var) {
            ArrayList<Value> args = new ArrayList<>();
            int index = type.get_var_index(obj.member_name);
            LoadInst ptr = new LoadInst(obj.callee, "load_inst", cur_block);
            cur_block.push_back(ptr);
            args.add(new IntConst(0)); args.add(new IntConst(index));
            GetElementPtrInst inst = new GetElementPtrInst(ptr, args, new PointerType(type.get_type(index)), cur_block);
            cur_block.push_back(inst);
            if (obj.expr_type.match_type(BaseType.BuiltinType.INT) || obj.expr_type.match_type(BaseType.BuiltinType.BOOL)) {
                LoadInst load_inst = new LoadInst(inst, "load_inst", cur_block);
                cur_block.push_back(load_inst);
                obj.result = load_inst;
                obj.result.mem_pos = inst;
            } else {
                obj.result = inst;
                obj.result.mem_pos = inst;
            }
        } else {
            throw new IRError(obj.pos, "MemberVisitExpr");
        }
    }
    @Override
    public void visit(NewExprNode obj) {
        if (obj.expr_type.match_type(BaseType.BuiltinType.CLASS)) {
            StructType type = class_table.get(obj.expr_type.typename);
            AllocaInst allo = new AllocaInst(type, "alloca_inst", cur_block);
            allo.mem_pos = allo;
            cur_block.push_back(allo);
            ArrayList args = new ArrayList<>();
            args.add(allo);
            cur_block.push_back(new FuncCallInst(func_table.get(rename_constructor(obj.expr_type.typename)), cur_block, args));
        } else {   // array
            int dim = 0;
            ArrayList indexes = new ArrayList<>();
            for (int i = 0; i < obj.index.size(); ++i) {
                if (obj.index.get(i) != null) {
                    obj.index.get(i).accept(this);
                    dim++;
                    indexes.add(obj.index.get(i).result);
                }
            }
            DerivedType base_type = translate_vartype_base((VarType) obj.expr_type);
            for (int i = 0; i < ((VarType) obj.expr_type).dimension - dim; ++i) {
                base_type = new PointerType(base_type);
            }
            BaseInst allo = arr_allo_dfs(0, indexes, base_type);
            cur_block.push_back(allo);
        }
    }

    BaseInst arr_allo_dfs(int deep, ArrayList<Value> indexes, DerivedType base_type) {
        // todo
        if (indexes.size() == 0) {
            AllocaInst inst = new AllocaInst(base_type, "base_type", cur_block);
            cur_block.push_back(inst);
            return inst;
        }

        if (deep + 1 == indexes.size()) {
            AllocaInst alloca_inst = new AllocaInst(new PointerType(base_type), "base_type", cur_block);
            cur_block.push_back(alloca_inst);
            BinaryInst tot_size = new BinaryInst(new IntType(), "alloca_size", BinaryExprNode.BinaryOperator.MUL, indexes.get(deep), new IntConst(base_type.size()), cur_block);
            cur_block.push_back(tot_size);
            ArrayList<Value> size_arg = new ArrayList<>();
            size_arg.add(tot_size);
            FuncCallInst malloc_inst = new FuncCallInst(func_malloc, cur_block, size_arg);
            cur_block.push_back(malloc_inst);
            BitCastInst cast_inst = new BitCastInst(malloc_inst, new PointerType(new IntType()), cur_block);
            cur_block.push_back(cast_inst);
            StoreInst store_inst = new StoreInst(cast_inst, alloca_inst, cur_block);
            cur_block.push_back(store_inst);
            return store_inst;
        } else {
            DerivedType real_type = base_type;
            for (int i = 0; i < indexes.size() - 1 - deep; ++i) {   // bad time complexity
                real_type = new PointerType(base_type);
            }
            AllocaInst alloca_inst = new AllocaInst(new PointerType(real_type), "alloca_deep" + deep + "__", cur_block);
            cur_block.push_back(alloca_inst);
            BinaryInst tot_size = new BinaryInst(new IntType(), "alloca_size", BinaryExprNode.BinaryOperator.MUL, indexes.get(deep), new IntConst(real_type.size()), cur_block);
            cur_block.push_back(tot_size);
            ArrayList<Value> size_arg = new ArrayList<>();
            size_arg.add(tot_size);
            FuncCallInst malloc_inst = new FuncCallInst(func_malloc, cur_block, size_arg);
            cur_block.push_back(malloc_inst);
            BitCastInst cast_inst = new BitCastInst(malloc_inst, new PointerType(new IntType()), cur_block);
            cur_block.push_back(cast_inst);
            StoreInst store_inst = new StoreInst(cast_inst, alloca_inst, cur_block);
            cur_block.push_back(store_inst);
        }
        return null;
    }

    @Override
    public void visit(LambdaExprNode obj) {}    // unimplemented
    @Override
    public void visit(PostfixExprNode obj) {
        obj.var.accept(this);
        Value mem_pos = obj.var.result.mem_pos;
        BinaryInst tmp = null;
        if (obj.is_add) {
            tmp = new BinaryInst(new IntType(), "add_inst", BinaryExprNode.BinaryOperator.ADD, new IntConst(1), obj.var.result, cur_block);
        } else {
            tmp = new BinaryInst(new IntType(), "add_inst", BinaryExprNode.BinaryOperator.SUB, obj.var.result, new IntConst(1), cur_block);
        }
        cur_block.push_back(tmp);
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
                obj.result = new BinaryInst(new IntType(), "xor_inst", BinaryExprNode.BinaryOperator.XOR, new IntConst(-1), obj.origin_expr.result, cur_block);
                break;
        }
    }
    @Override
    public void visit(AtomExprNode obj) {
        if (obj.ctx.IntConst() != null) {
            obj.result = new IntConst(Integer.parseInt(obj.ctx.IntConst().toString()));
        } else if (obj.ctx.True() != null || obj.ctx.False() != null) {
            obj.result = new BoolConst(obj.ctx.True() == null ? false : true);
        } else if (obj.ctx.StringConst() != null) {
            String str = obj.ctx.StringConst().toString();
            str = str.substring(1, str.length() - 1);
            GlobalValue value;
            if (const_string_table.containsKey(str)) {
                value = const_string_table.get(str);
            } else {
                value = new GlobalValue("str_const_" + str, new PointerType(new ArrayType(new IntType(8), str.length() + 1)));
                value.const_string_data = str + "\\00";
                value.mem_pos = value;
                const_string_table.put(str, value);
            }
            obj.result = value;
        } else if (obj.ctx.Null() != null) {
            obj.result = new NullConst();
        } else if (obj.ctx.This() != null) {
//            LoadInst ptr = new LoadInst(cur_func.this_alloca, "load_inst", cur_block);
//            cur_block.push_back(ptr);
//            obj.result = ptr;
            obj.result = cur_func.this_alloca;
        } else {
            if (obj.is_var) {
                Pair<Value, Boolean> mem_pos = cur_scope.get_var(obj.identifier);
                BaseInst load_inst;
                if (mem_pos.b == false) { // not class member
                   if (obj.expr_type.match_type(BaseType.BuiltinType.INT) || obj.expr_type.match_type(BaseType.BuiltinType.BOOL)) {
                        load_inst = new LoadInst(mem_pos.a, "load_inst", cur_block);
                        cur_block.push_back(load_inst);
                        obj.result = load_inst;
                        obj.result.mem_pos = mem_pos.a;
                 } else {
                      obj.result = mem_pos.a;
                      obj.result.mem_pos = mem_pos.a;
                   }
                } else {
                    StructType type = class_table.get(cur_class_name);
                    int index = type.get_var_index(obj.identifier);
//                    LoadInst ptr = new LoadInst(cur_func.get_operand(0), "load_inst", cur_block);
//                    cur_block.push_back(ptr);
                    ArrayList<Value> args = new ArrayList<>();
                    args.add(new IntConst(0)); args.add(new IntConst(index));
                    LoadInst ptr = new LoadInst(cur_func.this_alloca, "load_inst", cur_block);
                    cur_block.push_back(ptr);
                    GetElementPtrInst inst = new GetElementPtrInst(ptr, args, new PointerType(type.get_type(index)), cur_block);
                    debug(inst.get_name());
                    load_inst = new LoadInst(inst, "load_inst", cur_block);
                    cur_block.push_back(inst);
                    cur_block.push_back(load_inst);
                    obj.result = load_inst;
                    obj.result.mem_pos = inst;
                }
            } else {
                if (obj.identifier.equals("print")) {
                    obj.result = func_print;
                } else if (obj.identifier.equals("println")) {
                    obj.result = func_println;
                } else if (obj.identifier.equals("printInt")) {
                    obj.result = func_printInt;
                } else if (obj.identifier.equals("printlnInt")) {
                    obj.result = func_printlnInt;
                } else if (obj.identifier.equals("getString")) {
                    obj.result = func_getString;
                } else if (obj.identifier.equals("getInt")) {
                    obj.result = func_getInt;
                } else if (obj.identifier.equals("toString")) {
                    obj.result = func_toString;
                } else {
                    obj.result = func_table.get(obj.identifier);
                }
            }
        }
    }

    // stmt
    @Override
    public void visit(ForStmtNode obj) {
        // before: cur -> cur_next
        // after: cur -> init -> condition; condition(branch); repeat -> step -> condition; exit -> cur_next
        cur_scope = new IRScope(cur_scope);
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
        cur_scope = cur_scope.parent;
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
        cur_scope = new IRScope(cur_scope);
        continue_jump_to.push(condition_block);
        break_jump_to.push(exit_block);
        obj.stmt.accept(this);
        continue_jump_to.pop();
        break_jump_to.pop();
        cur_scope = cur_scope.parent;

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
        cur_scope = new IRScope(cur_scope);
        cur_block = if_block;
        obj.if_stmt.accept(this);
        cur_scope = cur_scope.parent;
        // else_block
        if (obj.else_stmt != null) {
            cur_scope = new IRScope(cur_scope);
            cur_block = else_block;
            obj.else_stmt.accept(this);
            cur_scope = cur_scope.parent;
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
                cur_block.push_back(new RetInst(obj.return_value.result, cur_block));
            } else {
                cur_block.push_back(new RetInst(null, cur_block));
            }
        }
    }
    @Override
    public void visit(AtomStmtNode obj) {
        if (obj.expr != null) {
            obj.expr.accept(this);
        }
    }

    // for debug
    static Boolean debug_mode = true;
    void debug(String str) {
        if (debug_mode) {
            System.out.println(str);
        }
    }

}