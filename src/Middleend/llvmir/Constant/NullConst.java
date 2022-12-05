package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.PointerType;

public class NullConst extends BaseConst{
    public NullConst() {
        super(new PointerType(null), "null");
    }

    @Override
    public String toString() {
        return "null";
    }
}
