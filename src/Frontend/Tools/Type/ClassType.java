package Frontend.Tools.Type;

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
        if (type instanceof ClassType) {
            if (var_list.size() != ((ClassType) type).var_list.size()) return false;
            if (func_list.size() != ((ClassType) type).func_list.size()) return false;
            int n1 = var_list.size(), n2 = func_list.size();
            for (int i = 0; i < n1; ++i) {
                if (!var_list.get(i).match_type(((ClassType) type).var_list.get(i))) return false;
            }
            for (int i = 0; i < n2; ++i) {
                if (!func_list.get(i).match_type(((ClassType) type).func_list.get(i))) return false;
            }
            return true;
        } else return false;
    }

    @Override
    public boolean match_type(BuiltinType type) {
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