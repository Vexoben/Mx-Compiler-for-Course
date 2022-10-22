package Tools.Scope;

import Tools.Registry.*;
import java.util.HashMap;

abstract public class BaseScope {
    public HashMap<String, VarRegistry> var_map;

    BaseScope() {
        var_map = new HashMap<>();
    }

    public final VarRegistry find_var(String name) {
        return var_map.get(name);
    }

    public abstract FuncRegistry find_func(String name);
    public abstract ClassRegistry find_class(String name);
    public abstract void insert_registry(BaseRegistry registry);

}