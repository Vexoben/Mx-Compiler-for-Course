package Frontend.Tools.Registry;

import Frontend.Tools.Position;
import Frontend.Tools.Type.FuncType;

public class FuncRegistry extends BaseRegistry {
    public FuncType func_type;
    public boolean is_lambda;

    public FuncRegistry(FuncType type, String _name, Position _pos) {
        super(_name, _pos);
        func_type = type;
    }

}