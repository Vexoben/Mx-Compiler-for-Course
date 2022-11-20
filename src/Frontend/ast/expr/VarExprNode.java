package Frontend.ast.expr;
import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.Tools.Position;

public class VarExprNode extends ExprNode {
    public ExprNode array, index;

    public VarExprNode(Position _pos) {
        super(_pos);
        array = null;
        index = null;
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