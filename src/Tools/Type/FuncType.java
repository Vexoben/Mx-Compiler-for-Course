package Tools.Type;

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
        // todo
        return false;
    }

    @Override
    public boolean match_type(BuiltinType type) {
        // todo
        return false;
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
}