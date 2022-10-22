package Frontend.ast.expr;
import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Position;

public class BinaryExprNode extends ExprNode {
    public String op;
    public ExprNode left_expr, right_expr;

    public BinaryExprNode(Position _pos, String _op, ExprNode _left, ExprNode _right) {
        super(_pos);
        op = _op;
        left_expr = _left;
        right_expr = _right;
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