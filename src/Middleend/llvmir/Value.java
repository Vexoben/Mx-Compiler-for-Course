package Middleend.llvmir;

import Middleend.llvmir.Constant.BaseConst;
import Middleend.llvmir.Constant.NullConst;
import Middleend.llvmir.Constant.StringConst;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Type.PointerType;

import java.util.ArrayList;
import java.util.HashMap;

public class Value {

    protected IRBaseType type;
    protected ArrayList<User> users = new ArrayList<User>();
    protected boolean has_name = false;
    protected String ori_name, name;
    protected Value mem_pos;

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

    public String get_tyme() {
//        if (this instanceof BaseConst) {
//            return toString();
//        }
        if (this instanceof NullConst) {
            return "null";
        }
        return get_type().toString() + " " + get_name();
    }

    public String get_origin_name() {
        return ori_name;
    }

    public Value get_mem_pos() {
        return mem_pos;
    }

    // renaming
    static HashMap<String, Integer> name_table = new HashMap<>();

    private String rename(String _name) {
        if (_name.equals("")) _name = "r";
        if (this instanceof Function) _name = "@" + _name;
        else if (this instanceof BaseConst && !(this instanceof StringConst)) return _name;
        else if (this instanceof GlobalValue) _name = "@" + _name;
        else if (!(this instanceof Label))_name = "%" + _name;
        if (!name_table.containsKey(_name)) {
//            if (_name.equals("%")) {
//                name_table.put(_name, 0);
//                return _name + "0";
//            } else {
                name_table.put(_name, 1);
                return _name;
//            }
        } else {
            int cnt = name_table.get(_name);
            name_table.replace(_name, cnt + 1);
            return _name + (cnt + 1);
        }
    }

    // to printer
    public String global_variable_declare() {
        String ans = name + " = dso_local global " + ((PointerType) get_type()).get_pointed_type().toString() + " zeroinitializer\n";
        return ans;
    }
}
