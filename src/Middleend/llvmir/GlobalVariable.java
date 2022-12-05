package Middleend.llvmir;

import Middleend.llvmir.Type.DerivedType;

public class GlobalVariable extends Value {

    public GlobalVariable(String _name, DerivedType _type) {
        super(_type, _name);
    }
}
