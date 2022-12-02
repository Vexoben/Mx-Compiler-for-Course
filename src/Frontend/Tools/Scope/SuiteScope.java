package Frontend.Tools.Scope;

import Frontend.Tools.Error.SemanticError;
import Frontend.Tools.Registry.*;

public class SuiteScope extends BaseScope {

    public SuiteScope() {
        super();
    }

    @Override
    public FuncRegistry find_func_in_this(String name) {
        return null;
    }

    @Override
    public ClassRegistry find_class_in_this(String name) {
        return null;
    }

    @Override
    public void insert_registry(BaseRegistry registry) {
        if (registry instanceof VarRegistry) {
            if (var_map.containsKey(registry.name)) {
                throw new SemanticError(registry.pos, "Oh, it is a bad idea to define two variables naming " + registry.name);
            } else {
                var_map.put(registry.name,  (VarRegistry) registry);
            }
        } else {
            throw new SemanticError(registry.pos, "I think something terrible has happened ");
        }
    }
}
