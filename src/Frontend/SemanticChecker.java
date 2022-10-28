package Frontend;

import Frontend.ast.*;
import Frontend.ast.def.*;
import Frontend.ast.expr.*;
import Frontend.ast.stmt.*;
import Tools.Error.SemanticError;
import Tools.Registry.FuncRegistry;
import Tools.Registry.VarRegistry;
import Tools.Scope.BaseScope;
import Tools.Scope.ClassScope;
import Tools.Type.BaseType;
import Tools.Type.FuncType;
import Tools.Type.VarType;

import java.util.HashMap;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicBoolean;

public class SemanticChecker implements ASTVisitor {

    boolean debug_mode = true;
    Stack<BaseScope> scopes = new Stack<>();
    HashMap<String, ClassScope> class_scopes = new HashMap<>();

    void printf(Object obj) {
        System.out.println(obj.toString());
    }

    @Override
    public void visit(RootNode obj) {
        if (debug_mode) System.out.println("Access RootNode");
        obj.child_list.forEach(i -> {
            if (i instanceof ClassDefNode) {
                class_scopes.put(((ClassDefNode)i).class_registry.name, ((ClassDefNode)i).class_scope);
            }
        });
        scopes.push(obj.global_scope);
        obj.child_list.forEach(i -> i.accept(this));
        scopes.pop();
        if (debug_mode) System.out.println("Leave RootNode");
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
    public void visit(DefNode obj) {} // abstract node
    @Override
    public void visit(ExprNode obj) {} // abstract node

    //def
    @Override
    public void visit(FuncDefNode obj) {
        if (debug_mode) System.out.println("Access FuncDefNode");
        scopes.push(obj.func_scope);
        obj.arg_list.forEach(i -> i.accept(this));
        obj.block_node.accept(this);
        scopes.pop();
        if (debug_mode) System.out.println("Leave FuncDefNode");
    }
    @Override
    public void visit(ClassDefNode obj) {
        if (debug_mode) printf("Access ClassDefNode");
        scopes.push(obj.class_scope);
        obj.var_list.forEach(i -> i.accept(this));
        obj.func_list.forEach(i -> i.accept(this));
        if (obj.constructor != null) {
            obj.constructor.accept(this);
        }
        scopes.pop();
        if (debug_mode) printf("Leave ClassDefNode");
    }
    @Override
    public void visit(VarSingleDefNode obj) {
        if (debug_mode) System.out.println("Access VarSingleDefNode");
        if (obj.assign != null) {
            obj.assign.accept(this);
            if (!obj.var_type.match_type(obj.assign.expr_type)) {
                throw new SemanticError(obj.pos, "type doesn't match!");
            }
        }
        if (debug_mode) System.out.println("Leave VarSingleDefNode");
    }
    @Override
    public void visit(VarAnyNumberDefNode obj) {
        if (debug_mode) System.out.println("Access VarAnyNumberDefNode");
        obj.assign_list.forEach(i -> {
            if (i != null) {
                i.accept(this);
                if (!obj.var_type.match_type(i.expr_type)) {
                    throw new SemanticError(obj.pos, "type doesn't match!");
                }
            }
        });
        if (!(scopes.peek() instanceof ClassScope)) {
            obj.registry_list.forEach(i -> scopes.peek().insert_registry(i));
        }
        if (debug_mode) System.out.println("Leave VarAnyNumberDefNode");
    }
    @Override
    public void visit(VarDefNode obj) {} // abstract node

    //expr
    @Override
    public void visit(VarExprNode obj) {
        obj.array.accept(this);
        if (obj.index != null) {
            obj.index.accept(this);
            printf(obj.index.expr_type);
            printf(((VarType)obj.index.expr_type).dimension);
            if (!obj.index.expr_type.match_type(BaseType.BuiltinType.INT)) {
                throw new SemanticError(obj.pos, "You offered me a wrong index");
            }
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
        if (debug_mode) System.out.println("Access AssignExprNode");
        obj.left_expr.accept(this);
        obj.right_expr.accept(this);
        if (obj.left_expr.is_left_value() == false) {
            throw new SemanticError(obj.pos, "I don't like this expression to be a left value");
        } else if (obj.left_expr instanceof AtomExprNode) {
            if (((AtomExprNode)obj.left_expr).identifier == null || ((AtomExprNode) obj.left_expr).maybe_var == false) {
                throw new SemanticError(obj.pos, "I don't like this expression to be a left value");
            } else {
                printf("!!!");
                printf(obj.right_expr);
                printf(obj.right_expr.expr_type);
                if (!obj.left_expr.expr_type.match_type(obj.right_expr.expr_type)) {
                    throw new SemanticError(obj.pos, "Type doesn't match!");
                }
            }
        } else if (obj.right_expr.expr_type.match_type(BaseType.BuiltinType.NULL)) {
            if (obj.left_expr.expr_type.is_array() || obj.left_expr.expr_type.is_class());
            else throw new SemanticError(obj.pos, "Type doesn't match!");
        } else if (obj.left_expr.expr_type.is_array()) {
            if (!obj.left_expr.expr_type.match_type(obj.right_expr.expr_type)) {
                throw new SemanticError(obj.pos, "Type doesn't match!");
            }
        } else if (obj.left_expr.expr_type.match_type(BaseType.BuiltinType.INT)) {
            if (!(obj.right_expr.expr_type.match_type(BaseType.BuiltinType.INT)
                    || obj.right_expr.expr_type.match_type(BaseType.BuiltinType.BOOL))) {
                throw new SemanticError(obj.pos, "Type doesn't match!");
            }
        } else if (!obj.left_expr.expr_type.match_type(obj.right_expr.expr_type)) {
            throw new SemanticError(obj.pos, "Type doesn't match!");
        }
        if (debug_mode) System.out.println("Leave AssignExprNode");
    }

    boolean binary_type_check(VarType a, VarType b, BinaryExprNode.BinaryOperator op) {
        if (a.is_array() || b.is_array()) {
            return (op.is_check_equal())
                    && (a.match_type(BaseType.BuiltinType.NULL) || b.match_type(BaseType.BuiltinType.NULL));
        }
        if (a.match_type(BaseType.BuiltinType.INT) || a.match_type(BaseType.BuiltinType.BOOL)
        || b.match_type(BaseType.BuiltinType.INT) || b.match_type(BaseType.BuiltinType.BOOL)) {
            if (!a.match_type(b)) return false;
            if (a.match_type(BaseType.BuiltinType.BOOL) && !(op.is_check_equal() || op.is_logic())) return false;
            return true;
        }
        if (a.match_type(BaseType.BuiltinType.STRING) || b.match_type(BaseType.BuiltinType.STRING)) {
            if (!a.match_type(b)) return false;
            boolean flag = false;
            if (op == BinaryExprNode.BinaryOperator.ADD || op.is_compare()) flag = true;
            return flag;
        }
        if (a.is_class() || b.is_class()) {
            if (!a.is_class() || !b.is_class()) return false;
            return op == BinaryExprNode.BinaryOperator.EQUAL || op == BinaryExprNode.BinaryOperator.NOTEQUAL;
        }
        if (a.match_type(BaseType.BuiltinType.NULL) && b.match_type(BaseType.BuiltinType.NULL)) {
            return op.is_check_equal();
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
        if (debug_mode) printf("Access BinaryExprNode");
        obj.left_expr.accept(this);
        obj.right_expr.accept(this);
        if (!binary_type_check((VarType) obj.left_expr.expr_type, (VarType) obj.right_expr.expr_type, obj.op)) {
            throw new SemanticError(obj.pos, "Mismatched types of this operator");
        }
        obj.expr_type = binary_type_get((VarType) obj.left_expr.expr_type, (VarType) obj.right_expr.expr_type, obj.op);
        if (debug_mode) printf("Leave BinaryExprNode");
    }
    @Override
    public void visit(ConstExprNode obj) {} // did not be used
    @Override
    public void visit(FuncCallExprNode obj) {
        if (debug_mode) printf("Access FuncCallExprNode");
        obj.func_name.accept(this);
        obj.args.forEach(i -> i.accept(this));
        if (obj.func_name instanceof AtomExprNode) {
            if (scopes.peek().find_func(((AtomExprNode) obj.func_name).identifier) == null) {
                throw new SemanticError(obj.pos, "I lost: can't find the function you call");
            }
            obj.expr_type = ((AtomExprNode) obj.func_name).func_type.ret_type;
        } else if (obj.func_name instanceof MemberVisitExprNode) {
            if (!((MemberVisitExprNode)obj.func_name).is_func) {
                throw new SemanticError(obj.pos, "I lost: can't find the function you call(maybe you called a variable");
            }
            obj.expr_type = ((FuncType)obj.func_name.expr_type).ret_type;
        } else throw new SemanticError(obj.pos, "Unknown error");
        // check args type
        FuncType ret_type;
        if (obj.func_name instanceof AtomExprNode) ret_type = (FuncType) ((AtomExprNode) obj.func_name).func_type;
        else ret_type = (FuncType) obj.func_name.expr_type;
        if (ret_type.func_args_type.size() != obj.args.size()) {
            throw new SemanticError(obj.pos, "Functions arguments' number doesn't match!");
        }
        int number = ret_type.func_args_type.size();
        for (int i = 0; i < number; ++i) {
            if (!ret_type.func_args_type.get(i).match_type(obj.args.get(i).expr_type)) {
                throw new SemanticError(obj.pos, (i + 1) + "th argument has a wrong type!");
            }
        }
        if (debug_mode) printf("Leave FuncCallExprNode");
    }
    @Override
    public void visit(MemberVisitExprNode obj) {
        if (debug_mode) printf("Access MemberVisitExprNode");
        obj.class_expr.accept(this);
        BaseScope scope = null;
        printf(obj.class_expr.expr_type.typename);
        // array visit member
        if (obj.class_expr.expr_type.is_array()) {
            if (obj.member_name.equals("size")) {
                obj.is_func = true;
                obj.is_var = false;
                FuncType tmp = new FuncType();
                tmp.ret_type = new VarType(BaseType.BuiltinType.INT);
                obj.expr_type = tmp;
                return;
            } else throw new SemanticError(obj.pos, "Array can't call this members");
        }
        // class_expr is AtomExpr(this or Identifier)
        if (obj.class_expr instanceof AtomExprNode) {
            if (obj.class_expr.expr_type.match_type(BaseType.BuiltinType.THIS)) { // this
                scope = scopes.peek().in_class();
                if (scope == null) {
                    throw new SemanticError(obj.pos, "I can't find the class");
                }
            } else if (((AtomExprNode)obj.class_expr).maybe_var == false) { // identifier
                throw new SemanticError(obj.pos, ((AtomExprNode)obj.class_expr).identifier + "is not a class");
            }
        }
        // string
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
            return;
        } else {
            // FuncCallExpr
       /*     if (obj.class_expr instanceof FuncCallExprNode) {
                scope = class_scopes.get(((FuncType) obj.class_expr.expr_type).ret_type.typename);
                if (scope == null) {
                    throw new SemanticError(obj.pos, "Class not found");
                }
            }*/
            if (scope == null) {
                scope = class_scopes.get(obj.class_expr.expr_type.typename);
                if (scope == null) {
                    throw new SemanticError(obj.pos, "Class not found");
                }
            }
            if (scope.find_var_in_this(obj.member_name) != null) {
                obj.is_var = true;
                obj.is_func = false;
                obj.expr_type = scope.find_var(obj.member_name).var_type;
            } else if (scope.find_func_in_this(obj.member_name) != null) {
                obj.is_func = true;
                obj.is_var = false;
                obj.expr_type = scope.find_func(obj.member_name).func_type;
            } else {
                throw new SemanticError(obj.pos, ((AtomExprNode)obj.class_expr).identifier + "doesn't have a member naming" + obj.member_name);
            }
        }
        if (debug_mode) printf("Leave MemberVisitExprNode");
    }
    @Override
    public void visit(NewExprNode obj) {
        if (debug_mode) printf("Access NewExprNode");
        if (obj.expr_type.match_type(BaseType.BuiltinType.CLASS)) {
            if (scopes.peek().find_class(obj.expr_type.typename) == null) {
                throw new SemanticError(obj.pos, "Class not found");
            }
        }
        AtomicBoolean flag = new AtomicBoolean(true);
        obj.index.forEach(i -> {
            if (i != null) {
                if (!flag.get()) {
                    throw new SemanticError(obj.pos, "You should follow the order from the higher dimension");
                }
                i.accept(this);
                if (!i.expr_type.match_type(BaseType.BuiltinType.INT)) {
                    throw new SemanticError(obj.pos, "You offered me a wrong index");
                }
            } else flag.set(false);
        });

        if (debug_mode) printf("Leave NewExprNode");
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
        if (!obj.var.is_left_value() || !obj.var.expr_type.match_type(BaseType.BuiltinType.INT)) {
            throw new SemanticError(obj.pos, "This expression can't apply self-operator");
        }
        obj.expr_type = obj.var.expr_type;
    }
    @Override
    public void visit(PrefixExprNode obj) {
        obj.var.accept(this);
        if (!obj.var.is_left_value() || !obj.var.expr_type.match_type(BaseType.BuiltinType.INT)) {
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
        if (debug_mode) System.out.println("Access AtomExprNode");
        if (obj.identifier != null) {
            if (debug_mode) System.out.println("Find identifier " + obj.identifier);
            FuncRegistry reg2 = scopes.peek().find_func(obj.identifier);
            if (reg2 == null) obj.maybe_func = false;
            else {
                if (debug_mode) System.out.println("maybe function");
                System.out.println(reg2.func_type.ret_type.toString());
                obj.maybe_func = true;
                obj.func_type = reg2.func_type;
            }
            VarRegistry reg1 = scopes.peek().find_var(obj.identifier);
            if (reg1 == null) obj.maybe_var = false;
            else {
                if (debug_mode) System.out.println("maybe variable");
                obj.maybe_var = true;
                obj.expr_type = reg1.var_type;
            }
        }
        if (debug_mode) System.out.println("Leave AtomExprNode");
    }

    // stmt
    @Override
    public void visit(ForStmtNode obj) {
        if (obj.init != null) obj.init.accept(this);
        if (obj.condition != null) obj.condition.accept(this);
        if (!obj.condition.expr.expr_type.match_type(BaseType.BuiltinType.BOOL)) {
            throw new SemanticError(obj.pos, "Condition must be boolean");
        }
        if (obj.step != null) obj.step.accept(this);
        scopes.push(obj.scope);
        obj.stmt.accept(this);
        scopes.pop();
    }
    @Override
    public void visit(WhileStmtNode obj) {
        obj.condition.accept(this);
        if (!obj.condition.expr_type.match_type(BaseType.BuiltinType.BOOL)) {
            throw new SemanticError(obj.pos, "Condition must be boolean");
        }
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
        if (!obj.condition.expr_type.match_type(BaseType.BuiltinType.BOOL)) {
            throw new SemanticError(obj.pos, "Condition must be boolean");
        }
        scopes.push(obj.if_scope);
        obj.if_stmt.accept(this);
        scopes.pop();
        if (obj.else_stmt != null) {
            scopes.push(obj.else_scope);
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
            FuncRegistry tmp = scopes.peek().in_function();
            if (tmp == null) {
                throw new SemanticError(obj.pos, "Where is the function? Are you kidding?");
            }
            if (tmp.func_type.match_type(BaseType.BuiltinType.VOID)) {
                if (obj.return_value != null) {
                    throw new SemanticError(obj.pos, "return value doesn't match!");
                }
            } else {
                obj.return_value.accept(this);
                printf(tmp.func_type.ret_type.built_in_type);
                printf(obj.return_value.expr_type.built_in_type);
                printf(tmp.func_type.ret_type.match_type(obj.return_value.expr_type));
                if (!tmp.func_type.ret_type.match_type(obj.return_value.expr_type)) {
                    throw new SemanticError(obj.pos, "return value doesn't match!");
                }
            }
        }
    }
    @Override
    public void visit(AtomStmtNode obj) {
        if (obj.expr != null) {
            obj.expr.accept(this);
        }
    }
}