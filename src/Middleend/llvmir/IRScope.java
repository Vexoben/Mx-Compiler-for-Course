package Middleend.llvmir;

import Frontend.Tools.Error.IRError;
import Frontend.Tools.Position;

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
        IRScope scope = this;
        while (scope != null) {
            if (scope.var_table.containsKey(_name)) {
                return scope.var_table.get(_name);
            }
            else scope = scope.parent;
        }
        throw new IRError(new Position(0, 0), "Unknown Error");
    }

}
