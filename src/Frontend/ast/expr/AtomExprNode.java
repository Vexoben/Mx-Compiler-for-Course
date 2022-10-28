package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.parser.MxStarParser;
import Tools.Error.SemanticError;
import Tools.Position;
import Tools.Type.BaseType;
import Tools.Type.FuncType;
import Tools.Type.VarType;

import javax.swing.text.html.parser.Parser;

public class AtomExprNode extends ExprNode {
    public boolean maybe_var, maybe_func;
    public String identifier;
    public FuncType func_type;

    public void output_type(MxStarParser.AtomContext ctx) {
        if (ctx.IntConst() != null) System.out.println("IntConst");
        else if (ctx.True() != null || ctx.False() != null) System.out.println("Boolean");
        else if (ctx.StringConst() != null) System.out.println("String");
        else if (ctx.Null() != null) System.out.println("Null");
        else if (ctx.This() != null) System.out.println("This");
        else if (ctx.Identifier() != null) System.out.println("Identifier");
    }

    public AtomExprNode(Position _pos, MxStarParser.AtomContext ctx) {
        super(_pos);
        maybe_func = maybe_var = false;
        if (ctx.IntConst() != null) expr_type = new VarType(BaseType.BuiltinType.INT);
        else if (ctx.True() != null || ctx.False() != null) expr_type = new VarType(BaseType.BuiltinType.BOOL);
        else if (ctx.StringConst() != null) expr_type = new VarType(BaseType.BuiltinType.STRING);
        else if (ctx.Null() != null) expr_type = new VarType(BaseType.BuiltinType.NULL);
        else if (ctx.This() != null) expr_type = new VarType(BaseType.BuiltinType.THIS);
        else if (ctx.Identifier() != null) {
            identifier = ctx.Identifier().toString();
            // find in scopes when semantic check
        } else {
            throw new SemanticError(_pos, "Known error in AtomExprNode Building");
        }
        output_type(ctx);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean is_left_value() {
        return maybe_var;
    }
}