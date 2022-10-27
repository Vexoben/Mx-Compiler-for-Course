package Frontend.ast.def;

import Frontend.ast.DefNode;
import Tools.Position;
import Tools.Type.VarType;

public abstract class VarDefNode extends DefNode {

    public VarType var_type;
    public VarDefNode(Position _pos) {
        super(_pos);
    }
}
