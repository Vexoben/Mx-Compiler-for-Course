package Tools.Type;

import java.util.ArrayList;

public class ClassType extends BaseType {
    public ArrayList<VarType> var_list;
    public ArrayList<FuncType> func_list;

    public ClassType() {
        super(BuiltinType.CLASS);
        var_list = new ArrayList<>();
        func_list = new ArrayList<>();
    }

    public ClassType(ArrayList<VarType> _var, ArrayList<FuncType> _func) {
        super(BuiltinType.CLASS);
        var_list = _var;
        func_list = _func;
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
        ClassType ret = new ClassType();
        for (int i = 0; i < var_list.size(); ++i) {
            ret.var_list.add((VarType) var_list.get(i).copy());
        }
        for (int i = 0; i < func_list.size(); ++i) {
            ret.func_list.add((FuncType) func_list.get(i).copy());
        }
        return ret;
    }

    @Override
    public boolean is_array() {
        return false;
    }
}