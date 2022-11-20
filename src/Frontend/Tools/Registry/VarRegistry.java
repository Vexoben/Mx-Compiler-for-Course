package Frontend.Tools.Registry;

import Frontend.Tools.Position;
import Frontend.Tools.Type.VarType;

public class VarRegistry extends BaseRegistry {
    public VarType var_type;

    public VarRegistry(VarType type, String _name, Position _pos) {
        super(_name, _pos);
        var_type = type;
    }
}