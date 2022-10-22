package Frontend.ast;
import Tools.Position;

public abstract class ExprNode extends ASTNode {
    public ExprNode(Position _pos) {
        super(_pos);
    }
    public abstract boolean is_left_value();
}