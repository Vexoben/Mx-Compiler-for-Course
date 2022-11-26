package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.BoolType;

public class BoolConst extends BaseConst{
    boolean data;

    public BoolConst(boolean _data) {
        super(new BoolType(), "BoolConst");
        data = _data;
    }
}
