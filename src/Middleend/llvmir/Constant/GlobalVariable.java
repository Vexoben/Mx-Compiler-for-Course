package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.DerivedType;

public class GlobalVariable extends GlobalValue{

    public GlobalVariable(String _name, DerivedType _type) {
        super(_name, _type);
    }
}
