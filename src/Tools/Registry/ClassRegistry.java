package Tools.Registry;

import Tools.Type.ClassType;
import Tools.Position;

public class ClassRegistry extends BaseRegistry{
    public ClassType class_type;

    public ClassRegistry(String _name, Position _pos, ClassType type) {
        super(_name, _pos);
        class_type = type;
    }
}
