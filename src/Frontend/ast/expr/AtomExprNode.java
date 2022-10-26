package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.parser.MxStarParser;
import Tools.Position;
import Tools.Type.BaseType;
import Tools.Type.VarType;

import javax.swing.text.html.parser.Parser;

public class AtomExprNode extends ExprNode {
    public boolean maybe_var, maybe_func;
    public String identifier;

    public AtomExprNode(Position _pos, MxStarParser.AtomContext ctx) {
        super(_pos);
        if (ctx.IntConst() != null) expr_type = new VarType(BaseType.BuiltinType.INT);
        if (ctx.True() != null || ctx.False() != null) expr_type = new VarType(BaseType.BuiltinType.BOOL);
        if (ctx.StringConst() != null) expr_type = new VarType(BaseType.BuiltinType.STRING);
        if (ctx.Null() != null) expr_type = new VarType(BaseType.BuiltinType.NULL);
        if (ctx.This() != null) expr_type = new VarType(BaseType.BuiltinType.CLASS);
        if (ctx.Identifier() == null) {
            identifier = ctx.Identifier().toString();
            // find in scopes when semantic check
        }
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