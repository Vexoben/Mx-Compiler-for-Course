package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.ArrayType;
import Middleend.llvmir.Type.IntType;
import Middleend.llvmir.Type.PointerType;

public class StringConst extends BaseConst{
    String data;

    public StringConst(String _data, int length) {
        super(new PointerType(new ArrayType(new IntType(8), length)), "const_str");
        data = _data;
    }

    @Override
    public String toString() {
        return data;
    }
}
