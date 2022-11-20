package Frontend.ast.def;

import Frontend.ast.DefNode;
import Frontend.Tools.Position;
import Frontend.Tools.Type.VarType;

public abstract class VarDefNode extends DefNode {

    public VarType var_type;
    public VarDefNode(Position _pos) {
        super(_pos);
    }
}
