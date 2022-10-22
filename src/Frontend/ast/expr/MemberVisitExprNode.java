package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Position;

public class MemberVisitExprNode extends ExprNode {
    public ExprNode class_expr;
    public String member_name;

    public MemberVisitExprNode(Position _pos, ExprNode _class_expr, String _member) {
        super(_pos);
        class_expr = _class_expr;
        member_name = _member;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean is_left_value() {
        if (class_expr instanceof FuncCallExprNode) {
            return false;
        } else {
            return true;
        }
    }
}