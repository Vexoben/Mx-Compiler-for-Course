package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.BoolType;

public class BoolConst extends BaseConst{
    boolean data;

    public BoolConst(boolean _data) {
        super(new BoolType(), "BoolConst");
        data = _data;
    }

    @Override
    public String toString() {
        return data ? "1" : "0";
    }
}
