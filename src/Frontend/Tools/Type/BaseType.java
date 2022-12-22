package Frontend.Tools.Type;

public abstract class BaseType {
    public enum BuiltinType {NULL, INT, BOOL, STRING, VOID, CLASS, FUNC, THIS};
    public BuiltinType built_in_type;
    public String typename;

    BaseType(BuiltinType _type) {
        built_in_type = _type;
        switch (_type) {
            case NULL: typename = "null"; break;
            case INT: typename = "int"; break;
            case BOOL: typename = "bool"; break;
            case STRING: typename = "string"; break;
            case VOID: typename = "void"; break;
            case CLASS: typename = "class"; break;
            case FUNC: typename = "func"; break;
            case THIS: typename = "this"; break;
        }
    }

    public abstract boolean match_type(BaseType type);

    public abstract boolean match_type(BuiltinType type);

    public abstract BaseType copy();

    public abstract boolean is_array();

    public boolean is_class() {
        return built_in_type == BuiltinType.CLASS;
    }

    public boolean is_string() {
        return built_in_type == BuiltinType.STRING;
    }

    public abstract boolean is_fund();
}