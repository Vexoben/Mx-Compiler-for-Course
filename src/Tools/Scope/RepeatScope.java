package Tools.Scope;

import Tools.Error.SemanticError;
import Tools.Registry.*;
import Tools.Error.RedefineError;
import java.util.HashMap;
public class RepeatScope extends BaseScope {

    public RepeatScope() {
        super();
    }

    @Override
    protected FuncRegistry find_func_in_this(String name) {
        return null;
    }

    @Override
    protected ClassRegistry find_class_in_this(String name) {
        return null;
    }

    @Override
    public void insert_registry(BaseRegistry registry) {
        if (registry instanceof VarRegistry) {
            if (var_map.containsKey(registry.name)) {
                throw new RedefineError(registry.pos, "Oh, it is a bad idea to define two variables naming" + registry.name);
            } else {
                var_map.put(registry.name,  (VarRegistry) registry);
            }
        } else {
            throw new SemanticError(registry.pos, "I think something terrible has happened");
        }
    }
}
