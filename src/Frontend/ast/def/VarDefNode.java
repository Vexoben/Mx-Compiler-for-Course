package Frontend.ast.def;

import Frontend.ast.DefNode;
import Tools.Position;

public abstract class VarDefNode extends DefNode {
    public VarDefNode(Position _pos) {
        super(_pos);
    }
}
