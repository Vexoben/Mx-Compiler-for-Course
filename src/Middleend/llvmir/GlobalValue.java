package Middleend.llvmir;

import Middleend.llvmir.Type.DerivedType;

public class GlobalValue extends Value {

    public String const_string_data;

    public GlobalValue(String _name, DerivedType _type) {
        super(_type, _name);
    }
}
