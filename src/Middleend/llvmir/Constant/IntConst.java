package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.IntType;

public class IntConst extends BaseConst{
    int data;

    public IntConst(int _value) {
        super(new IntType(), "ConstInt");
        data = _value;
    }
}
