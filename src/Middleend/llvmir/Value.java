package Middleend.llvmir;

import Middleend.llvmir.Type.IRBaseType;
import java.util.ArrayList;
import java.util.HashMap;

public class Value {

    IRBaseType type;
    ArrayList<User> users = new ArrayList<User>();
    boolean has_name = false;
    String ori_name, name;
    Value mem_pos;

    public Value(IRBaseType _type) {
        type = _type;
        has_name = false;
    }

    public Value(IRBaseType _type, String _name) {
        type = _type;
        has_name = true;
        ori_name = _name;
        name = rename(_name);
    }

    public boolean has_name() {
        return has_name;
    }

    public void add_user(User user) {
        users.add(user);
    }

    public IRBaseType get_type() {
        return type;
    }

    public String get_name() {
        return name;
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
