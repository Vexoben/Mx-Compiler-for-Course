package Frontend.Tools.Registry;

import Frontend.Tools.Position;

abstract public class BaseRegistry {
    public String name;
    public Position pos;

    public BaseRegistry(String _name, Position _pos) {
        name = _name;
        pos = _pos;
    }

    BaseRegistry(String _name) {
        name = _name;
        pos = null;
    }
}