package Frontend.Tools.Registry;

import Frontend.Tools.Type.ClassType;
import Frontend.Tools.Position;

public class ClassRegistry extends BaseRegistry{
    public ClassType class_type;

    public ClassRegistry(String _name, Position _pos, ClassType type) {
        super(_name, _pos);
        class_type = type;
    }
}
