package Middleend.llvmir;

import java.util.HashMap;

public class IRScope {
    IRScope parent;
    HashMap<String, Value> var_table;

    public IRScope(IRScope _parent) {
        parent = _parent;
        var_table = new HashMap<>();
    }

    public void add_var(String _name, Value _value) {
        var_table.put(_name, _value);
    }

    public Value get_var(String _name) {
        return var_table.get(_name);
    }

}
