package Tools.Type;

public abstract class BaseType {
    public enum BuiltinType {NULL, INT, BOOL, STRING, VOID, CLASS, FUNC};
    public BuiltinType built_in_type;
    public String typename;

    BaseType(BuiltinType _type) {
        built_in_type = _type;
        switch (_type) {
            case NULL: typename = "null";
            case INT: typename = "int";
            case BOOL: typename = "bool";
            case STRING: typename = "string";
            case VOID: typename = "void";
            case CLASS: typename = "class";
            case FUNC: typename = "func";
        }
    }

    public abstract boolean match_type(BaseType type);

    public abstract boolean match_type(BuiltinType type);

    public abstract BaseType copy();

    public abstract boolean is_array();

}