package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Position;

public class MemberVisitExprNode extends ExprNode {
    public ExprNode class_expr;
    public String member_name;
    public Boolean is_func, is_var;

    public MemberVisitExprNode(Position _pos) {
        super(_pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean is_left_value() {
        return is_var;
    }
}