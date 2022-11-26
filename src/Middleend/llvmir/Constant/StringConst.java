package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.ArrayType;
import Middleend.llvmir.Type.IntType;
import Middleend.llvmir.Type.PointerType;

public class StringConst extends BaseConst{
    String data;

    public StringConst(String _data) {
        super(new PointerType(new ArrayType(new IntType(8), _data.length() + 1)), "StringConst");
        data = _data;
    }
}
