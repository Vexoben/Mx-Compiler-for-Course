package Middleend.llvmir.Type;

import java.util.ArrayList;

public class FuncType extends DerivedType{

    BaseType ret_type, belong;
    ArrayList<DerivedType> arg_types;

    public FuncType(BaseType _belong, BaseType _ret, ArrayList<DerivedType> _args) {
        belong = _belong;
        ret_type = _ret;
        arg_types = _args;
    }

    public BaseType get_ret_type() {
        return ret_type;
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public boolean match(BaseType type) {
        if (!(type instanceof FuncType)) return false;
        if (!belong.match(((FuncType) type).belong)) return false;
        if (!ret_type.match(((FuncType) type).ret_type)) return false;
        if (arg_types.size() != ((FuncType) type).arg_types.size()) return false;
        int length = arg_types.size();
        for (int i = 0; i < length; ++i) {
            if (!arg_types.get(i).match(((FuncType) type).arg_types.get(i))) return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return new String();
    }

}
