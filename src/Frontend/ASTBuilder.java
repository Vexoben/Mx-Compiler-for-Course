package Frontend;

import Frontend.ast.*;
import Frontend.ast.def.*;
import Frontend.ast.expr.*;
import Frontend.ast.stmt.*;
import Frontend.parser.*;
import Tools.Error.SemanticError;
import Tools.Position;
import Tools.Registry.ClassRegistry;
import Tools.Registry.FuncRegistry;
import Tools.Registry.VarRegistry;
import Tools.Scope.BaseScope;
import Tools.Type.BaseType;
import Tools.Type.ClassType;
import Tools.Type.FuncType;
import Tools.Type.VarType;

import java.util.ArrayList;
import java.util.Stack;

public class ASTBuilder extends MxStarBaseVisitor<ASTNode> {

    Stack<BaseScope> scopes = new Stack<>();;

    @Override
    public ASTNode visitMxstarcode(MxStarParser.MxstarcodeContext ctx) {
        RootNode ret = new RootNode(new Position(ctx));

        // built-in-functions
        // print
        FuncType func_type = new FuncType();
        func_type.ret_type = new VarType(BaseType.BuiltinType.VOID);
        func_type.func_args_type.add(new VarType(BaseType.BuiltinType.STRING));
        ret.global_scope.insert_registry(new FuncRegistry(func_type, "print", new Position(ctx.getStart())));
        // println
        ret.global_scope.insert_registry(new FuncRegistry(func_type, "println", new Position(ctx.getStart())));
        // printInt
        func_type = new FuncType();
        func_type.ret_type = new VarType(BaseType.BuiltinType.VOID);
        func_type.func_args_type.add(new VarType(BaseType.BuiltinType.INT));
        ret.global_scope.insert_registry(new FuncRegistry(func_type, "printInt", new Position(ctx.getStart())));
        // printlnInt
        ret.global_scope.insert_registry(new FuncRegistry(func_type, "printlnInt", new Position(ctx.getStart())));
        // getString
        func_type = new FuncType();
        func_type.ret_type = new VarType(BaseType.BuiltinType.STRING);
        ret.global_scope.insert_registry(new FuncRegistry(func_type, "getString", new Position(ctx.getStart())));
        // getInt
        func_type = new FuncType();
        func_type.ret_type = new VarType(BaseType.BuiltinType.INT);
        ret.global_scope.insert_registry(new FuncRegistry(func_type, "getInt", new Position(ctx.getStart())));
        // toString
        func_type = new FuncType();
        func_type.ret_type = new VarType(BaseType.BuiltinType.STRING);
        func_type.func_args_type.add(new VarType(BaseType.BuiltinType.INT));
        ret.global_scope.insert_registry(new FuncRegistry(func_type, "toString", new Position(ctx.getStart())));

        // classes, functions, global-variables
        scopes.push(ret.global_scope);
        ctx.varDefBlock().forEach(i -> {
            DefNode tmp = (DefNode) visit(i);
            ret.child_list.add(tmp);
            // ((VarAnyNumberDefNode)tmp).registry_list.forEach(j -> ret.global_scope.insert_registry(j));
        });
        ctx.funcDef().forEach(i -> {
            DefNode tmp = (DefNode) visit(i);
            ret.child_list.add(tmp);
            ret.global_scope.insert_registry(((FuncDefNode) tmp).func_registry);
        });
        ctx.classDef().forEach(i -> {
            DefNode tmp = (DefNode) visit(i);
            ret.child_list.add(tmp);
            ret.global_scope.insert_registry(((ClassDefNode) tmp).class_registry);
        });

        // check main function
        FuncRegistry main = ret.global_scope.find_func("main");
        if (main == null) {
            throw new SemanticError(new Position(ctx.getStart()), "I'm lost. Where is main() function?");
        }
        if (!main.func_type.ret_type.match_type(BaseType.BuiltinType.INT)) {
            throw new SemanticError(new Position(ctx.getStart()), "I never accept main() function of this type!");
        }

        scopes.pop();
        return ret;
    }
    @Override
    public ASTNode visitClassDef(MxStarParser.ClassDefContext ctx) {
        ClassDefNode ret = new ClassDefNode(new Position(ctx.getStart()));
        ClassType type = new ClassType();
        ret.class_scope.father_scope = scopes.peek();
        scopes.push(ret.class_scope);
        ctx.funcDef().forEach(i -> {
            DefNode tmp = (DefNode) visit(i);
            ret.func_list.add((FuncDefNode) tmp);
            ret.class_scope.insert_registry(((FuncDefNode) tmp).func_registry);
            type.func_list.add(((FuncDefNode) tmp).func_registry.func_type);
        });
        ctx.varDefBlock().forEach(i -> {
            DefNode tmp = (DefNode) visit(i);
            ret.var_list.add((VarAnyNumberDefNode) tmp);
            ((VarAnyNumberDefNode)tmp).registry_list.forEach(j -> {
                ret.class_scope.insert_registry(j);
                type.var_list.add(j.var_type);
            });
        });
        if (ctx.classConstructor() != null) {
            type.constructor = new FuncType();
            ret.constructor = (FuncDefNode) visit(ctx.classConstructor());
        }
        ret.class_registry = new ClassRegistry(ctx.Identifier().toString(), new Position(ctx.getStart()), type);
        scopes.pop();
        return ret;
    }

    @Override
    public ASTNode visitFuncDef(MxStarParser.FuncDefContext ctx) {
        FuncDefNode ret = new FuncDefNode(new Position(ctx.getStart()));
        FuncType type = new FuncType();
        type.ret_type = get_func_ret_type(ctx.funcTypeDef());
        ret.func_scope.father_scope = scopes.peek();
        scopes.push(ret.func_scope);
        int number = ctx.funcArgs().varTypeDef().size();
        for (int i = 0; i < number; ++i) {
            VarSingleDefNode tmp = (VarSingleDefNode) visit(ctx.funcArgs().varTypeDef().get(i));
            tmp.registry.name = ctx.funcArgs().Identifier().get(i).toString();
            ret.arg_list.add(tmp);
            type.func_args_type.add(tmp.registry.var_type);
            ret.func_scope.insert_registry(tmp.registry);
        }
        ret.block_node = (BlockNode) visit(ctx.funcBlock());
        scopes.pop();
        ret.func_registry = new FuncRegistry(type, ctx.Identifier().toString(), new Position(ctx.getStart()));
        ret.func_scope.func_registry = ret.func_registry;
        return ret;
    }

    @Override
    public ASTNode visitFuncBlock(MxStarParser.FuncBlockContext ctx) {
        BlockNode ret = new BlockNode(new Position(ctx.getStart()));
        ret.suite_scope.father_scope = scopes.peek();
        scopes.push(ret.suite_scope);
        ctx.funcStatement().forEach(i -> {
            StmtNode tmp = (StmtNode) visit(i);
            ret.stmt_list.add(tmp);
        });
        scopes.pop();
        return ret;
    }

    @Override
    public ASTNode visitFuncStatement(MxStarParser.FuncStatementContext ctx) {
        if (ctx.funcBlock() != null) return visit(ctx.funcBlock());
        else if (ctx.ifBlock() != null) return visit(ctx.ifBlock());
        else if (ctx.whileBlock() != null) return visit(ctx.whileBlock());
        else if (ctx.forBlock() != null) return visit(ctx.forBlock());
        else if (ctx.jumpBlock() != null) return visit(ctx.jumpBlock());
        else if (ctx.varDefBlock() != null) return visit(ctx.varDefBlock());
        else if (ctx.atomicBlock() != null) return visit(ctx.atomicBlock());
        else throw new SemanticError(new Position(ctx.getStart()), "I don't know what happened");
    }

    @Override
    public ASTNode visitIfBlock(MxStarParser.IfBlockContext ctx) {
        IfStmtNode ret = new IfStmtNode(new Position(ctx.getStart()));
        ret.condition = (ExprNode) visit(ctx.expression());
        ret.if_scope.father_scope = scopes.peek();
        scopes.push(ret.if_scope);
        ret.if_stmt = (StmtNode) visit(ctx.funcStatement().get(0));
        scopes.pop();
        if (ctx.Else() != null) {
            ret.else_scope.father_scope = scopes.peek();
            scopes.push(ret.else_scope);
            ret.else_stmt = (StmtNode) visit(ctx.funcStatement().get(1));
            scopes.pop();
        }
        return ret;
    }

    @Override
    public ASTNode visitWhileBlock(MxStarParser.WhileBlockContext ctx) {
        WhileStmtNode ret = new WhileStmtNode(new Position(ctx.getStart()));
        ret.condition = (ExprNode) visit(ctx.expression());
        ret.scope.father_scope = scopes.peek();
        scopes.push(ret.scope);
        ret.stmt = (StmtNode) visit(ctx.funcStatement());
        scopes.pop();
        return ret;
    }

    @Override
    public ASTNode visitForBlock(MxStarParser.ForBlockContext ctx) {
        ForStmtNode ret = new ForStmtNode(new Position(ctx.getStart()));
        ret.scope.father_scope = scopes.peek();
        scopes.push(ret.scope);
        if (ctx.initializationStatement() != null) {
            ret.init = (AtomStmtNode) visit(ctx.initializationStatement());
        } else ret.init = null;
        if (ctx.forConditionExpression() != null) {
            ret.condition = (AtomStmtNode) visit(ctx.forConditionExpression());
        } else ret.condition = null;
        if (ctx.stepExpression() != null) {
            ret.step = (AtomStmtNode) visit(ctx.stepExpression());
        } else ret.step = null;
        ret.stmt = (StmtNode) visit(ctx.funcStatement());
        scopes.pop();
        return ret;
    }

    @Override
    public ASTNode visitInitializationStatement(MxStarParser.InitializationStatementContext ctx) {
        if (ctx == null) return null;
        AtomStmtNode ret = new AtomStmtNode(new Position(ctx.getStart()));
        if (ctx.expression() != null) {
            ret.expr = (ExprNode) visit(ctx.expression());
            return ret;
        }
        else if (ctx.varDefAnyNumber() != null) {
            ret.expr = (ExprNode) visit(ctx.varDefAnyNumber());
            return ret;
        }
        else throw new SemanticError(new Position(ctx.getStart()), "You gives me a wrong initialization statement");
    }

    @Override
    public ASTNode visitForConditionExpression(MxStarParser.ForConditionExpressionContext ctx) {
        if (ctx == null) return null;
        return new AtomStmtNode(new Position(ctx.getStart()), (ExprNode) visit(ctx.expression()));
    }

    @Override
    public ASTNode visitStepExpression(MxStarParser.StepExpressionContext ctx) {
        if (ctx == null) return null;
        return new AtomStmtNode(new Position(ctx.getStart()), (ExprNode) visit(ctx.expression()));
    }

    @Override
    public ASTNode visitJumpBlock(MxStarParser.JumpBlockContext ctx) {
        JumpStmtNode ret = new JumpStmtNode(new Position(ctx.getStart()));
        if (ctx.Return() != null) {
            ret.jump_case = JumpStmtNode.JUMP_CASE.RETURN;
            ret.return_value = (ExprNode) visit(ctx.expression());
        } else if (ctx.Continue() != null) {
            ret.jump_case = JumpStmtNode.JUMP_CASE.CONTINUE;
        } else if (ctx.Break() != null) {
            ret.jump_case = JumpStmtNode.JUMP_CASE.BREAK;
        }
        return ret;
    }

    @Override
    public ASTNode visitAtomicBlock(MxStarParser.AtomicBlockContext ctx) {
        AtomStmtNode ret = new AtomStmtNode(new Position(ctx.getStart()));
        if (ctx.expression() != null) {
            ret.expr = (ExprNode) visit(ctx.expression());
        }
        return ret;
    }

    @Override
    public ASTNode visitVarTypeDef(MxStarParser.VarTypeDefContext ctx) {
        VarSingleDefNode ret = new VarSingleDefNode(new Position(ctx.getStart()));
        VarType type = get_var_type(ctx);
        ret.registry = new VarRegistry(type, "to_be_write", new Position(ctx.getStart()));
        scopes.peek().insert_registry(ret.registry);
        return ret;
    }

    private VarType get_var_type(MxStarParser.VarTypeDefContext ctx) {
        VarType type;
        if (ctx.Identifier() != null) {
            type = new VarType(ctx.Identifier().toString());
        } else {
            if (ctx.buildinType_without_void().Int() != null) {
                type = new VarType(BaseType.BuiltinType.INT);
            } else if (ctx.buildinType_without_void().String() != null) {
                type = new VarType(BaseType.BuiltinType.STRING);
            } else if (ctx.buildinType_without_void().Bool() != null) {
                type = new VarType(BaseType.BuiltinType.BOOL);
            } else {
                throw new SemanticError(new Position(ctx.getStart()), "You give me a wrong variable type!");
            }
        }
        type.dimension = ctx.LeftBracket().size();
        return type;
    }

    private VarType get_var_type(MxStarParser.VarDefAnyNumberContext ctx) {
        return get_var_type(ctx.varTypeDef());
    }

    private VarType get_var_type(MxStarParser.VarDefSingleContext ctx) {
        return get_var_type(ctx.varTypeDef());
    }

    private VarType get_func_ret_type(MxStarParser.FuncTypeDefContext ctx) {
        VarType type;
        if (ctx.varTypeDef().Identifier() != null) {
            type = new VarType(ctx.varTypeDef().Identifier().toString());
            type.dimension = ctx.varTypeDef().LeftBracket().size();
        } else if (ctx.Void() != null) {
            type = new VarType(BaseType.BuiltinType.VOID);
        } else {
            if (ctx.varTypeDef().buildinType_without_void().Int() != null) {
                type = new VarType(BaseType.BuiltinType.INT);
            } else if (ctx.varTypeDef().buildinType_without_void().String() != null) {
                type = new VarType(BaseType.BuiltinType.STRING);
            } else if (ctx.varTypeDef().buildinType_without_void().Bool() != null) {
                type = new VarType(BaseType.BuiltinType.BOOL);
            } else {
                throw new SemanticError(new Position(ctx.getStart()), "You give me a wrong function return type!");
            }
            type.dimension = ctx.varTypeDef().LeftBracket().size();
        }
        return type;
    }

    @Override
    public ASTNode visitVarDefBlock(MxStarParser.VarDefBlockContext ctx) {
        return visitVarDefAnyNumber(ctx.varDefAnyNumber());
    }

    @Override
    public ASTNode visitVarDefAnyNumber(MxStarParser.VarDefAnyNumberContext ctx) {
        VarAnyNumberDefNode ret = new VarAnyNumberDefNode(new Position(ctx.getStart()));
        VarType type = get_var_type(ctx);
        ret.var_type = type;
        ctx.varDefWithoutType().forEach(i -> {
            ExprNode ass = null;
            if (i.expression() != null) {
                ass = (ExprNode) visit(i.expression());
            }
            ret.assign_list.add(ass);
            VarRegistry reg = new VarRegistry(type, i.Identifier().toString(), new Position(ctx.getStart()));
            ret.registry_list.add(reg);
            scopes.forEach(j -> System.out.println(j.toString()));
            scopes.peek().insert_registry(reg);
        });
        return ret;
    }

    @Override
    public ASTNode visitVarDefSingle(MxStarParser.VarDefSingleContext ctx) {
        VarSingleDefNode ret = new VarSingleDefNode(new Position(ctx.getStart()));
        VarType type = get_var_type(ctx);
        ret.var_type = type;
        ret.registry = new VarRegistry(type, ctx.Identifier().toString(), new Position(ctx.getStart()));
        scopes.peek().insert_registry(ret.registry);
        if (ctx.expression() != null) {
            ret.assign = (ExprNode) visit(ctx.expression());
        }
        return ret;
    }

    @Override
    public ASTNode visitAtomExpr(MxStarParser.AtomExprContext ctx) {
        return new AtomExprNode(new Position(ctx.getStart()), ctx.atom());
    }

    @Override
    public ASTNode visitLambdaExpr(MxStarParser.LambdaExprContext ctx) {
        LambdaExprNode ret = new LambdaExprNode(new Position(ctx.getStart()));
        if (ctx.AndBit() != null) ret.outside_visit = true;
        else ret.outside_visit = false;
        ret.func_scope.father_scope = scopes.peek();
        scopes.push(ret.func_scope);
        int number = ctx.funcArgs().varTypeDef().size();
        for (int i = 0; i < number; ++i) {
            VarSingleDefNode tmp = (VarSingleDefNode) visit(ctx.funcArgs().varTypeDef().get(i));
            tmp.registry.name = ctx.funcArgs().Identifier().get(i).toString();
            ret.arg_list.add(tmp);
            ret.func_scope.insert_registry(tmp.registry);
        }
        ret.call_args = visit(ctx.funcCallArgs());
        ret.suite_node = (BlockNode) visit(ctx.funcBlock());
        scopes.pop();
        if (ret.outside_visit == false) {
            ret.func_scope.father_scope = null;
        }
        return ret;
    }

    @Override
    public ASTNode visitBinaryExpr(MxStarParser.BinaryExprContext ctx) {
        BinaryExprNode ret = new BinaryExprNode(new Position(ctx.getStart()));
        ret.left_expr = (ExprNode) visit(ctx.expression().get(0));
        ret.right_expr = (ExprNode) visit(ctx.expression().get(1));
        if (ctx.Add() != null) ret.op = BinaryExprNode.BinaryOperator.ADD;
        else if (ctx.Sub() != null) ret.op = BinaryExprNode.BinaryOperator.SUB;
        else if (ctx.Mul() != null) ret.op = BinaryExprNode.BinaryOperator.MUL;
        else if (ctx.Div() != null) ret.op = BinaryExprNode.BinaryOperator.DIV;
        else if (ctx.Mod() != null) ret.op = BinaryExprNode.BinaryOperator.MOD;
        else if (ctx.LeftShift() != null) ret.op = BinaryExprNode.BinaryOperator.LEFTSHIFT;
        else if (ctx.RightShift() != null) ret.op = BinaryExprNode.BinaryOperator.RIGHTSHIFT;
        else if (ctx.Leq() != null) ret.op = BinaryExprNode.BinaryOperator.LEQ;
        else if (ctx.Geq() != null) ret.op = BinaryExprNode.BinaryOperator.GEQ;
        else if (ctx.Less() != null) ret.op = BinaryExprNode.BinaryOperator.LESS;
        else if (ctx.Greater() != null) ret.op = BinaryExprNode.BinaryOperator.GREATER;
        else if (ctx.Or() != null) ret.op = BinaryExprNode.BinaryOperator.OR;
        else if (ctx.And() != null) ret.op = BinaryExprNode.BinaryOperator.AND;
        else if (ctx.Xor() != null) ret.op = BinaryExprNode.BinaryOperator.XOR;
        else if (ctx.AndBit() != null) ret.op = BinaryExprNode.BinaryOperator.BITAND;
        else if (ctx.OrBit() != null) ret.op = BinaryExprNode.BinaryOperator.BITOR;
        else if (ctx.Equal() != null) ret.op = BinaryExprNode.BinaryOperator.EQUAL;
        else if (ctx.NotEqual() != null) ret.op = BinaryExprNode.BinaryOperator.NOTEQUAL;
        else throw new SemanticError(ret.pos, "Known binary operator");
        return ret;
    }

    @Override
    public ASTNode visitFuncCallExpr(MxStarParser.FuncCallExprContext ctx) {
        FuncCallExprNode ret = new FuncCallExprNode(new Position(ctx.getStart()));
        ret.func_name = (ExprNode) visit(ctx.expression());
        ret.args = visit(ctx.funcCallArgs());
        return ret;
    }

    private ArrayList<ExprNode> visit(MxStarParser.FuncCallArgsContext ctx) {
        ArrayList<ExprNode> ret = new ArrayList<>();
        ctx.expression().forEach(i -> ret.add((ExprNode) visit(i)));
        return ret;
    }

    @Override
    public ASTNode visitArrayVisitExpr(MxStarParser.ArrayVisitExprContext ctx) {
        VarExprNode ret = new VarExprNode(new Position(ctx.getStart()));
        ret.array = (ExprNode) visit(ctx.expression().get(0));
        ret.index = (ExprNode) visit(ctx.expression().get(1));
        return ret;
    }

    @Override
    public ASTNode visitAssignExpr(MxStarParser.AssignExprContext ctx) {
        AssignExprNode ret = new AssignExprNode(new Position(ctx.getStart()));
        ret.left_expr = (ExprNode) visit(ctx.expression().get(0));
        ret.right_expr = (ExprNode) visit(ctx.expression().get(1));
        return ret;
    }

    @Override
    public ASTNode visitMemberVisitExpr(MxStarParser.MemberVisitExprContext ctx) {
        MemberVisitExprNode ret = new MemberVisitExprNode(new Position(ctx.getStart()));
        ret.member_name = ctx.Identifier().toString();
        ret.class_expr = (ExprNode) visit(ctx.expression());
        return ret;
    }

    @Override
    public ASTNode visitNewExpr(MxStarParser.NewExprContext ctx) {
        NewExprNode ret = new NewExprNode(new Position(ctx.getStart()));
        ret.expr_type = get_var_type(ctx);
        ctx.arraySizeDeclare().forEach(i -> {
            ret.index.add((ExprNode) visit(i.expression()));
        });
        return ret;
    }

    private VarType get_var_type(MxStarParser.NewExprContext ctx) {
        VarType type;
        if (ctx.Identifier() != null) {
            type = new VarType(ctx.Identifier().toString());
        } else {
            if (ctx.buildinType_without_void().Int() != null) {
                type = new VarType(BaseType.BuiltinType.INT);
            } else if (ctx.buildinType_without_void().String() != null) {
                type = new VarType(BaseType.BuiltinType.STRING);
            } else if (ctx.buildinType_without_void().Bool() != null) {
                type = new VarType(BaseType.BuiltinType.BOOL);
            } else {
                throw new SemanticError(new Position(ctx.getStart()), "You give me a wrong variable type!");
            }
        }
        type.dimension = ctx.arraySizeDeclare().size();
        return type;
    }

    @Override
    public ASTNode visitPostfixExpr(MxStarParser.PostfixExprContext ctx) {
        PostfixExprNode ret = new PostfixExprNode(new Position(ctx.getStart()));
        if (ctx.SelfAdd() != null) {
            ret.is_sub = false;
            ret.is_add = true;
        } else if (ctx.SeflSub() != null) {
            ret.is_sub = true;
            ret.is_add = false;
        }
        ret.var = (ExprNode) visit(ctx.expression());
        return ret;
    }

    @Override
    public ASTNode visitPrefixExpr(MxStarParser.PrefixExprContext ctx) {
        PrefixExprNode ret = new PrefixExprNode(new Position(ctx.getStart()));
        if (ctx.SelfAdd() != null) {
            ret.is_sub = false;
            ret.is_add = true;
        } else if (ctx.SeflSub() != null) {
            ret.is_sub = true;
            ret.is_add = false;
        }
        ret.var = (ExprNode) visit(ctx.expression());
        return ret;
    }

    @Override
    public ASTNode visitParenthesesExpr(MxStarParser.ParenthesesExprContext ctx) {
        return visit(ctx.expression());
    }

    @Override
    public ASTNode visitUnaryExpr(MxStarParser.UnaryExprContext ctx) {
        UnaryExprNode ret = new UnaryExprNode(new Position(ctx.getStart()));
        ret.origin_expr = (ExprNode) visit(ctx.expression());
        if (ctx.ReverseBit() != null) {
            ret.op = UnaryExprNode.UnaryOperator.ReverseBit;
        } else if (ctx.Not() != null) {
            ret.op = UnaryExprNode.UnaryOperator.Not;
        } else if (ctx.Add() != null) {
            ret.op = UnaryExprNode.UnaryOperator.Positive;
        } else if (ctx.Sub() != null) {
            ret.op = UnaryExprNode.UnaryOperator.Negative;
        } else {
            throw new SemanticError(new Position(ctx.getStart()), "Unknown unary operator");
        }
        return ret;
    }
}