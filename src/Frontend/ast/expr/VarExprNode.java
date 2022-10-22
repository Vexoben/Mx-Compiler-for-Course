package Frontend.ast.expr;
import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Position;

import java.util.ArrayList;

public class VarExprNode extends ExprNode {
    public String var_name;
    public ArrayList<Integer> index_list;

    public VarExprNode(Position _pos, String _name, ArrayList<Integer> _index_list) {
        super(_pos);
        var_name = _name;
        index_list = _index_list;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean is_left_value() {
        return true;
    }
}