package Tools.Registry;

import Frontend.ast.def.FuncDefNode;
import Frontend.parser.MxStarParser;
import Tools.Position;
import Tools.Type.FuncType;

public class FuncRegistry extends BaseRegistry {
    public FuncType func_type;

    public FuncRegistry(FuncType type, String _name, Position _pos) {
        super(_name, _pos);
        func_type = type;
    }

}