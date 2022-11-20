package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.Tools.Position;

import java.util.ArrayList;

public class NewExprNode extends ExprNode {
    public ArrayList<ExprNode> index;

    public NewExprNode(Position _pos) {
        super(_pos);
        index = new ArrayList<>();
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