package Tools.Scope;

import Frontend.ast.stmt.ForStmtNode;
import Tools.Registry.*;
import java.util.HashMap;

abstract public class BaseScope {
    public HashMap<String, VarRegistry> var_map;
    public BaseScope father_scope;

    BaseScope() {
        var_map = new HashMap<>();
    }

    protected final VarRegistry find_var_in_this(String name) {
        return var_map.get(name);
    }

    public VarRegistry find_var(String name) {
        VarRegistry tmp = find_var_in_this(name);
        if (tmp != null) return tmp;
        else {
            if (father_scope != null) return father_scope.find_var(name);
            else return null;
        }
    }

    protected abstract FuncRegistry find_func_in_this(String name);
    public FuncRegistry find_func(String name) {
        FuncRegistry tmp = find_func_in_this(name);
        if (tmp != null) return tmp;
        else if (father_scope != null) return father_scope.find_func(name);
        else return null;
    }
    protected abstract ClassRegistry find_class_in_this(String name);
    public ClassRegistry find_class(String name) {
        ClassRegistry tmp = find_class_in_this(name);
        if (tmp != null) return tmp;
        else if (father_scope != null) return father_scope.find_class(name);
        else return null;
    }
    public abstract void insert_registry(BaseRegistry registry);

    public FuncRegistry in_function() {
        BaseScope tmp = this;
        while (tmp != null) {
            if (tmp instanceof FuncScope) return ((FuncScope)tmp).func_registry;
            else tmp = tmp.father_scope;
        }
        return null;
    }

    public boolean in_repeat() {
        BaseScope tmp = this;
        while (tmp != null) {
            if (tmp instanceof RepeatScope) return true;
            else tmp = tmp.father_scope;
        }
        return false;
    }

    public boolean in_class() {
        BaseScope tmp = this;
        while (tmp != null) {
            if (tmp instanceof ClassScope) return true;
            else tmp = tmp.father_scope;
        }
        return false;
    }
}