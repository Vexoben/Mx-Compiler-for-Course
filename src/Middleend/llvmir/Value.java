package Middleend.llvmir;

import Middleend.llvmir.Inst.BaseInst;
import Middleend.llvmir.Type.BaseType;
import java.util.ArrayList;
import java.util.HashMap;

public class Value {

    BaseType type;
    ArrayList<User> users = new ArrayList<User>();
    boolean has_name = false;
    String name;

    public Value(BaseType _type) {
        type = _type;
        has_name = false;
    }

    public Value(BaseType _type, String _name) {
        type = _type;
        has_name = true;
        name = rename(_name);
    }

    public boolean has_name() {
        return has_name;
    }

    public void add_user(User user) {
        users.add(user);
    }

    public BaseType get_type() {
        return type;
    }

    // renaming
    static HashMap<String, Integer> name_table;

    private String rename(String _name) {
        if (!name_table.containsKey(_name)) {
            name_table.put(_name, 1);
            return _name + "1";
        } else {
            int cnt = name_table.get(_name);
            name_table.replace(_name, cnt + 1);
            return _name + (cnt + 1);
        }
    }
}
