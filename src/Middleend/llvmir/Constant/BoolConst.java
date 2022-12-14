package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.BoolType;

public class BoolConst extends BaseConst{
    public boolean data;

    public BoolConst(boolean _data) {
        super(new BoolType(), _data ? "1" : "0");
        data = _data;
    }

    @Override
    public String toString() {
        return data ? "1" : "0";
    }
}
