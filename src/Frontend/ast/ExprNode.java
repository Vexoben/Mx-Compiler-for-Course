package Frontend.ast;
import Tools.Position;
import Tools.Type.BaseType;

public abstract class ExprNode extends ASTNode {

    public BaseType expr_type;
    public ExprNode(Position _pos) {
        super(_pos);
    }
    public abstract boolean is_left_value();
}