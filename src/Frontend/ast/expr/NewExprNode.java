package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Position;
import Tools.Type.VarType;

import java.util.ArrayList;

public class NewExprNode extends ExprNode {
    public VarType var_type;
    public ArrayList<ExprNode> index;

    public NewExprNode(Position _pos) {
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