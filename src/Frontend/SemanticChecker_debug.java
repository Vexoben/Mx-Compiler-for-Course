package Frontend;

import Frontend.ast.*;
import Frontend.ast.def.*;
import Frontend.ast.expr.*;
import Frontend.ast.stmt.*;
import Frontend.Tools.Error.SemanticError;
import Frontend.Tools.Registry.FuncRegistry;
import Frontend.Tools.Registry.VarRegistry;
import Frontend.Tools.Scope.BaseScope;
import Frontend.Tools.Scope.ClassScope;
import Frontend.Tools.Type.BaseType;
import Frontend.Tools.Type.FuncType;
import Frontend.Tools.Type.VarType;

import java.util.HashMap;
import java.util.Stack;

public class SemanticChecker_debug implements ASTVisitor {
    Stack<BaseScope> scopes = new Stack<>();
    HashMap<String, ClassScope> class_scopes = new HashMap<>();

    @Override
    public void visit(RootNode obj) {
        obj.child_list.forEach(i -> {
            if (i instanceof ClassDefNode) {
                class_scopes.put(((ClassDefNode)i).class_registry.name, ((ClassDefNode)i).class_scope);
            }
        });
        obj.child_list.forEach(i -> i.accept(this));
    }
    @Override
    public void visit(BlockNode obj) {
        obj.stmt_list.forEach(i -> i.accept(this));
    }
    @Override
    public void visit(StmtNode obj) {} // abstract node
    @Override
    public void visit(DefNode obj) {} // abstract node
    @Override
    public void visit(ExprNode obj) {} // abstract node

    //def
    @Override
    public void visit(FuncDefNode obj) {
        scopes.push(obj.func_scope);
        obj.arg_list.forEach(i -> i.accept(this));
        obj.block_node.accept(this);
        scopes.pop();
    }
    @Override
    public void visit(ClassDefNode obj) {
        scopes.push(obj.class_scope);
        obj.func_list.forEach(i -> i.accept(this));
        obj.var_list.forEach(i -> i.accept(this));
        obj.constructor.accept(this);
        scopes.pop();
    }
    @Override
    public void visit(VarSingleDefNode obj) {
        if (obj.assign != null) {
            obj.assign.accept(this);
        }
    }
    @Override
    public void visit(VarAnyNumberDefNode obj) {
        obj.assign_list.forEach(i -> {
            if (i != null) i.accept(this);
        });
    }
    @Override
    public void visit(VarDefNode obj) {} // abstract node

    //expr
    @Override
    public void visit(VarExprNode obj) {
        obj.array.accept(this);
        if (obj.index != null) {
            obj.index.accept(this);
        }
        VarType type = (VarType) obj.array.expr_type;
        if (!obj.array.expr_type.is_array() && obj.index != null) {
            throw new SemanticError(obj.pos, "Invalid index access");
        }
        if (obj.index != null) {
            obj.expr_type = obj.array.expr_type.copy();
            ((VarType)obj.expr_type).dimension--;
        } else {
            obj.expr_type = obj.array.expr_type.copy();
        }
    }
    @Override
    public void visit(AssignExprNode obj) {
        obj.left_expr.accept(this);
        obj.right_expr.accept(this);
        if (obj.left_expr.is_left_value() == false) {
            throw new SemanticError(obj.pos, "I don't like this expression to be a left value");
        } else if (obj.left_expr instanceof AtomExprNode) {
            if (((AtomExprNode)obj.left_expr).identifier == null || ((AtomExprNode) obj.left_expr).maybe_var == false) {
                throw new SemanticError(obj.pos, "I don't like this expression to be a left value");
            } else {
                if (!obj.left_expr.expr_type.match_type(obj.right_expr.expr_type)) {
                    throw new SemanticError(obj.pos, "I don't like this expression to be a left value");
                }
            }
        } else if (obj.right_expr.expr_type.match_type(BaseType.BuiltinType.NULL)) {
            if (obj.left_expr.expr_type.is_array() || obj.left_expr.expr_type.is_class());
            else throw new SemanticError(obj.pos, "I don't like this expression to be a left value");
        } else if (obj.left_expr.expr_type.is_array()) {
            if (!obj.left_expr.expr_type.match_type(obj.right_expr.expr_type)) {
                throw new SemanticError(obj.pos, "I don't like this expression to be a left value");
            }
        }
        if (obj.left_expr.expr_type.match_type(BaseType.BuiltinType.INT)) {
            if (!(obj.right_expr.expr_type.match_type(BaseType.BuiltinType.INT)
                    ||obj.right_expr.expr_type.match_type(BaseType.BuiltinType.BOOL))) {
                throw new SemanticError(obj.pos, "I don't like this expression to be a left value");
            }
        }
        if (!obj.left_expr.expr_type.match_type(obj.right_expr.expr_type)) {
            throw new SemanticError(obj.pos, "I don't like this expression to be a left value");
        }
    }

    boolean binary_type_check(VarType a, VarType b, BinaryExprNode.BinaryOperator op) {
        if (a.is_array() || b.is_array()) {
            return (op.is_check_equal())
                    && (a.match_type(BaseType.BuiltinType.NULL) || b.match_type(BaseType.BuiltinType.NULL));
        }
        if (a.match_type(BaseType.BuiltinType.INT) || a.match_type(BaseType.BuiltinType.BOOL)
                || b.match_type(BaseType.BuiltinType.INT) || b.match_type(BaseType.BuiltinType.BOOL)) {
            if (a.match_type(b) == false) return false;
            if (a.match_type(BaseType.BuiltinType.BOOL) && (op.is_check_equal() || op.is_logic())) return false;
            return true;
        }
        if (a.match_type(BaseType.BuiltinType.STRING) || b.match_type(BaseType.BuiltinType.STRING)) {
            if (a.match_type(b) == false) return false;
            boolean flag = false;
            if (op == BinaryExprNode.BinaryOperator.ADD || op.is_compare()) flag = true;
            return flag;
        }
        if (a.is_class() || b.is_class()) {
            if (!a.is_class() || !b.is_class()) return false;
            return op == BinaryExprNode.BinaryOperator.EQUAL || op == BinaryExprNode.BinaryOperator.NOTEQUAL;
        }
        return false;
    }

    VarType binary_type_get(VarType a, VarType b, BinaryExprNode.BinaryOperator op) {
        if (op.is_compare() || op.is_logic()) {
            return new VarType(BaseType.BuiltinType.BOOL);
        }
        if (a.match_type(BaseType.BuiltinType.STRING)) { // op == '+'
            return new VarType(BaseType.BuiltinType.STRING);
        }
        return new VarType(BaseType.BuiltinType.INT);
    }

    @Override
    public void visit(BinaryExprNode obj) {
        obj.left_expr.accept(this);
        obj.right_expr.accept(this);
        if (binary_type_check((VarType) obj.left_expr.expr_type, (VarType) obj.right_expr.expr_type, obj.op) == false) {
            throw new SemanticError(obj.pos, "Mismatched types of this operator");
        }
        obj.expr_type = binary_type_get((VarType) obj.left_expr.expr_type, (VarType) obj.right_expr.expr_type, obj.op);
    }
    @Override
    public void visit(ConstExprNode obj) {} // did not be used
    @Override
    public void visit(FuncCallExprNode obj) {
        obj.func_name.accept(this);
        obj.args.forEach(i -> i.accept(this));
        if (obj.func_name instanceof AtomExprNode) {
            if (scopes.peek().find_func(((AtomExprNode) obj.func_name).identifier) == null) {
                throw new SemanticError(obj.pos, "I lost: can't find the function you call");
            }
        } else if (obj.func_name instanceof MemberVisitExprNode) {
            if (!((MemberVisitExprNode)obj.func_name).is_func) {
                throw new SemanticError(obj.pos, "I lost: can't find the function you call(maybe you called a variable");
            }
        } else throw new SemanticError(obj.pos, "Unknown error");
        FuncType ret_type = (FuncType) obj.func_name.expr_type;
        if (ret_type.func_args_type.size() != obj.args.size()) {
            throw new SemanticError(obj.pos, "Functions arguments' number doesn't match!");
        }
        int number = ret_type.func_args_type.size();
        for (int i = 0; i < number; ++i) {
            if (!ret_type.func_args_type.get(i).match_type(obj.args.get(i).expr_type)) {
                throw new SemanticError(obj.pos, (i + 1) + "th argument has a wrong type!");
            }
        }
    }
    @Override
    public void visit(MemberVisitExprNode obj) {
        obj.class_expr.accept(this);
        if (obj.class_expr instanceof AtomExprNode) {
            if (((AtomExprNode)obj.class_expr).maybe_var == false) {
                throw new SemanticError(obj.pos, ((AtomExprNode)obj.class_expr).identifier + "is not a class");
            }
        }
        if (obj.class_expr.expr_type.match_type(BaseType.BuiltinType.STRING)) {
            if (obj.member_name.equals("length")) {
                obj.is_func = true;
                obj.is_var = false;
                FuncType tmp = new FuncType();
                tmp.ret_type = new VarType(BaseType.BuiltinType.INT);
                obj.expr_type = tmp;
            }
            else if (obj.member_name.equals("substring")) {
                obj.is_func = true;
                obj.is_var = false;
                FuncType tmp = new FuncType();
                tmp.ret_type = new VarType(BaseType.BuiltinType.STRING);
                tmp.func_args_type.add(new VarType(BaseType.BuiltinType.INT));
                tmp.func_args_type.add(new VarType(BaseType.BuiltinType.INT));
                obj.expr_type = tmp;
            } else if (obj.member_name.equals("parseInt")) {
                obj.is_func = true;
                obj.is_var = false;
                FuncType tmp = new FuncType();
                tmp.ret_type = new VarType(BaseType.BuiltinType.INT);
                obj.expr_type = tmp;
            } else if (obj.member_name.equals("ord")) {
                obj.is_func = true;
                obj.is_var = false;
                FuncType tmp = new FuncType();
                tmp.ret_type = new VarType(BaseType.BuiltinType.INT);
                tmp.func_args_type.add(new VarType(BaseType.BuiltinType.INT));
                obj.expr_type = tmp;
            } else {
                throw new SemanticError(obj.pos, "String doesn't have a member naming" + obj.member_name);
            }
        } else {
            BaseScope scope = class_scopes.get(obj.class_expr.expr_type.typename);
            if (scope.find_var(obj.member_name) != null) {
                obj.is_var = true;
                obj.is_func = false;
                obj.expr_type = scope.find_var(obj.member_name).var_type;
            } else if (scope.find_func(obj.member_name) != null) {
                obj.is_func = true;
                obj.is_var = false;
                obj.expr_type = scope.find_func(obj.member_name).func_type;
            } else {
                throw new SemanticError(obj.pos, ((AtomExprNode)obj.class_expr).identifier + "doesn't have a member naming" + obj.member_name);
            }
        }
    }
    @Override
    public void visit(NewExprNode obj) {
        obj.index.forEach(i -> i.accept(this));
    }
    @Override
    public void visit(LambdaExprNode obj) {
        obj.call_args.forEach(i -> i.accept(this));
        obj.arg_list.forEach(i -> i.accept(this));
        scopes.push(obj.func_scope);
        obj.suite_node.accept(this);
        scopes.pop();
    }
    @Override
    public void visit(PostfixExprNode obj) {
        obj.var.accept(this);
        if (!obj.var.is_left_value()) {
            throw new SemanticError(obj.pos, "This expression can't apply self-operator");
        }
        obj.expr_type = obj.var.expr_type;
    }
    @Override
    public void visit(PrefixExprNode obj) {
        obj.var.accept(this);
        if (!obj.var.is_left_value()) {
            throw new SemanticError(obj.pos, "This expression can't apply self-operator");
        }
        obj.expr_type = obj.var.expr_type;
    }
    @Override
    public void visit(UnaryExprNode obj) {
        obj.origin_expr.accept(this);
        if (obj.origin_expr.expr_type.match_type(BaseType.BuiltinType.BOOL)) {
            if (obj.op != UnaryExprNode.UnaryOperator.Not) {
                throw new SemanticError(obj.pos, "You destroyed me by an invalid type!");
            }
        } else if (obj.origin_expr.expr_type.match_type(BaseType.BuiltinType.INT)) {
            if (obj.origin_expr.expr_type.is_array()) {
                throw new SemanticError(obj.pos, "You destroyed me by an invalid type!");
            }
        } else {
            throw new SemanticError(obj.pos, "You destroyed me by an invalid type!");
        }
        if (obj.op == UnaryExprNode.UnaryOperator.Not) {
            obj.expr_type = new VarType(BaseType.BuiltinType.BOOL);
        } else {
            obj.expr_type = obj.origin_expr.expr_type;
        }
    }
    @Override
    public void visit(AtomExprNode obj) {
        if (obj.identifier != null) {
            FuncRegistry reg2 = scopes.peek().find_func(obj.identifier);
            if (reg2 == null) obj.maybe_func = false;
            else {
                obj.maybe_func = true;
                obj.expr_type = reg2.func_type;
            }
            VarRegistry reg1 = scopes.peek().find_var(obj.identifier);
            if (reg1 == null) obj.maybe_var = false;
            else {
                obj.maybe_var = true;
                obj.expr_type = reg1.var_type;
            }
        }
    }

    // stmt
    @Override
    public void visit(ForStmtNode obj) {
        if (obj.init != null) obj.init.accept(this);
        if (obj.condition != null) obj.condition.accept(this);
        if (obj.step != null) obj.step.accept(this);
        scopes.push(obj.scope);
        obj.stmt.accept(this);
        scopes.pop();
    }
    @Override
    public void visit(WhileStmtNode obj) {
        obj.condition.accept(this);
        scopes.push(obj.scope);
        obj.stmt.accept(this);
        scopes.pop();
    }
    @Override
    public void visit(BlockStmtNode obj) {
        obj.block.accept(this);
    }
    @Override
    public void visit(IfStmtNode obj) {
        obj.condition.accept(this);
        scopes.push(obj.if_scope);
        obj.if_stmt.accept(this);
        scopes.pop();
        if (obj.else_stmt != null) {
            obj.else_stmt.accept(this);;
            obj.else_stmt.accept(this);
            scopes.pop();
        }
    }
    @Override
    public void visit(JumpStmtNode obj) {
        if (obj.jump_case == JumpStmtNode.JUMP_CASE.CONTINUE || obj.jump_case == JumpStmtNode.JUMP_CASE.BREAK) {
            if (scopes.peek().in_repeat() == false) {
                throw new SemanticError(obj.pos, "I don't know where to jump");
            }
        } else if (obj.jump_case == JumpStmtNode.JUMP_CASE.RETURN) {
            obj.return_value.accept(this);
            FuncRegistry tmp = scopes.peek().in_function();
            if (tmp == null) {
                throw new SemanticError(obj.pos, "Where is the function? Are you kidding?");
            }
            if (tmp.func_type.match_type(obj.return_value.expr_type) == false) {
                throw new SemanticError(obj.pos, "return value doesn't match!");
            }
        }
    }
    @Override
    public void visit(AtomStmtNode obj) {
        obj.expr.accept(this);
    }
}