package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Position;

import java.util.ArrayList;

public class NewExprNode extends ExprNode {
    public ExprNode var_type;
    public ArrayList<Integer> index;

    public NewExprNode(Position _pos, ExprNode _var_type) {
        super(_pos);
        var_type = _var_type;
    }

    public void modify_index(ArrayList<Integer> _index) {
        index = _index;
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