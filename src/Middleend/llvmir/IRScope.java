package Middleend.llvmir;

import Frontend.Tools.Error.IRError;
import Frontend.Tools.Position;
import org.antlr.v4.runtime.misc.Pair;

import java.util.HashMap;

public class IRScope {
    IRScope parent;
    HashMap<String, Value> var_table;
    boolean is_class_scope;

    public IRScope(IRScope _parent) {
        parent = _parent;
        var_table = new HashMap<>();
    }

    public IRScope(IRScope _parent, boolean _is_class_scope) {
        parent = _parent;
        is_class_scope = _is_class_scope;
        var_table = new HashMap<>();
    }

    public void add_var(String _name, Value _value) {
        var_table.put(_name, _value);
    }

    public Pair<Value, Boolean> get_var(String _name) {
        IRScope scope = this;
        while (scope != null) {
            if (scope.var_table.containsKey(_name)) {
                return new Pair<>(scope.var_table.get(_name), scope.is_class_scope);
            }
            else scope = scope.parent;
        }
        throw new IRError(new Position(0, 0), "IRScope.java get_var");
    }

}
