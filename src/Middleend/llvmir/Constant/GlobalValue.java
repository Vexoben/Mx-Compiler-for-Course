package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.DerivedType;

public class GlobalValue extends BaseConst{
    String name;

    public GlobalValue(String _name, DerivedType _type) {
        super(_type, _name);
    }
}
