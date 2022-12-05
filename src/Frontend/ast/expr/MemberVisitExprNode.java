package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.Tools.Position;
import Middleend.llvmir.Value;

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

    // interact with IR
    public Value callee;
}