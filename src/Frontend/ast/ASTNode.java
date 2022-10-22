package Frontend.ast;

import Tools.Position;
import Frontend.parser.*;

abstract public class ASTNode {
    public Position pos;

    public ASTNode(Position _pos) {
        pos = _pos;
    }

    abstract public void accept(ASTVisitor visitor);

}