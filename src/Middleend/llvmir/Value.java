package Middleend.llvmir;

import Middleend.llvmir.Inst.BaseInst;
import Middleend.llvmir.Type.BaseType;
import java.util.ArrayList;

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
        name = _name;
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
}
