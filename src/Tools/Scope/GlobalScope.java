package Tools.Scope;

import Tools.Error.SemanticError;
import Tools.Registry.*;
import Tools.Error.RedefineError;
import java.util.ArrayList;
import java.util.HashMap;

public class GlobalScope extends BaseScope {
    public HashMap<String, FuncRegistry> func_map;
    public HashMap<String, ClassRegistry> class_map;

    public GlobalScope() {
        super();
        func_map = new HashMap<>();
        class_map = new HashMap<>();
    }

    @Override
    protected FuncRegistry find_func_in_this(String name) {
        return func_map.get(name);
    }

    @Override
    protected ClassRegistry find_class_in_this(String name) {
        return class_map.get(name);
    }

    public void insert_registry(BaseRegistry registry) {
        if (var_map.containsKey(registry.name)) {
            throw new RedefineError(registry.pos, "Oh, it is a bad idea to define two entries naming" + registry.name);
        } else if (func_map.containsKey(registry.name)) {
            throw new RedefineError(registry.pos, "Oh, it is a bad idea to define two entries naming" + registry.name);
        } else if (class_map.containsKey(registry.name)) {
            throw new RedefineError(registry.pos, "Oh, it is a bad idea to define two entries naming" + registry.name);
        } else {
            if (registry instanceof VarRegistry) {
                var_map.put(registry.name,  (VarRegistry) registry);
            } else if (registry instanceof FuncRegistry) {
                func_map.put(registry.name, (FuncRegistry) registry);
            } else if (registry instanceof ClassRegistry) {
                class_map.put(registry.name, (ClassRegistry) registry);
            } else {
                throw new SemanticError(registry.pos, "I think something terrible has happened");
            }
        }
    }
}