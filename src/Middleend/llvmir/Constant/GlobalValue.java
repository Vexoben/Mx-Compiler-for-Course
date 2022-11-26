package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.DerivedType;

public class GlobalValue extends BaseConst{
    String name;
    DerivedType type;

    public GlobalValue(String _name, DerivedType _type) {
        super(_type, _name);
    }
}
