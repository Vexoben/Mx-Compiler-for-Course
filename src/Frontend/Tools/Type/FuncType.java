package Frontend.Tools.Type;

import java.util.ArrayList;

public class FuncType extends BaseType {
    public VarType ret_type;
    public ArrayList<VarType> func_args_type;

    public FuncType() {
        super(BuiltinType.FUNC);
        ret_type = null;
        func_args_type = new ArrayList<>();
    }

    @Override
    public boolean match_type(BaseType type) {
        return this.ret_type.match_type(type);
/*        if (type instanceof FuncType) {
            if (!ret_type.match_type(((FuncType) type).ret_type)) return false;
            int n1 = func_args_type.size(), n2 = ((FuncType) type).func_args_type.size();
            if (n1 != n2) return false;
            for (int i = 0; i < n1; ++i) {
                if (!func_args_type.get(i).match_type(((FuncType) type).func_args_type.get(i))) {
                    return false;
                }
            }
            return true;
        } else return false;*/
    }

    @Override
    public boolean match_type(BuiltinType type) {
        return this.ret_type.match_type(type);
 /*       return false;*/
    }

    @Override
    public BaseType copy() {
        FuncType ret = new FuncType();
        ret.ret_type = (VarType) ret_type.copy();
        for (int i = 0; i < func_args_type.size(); ++i) {
            ret.func_args_type.add((VarType) func_args_type.get(i).copy());
        }
        return ret;
    }

    @Override
    public boolean is_array() {
        return false;
    }

    @Override
    public boolean is_fund() {
        return false;
    }
}