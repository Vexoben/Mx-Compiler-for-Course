package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.IntType;

public class IntConst extends BaseConst{
    int data;

    public IntConst(int _value) {
        super(new IntType(), String.valueOf(_value));
        data = _value;
    }

    @Override
    public String toString() {
        return String.valueOf(data);
    }
}
