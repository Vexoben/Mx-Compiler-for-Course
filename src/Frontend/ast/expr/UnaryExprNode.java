package Frontend.ast.expr;
import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Position;

public class UnaryExprNode extends ExprNode {
    public String op;
    public ExprNode origin_expr;

    public UnaryExprNode(Position _pos, String _op, ExprNode _origin) {
        super(_pos);
        op = _op;
        origin_expr = _origin;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean is_left_value() {
        return false;
    }
}