package Middleend.llvmir.ValueAndUser;

import Backend.ASM.Operands.Register;
import Middleend.llvmir.Constant.BaseConst;
import Middleend.llvmir.Constant.NullConst;
import Middleend.llvmir.Constant.StringConst;
import Middleend.llvmir.Hierarchy.IRFunction;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Type.PointerType;

import java.util.ArrayList;
import java.util.HashMap;

public class Value {

    public IRBaseType type;
    public ArrayList<User> users = new ArrayList<User>();
    public boolean has_name = false;
    public String ori_name;
    public String name;
    public Value mem_pos;

    // for asm
    public Register reg_asm;

    public Value(IRBaseType _type) {
        type = _type;
        has_name = false;
    }

    public Value(IRBaseType _type, String _name) {
        type = _type;
        has_name = true;
        if (_name.equals("")) ori_name = "tmp";
        else ori_name = _name;
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

    public String get_tyme() { // type & name
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
        if (this instanceof toRegValue) return _name;
        if (_name.equals("null")) return "null";
        if (_name.equals("")) _name = "r";
        if (this instanceof IRFunction) _name = "@" + _name;
        else if (this instanceof BaseConst && !(this instanceof StringConst)) return _name;
        else if (this instanceof GlobalValue) _name = "@" + _name;
        else if (!(this instanceof Label))_name = "%" + _name;
        if (!name_table.containsKey(_name)) {
            name_table.put(_name, 1);
            return _name;
        } else {
            int cnt = name_table.get(_name);
            name_table.replace(_name, cnt + 1);
            return _name + (cnt + 1);
        }
    }

    // to printer
    public String global_variable_declare() {
        return name + " = dso_local global " + ((PointerType) get_type()).get_pointed_type().toString() + " zeroinitializer\n";
    }
}
