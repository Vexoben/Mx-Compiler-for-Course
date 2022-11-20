package Frontend.ast;
import Frontend.Tools.Position;

public abstract class DefNode extends StmtNode {
    public DefNode(Position _pos) {
        super(_pos);
    }
}