package Frontend;

import Frontend.ast.*;
import Frontend.ast.def.*;
import Frontend.parser.*;
import Tools.Error.SemanticError;
import Tools.Position;
import Tools.Registry.ClassRegistry;
import Tools.Registry.FuncRegistry;
import Tools.Registry.VarRegistry;
import Tools.Type.BaseType;
import Tools.Type.ClassType;
import Tools.Type.FuncType;
import Tools.Type.VarType;

public class ASTBuilder extends MxStarBaseVisitor<ASTNode> {

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
        ctx.funcDef().forEach(i -> {
            DefNode tmp = (DefNode) visit(i);
            ret.child_list.add(tmp);
            ret.global_scope.insert_registry(((FuncDefNode) tmp).func_registry);
        });
        ctx.varDefBlock().forEach(i -> {
            DefNode tmp = (DefNode) visit(i);
            ret.child_list.add(tmp);
            ((VarAnyNumberDefNode)tmp).registry_list.forEach(j -> ret.global_scope.insert_registry(j));
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

        return ret;
    }

    @Override
    public ASTNode visitClassDef(MxStarParser.ClassDefContext ctx) {
        ClassDefNode ret = new ClassDefNode(new Position(ctx.getStart()));
        ClassType type = new ClassType();
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
        ret.class_registry = new ClassRegistry(ctx.Identifier().toString(), new Position(ctx.getStart()), type);
        return ret;
    }

    @Override
    public ASTNode visitFuncDef(MxStarParser.FuncDefContext ctx) {
        FuncDefNode ret = new FuncDefNode(new Position(ctx.getStart()));
        FuncType type = new FuncType();
        ret.return_value = (VarSingleDefNode) visit(ctx.funcTypeDef());
        type.ret_type = ret.return_value.registry.var_type;
        int number = ctx.funcArgs().varTypeDef().size();
        for (int i = 0; i < number; ++i) {
            VarSingleDefNode tmp = (VarSingleDefNode) visit(ctx.funcArgs().varTypeDef().get(i));
            tmp.registry.name = ctx.funcArgs().Identifier().get(i).toString();
            ret.arg_list.add(tmp);
            type.func_args_type.add(tmp.registry.var_type);
            ret.func_scope.insert_registry(tmp.registry);
        }
        ret.Block_node = (BlockNode) visit(ctx.funcBlock());
        return ret;
    }

    private VarType get_var_type(MxStarParser.VarDefAnyNumberContext ctx) {
        VarType type;
        if (ctx.varTypeDef().Identifier() != null) {
            type = new VarType(ctx.varTypeDef().Identifier().toString());
        } else {
            if (ctx.varTypeDef().buildinType_without_void().Int() != null) {
                type = new VarType(BaseType.BuiltinType.INT);
            } else if (ctx.varTypeDef().buildinType_without_void().String() != null) {
                type = new VarType(BaseType.BuiltinType.STRING);
            } else if (ctx.varTypeDef().buildinType_without_void().Bool() != null) {
                type = new VarType(BaseType.BuiltinType.BOOL);
            } else {
                throw new SemanticError(new Position(ctx.getStart()), "You give me a wrong variable type!");
            }
        }
        type.dimension = ctx.varTypeDef().LeftBracket().size();
        return type;
    }

    private VarType get_var_type(MxStarParser.VarDefSingleContext ctx) {
        VarType type;
        if (ctx.varTypeDef().Identifier() != null) {
            type = new VarType(ctx.varTypeDef().Identifier().toString());
        } else {
            if (ctx.varTypeDef().buildinType_without_void().Int() != null) {
                type = new VarType(BaseType.BuiltinType.INT);
            } else if (ctx.varTypeDef().buildinType_without_void().String() != null) {
                type = new VarType(BaseType.BuiltinType.STRING);
            } else if (ctx.varTypeDef().buildinType_without_void().Bool() != null) {
                type = new VarType(BaseType.BuiltinType.BOOL);
            } else {
                throw new SemanticError(new Position(ctx.getStart()), "You give me a wrong variable type!");
            }
        }
        type.dimension = ctx.varTypeDef().LeftBracket().size();
        return type;
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
        int number = ctx.expression().size();
        for (int i = 0; i < number; ++i) {
            ExprNode tmp = (ExprNode) visit(ctx.expression().get(i));
            ret.registry_list.add(new VarRegistry(type, ctx.Identifier().get(i).toString(), new Position(ctx.getStart())));
            ret.assign_list.add(tmp);
        }
        return ret;
    }

    @Override
    public ASTNode visitVarDefSingle(MxStarParser.VarDefSingleContext ctx) {
        VarSingleDefNode ret = new VarSingleDefNode(new Position(ctx.getStart()));
        VarType type = get_var_type(ctx);
        ret.registry = new VarRegistry(type, ctx.Identifier().toString(), new Position(ctx.getStart()));
        ret.assign =
        return ret;
    }
}