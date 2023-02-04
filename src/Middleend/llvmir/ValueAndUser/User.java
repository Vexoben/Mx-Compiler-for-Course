package Middleend.llvmir.ValueAndUser;

import Middleend.llvmir.Type.IRBaseType;

import java.util.ArrayList;

public class User extends Value{
    public ArrayList<Value> operands = new ArrayList<>();

    public User(IRBaseType _type, String _name) {
        super(_type, _name);
    }

    public void add_operand(Value value) {
        value.add_user(this);
        operands.add(value);
    }

    public Value get_operand(int index) {
        return operands.get(index);
    }

    public int get_operands_size() {
        return operands.size();
    }

    public void replace_operand(int id, Value newer) {
        operands.set(id, newer);
    }
}
