package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.parser.MxStarParser;
import Tools.Position;
import Tools.Type.BaseType;

import javax.swing.text.html.parser.Parser;

public class AtomExprNode extends ExprNode {
    public MxStarParser.AtomContext ctx;

    public AtomExprNode(Position _pos, MxStarParser.AtomContext _ctx) {
        super(_pos);
        ctx = _ctx;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean is_left_value() {
        return ctx.Identifier() != null;
    }
}