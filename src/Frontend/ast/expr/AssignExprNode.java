package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.Tools.Position;

public class AssignExprNode extends ExprNode {
    public ExprNode left_expr, right_expr;

    public AssignExprNode(Position _pos) {
        super(_pos);
    }
    public AssignExprNode(Position _pos, ExprNode _left, ExprNode _right) {
        super(_pos);
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