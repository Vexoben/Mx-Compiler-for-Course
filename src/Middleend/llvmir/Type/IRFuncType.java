package Middleend.llvmir.Type;

import java.util.ArrayList;

public class IRFuncType extends DerivedType{

    IRBaseType ret_type, belong;
    ArrayList<DerivedType> arg_types;

    public IRFuncType(IRBaseType _belong, IRBaseType _ret, ArrayList<DerivedType> _args) {
        belong = _belong;
        ret_type = _ret;
        arg_types = _args;
    }

    public IRFuncType(IRBaseType _belong, IRBaseType _ret, DerivedType... args) {
        belong = _belong;
        ret_type = _ret;
        arg_types = new ArrayList<>();
        for (DerivedType arg: args) {
            arg_types.add(arg);
        }
    }

    public IRBaseType get_ret_type() {
        return ret_type;
    }

    public ArrayList<DerivedType> get_args_types() {
        return arg_types;
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public boolean match(IRBaseType type) {
        if (!(type instanceof IRFuncType)) return false;
        if (!belong.match(((IRFuncType) type).belong)) return false;
        if (!ret_type.match(((IRFuncType) type).ret_type)) return false;
        if (arg_types.size() != ((IRFuncType) type).arg_types.size()) return false;
        int length = arg_types.size();
        for (int i = 0; i < length; ++i) {
            if (!arg_types.get(i).match(((IRFuncType) type).arg_types.get(i))) return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return new String();
    }

}
