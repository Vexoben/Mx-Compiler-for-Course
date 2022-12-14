package Frontend.Tools.Type;

public class VarType extends BaseType {
    public int dimension;
    private boolean is_class;

    public VarType(BuiltinType type) {
        super(type);
        dimension = 0;
        is_class = false;
    }

    public VarType(String type) {
        super(BuiltinType.CLASS);
        typename = type;
        dimension = 0;
        is_class = true;
    }

    @Override
    public VarType copy() {
        VarType ret = new VarType(built_in_type);
        ret.dimension = dimension;
        ret.typename = typename;
        ret.is_class = is_class;
        return ret;
    }

    @Override
    public boolean is_array() {
        return dimension > 0;
    }

    @Override
    public boolean match_type(BuiltinType type) {
        if (type == BuiltinType.NULL && (dimension > 0 || built_in_type == BuiltinType.CLASS)) {
            return true;
        }
        return dimension == 0 && built_in_type == type;
    }

    @Override
    public boolean match_type(BaseType type) {
        if (type instanceof VarType) {
            if (type.built_in_type == BuiltinType.THIS) {
                return dimension == 0 && typename.equals(type.typename);
            }
            if (type.built_in_type == BuiltinType.NULL && (dimension > 0 || built_in_type == BuiltinType.CLASS)) {
                return true;
            }
            return typename.equals(type.typename) && dimension == ((VarType) type).dimension;
        } else if (type instanceof FuncType) {
            return this.match_type(((FuncType) type).ret_type);
        } else {
            return false;
        }
    }

    @Override
    public boolean is_fund() {
        return !is_array() && !is_string() && !is_class();
    }
}