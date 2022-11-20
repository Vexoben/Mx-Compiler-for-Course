package Frontend.ast.expr;
import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.Tools.Position;

public class UnaryExprNode extends ExprNode {
    public enum UnaryOperator { Not, ReverseBit, Positive, Negative};
    public UnaryOperator op;
    public ExprNode origin_expr;

    public UnaryExprNode(Position _pos) {
        super(_pos);
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