package Middleend.llvmir.Constant;

import Middleend.llvmir.ValueAndUser.GlobalValue;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.Type.IRBaseType;

public abstract class BaseConst extends GlobalValue {
    public BaseConst(IRBaseType _type, String _name) {
        super(_name, (DerivedType) _type);
    }
}
