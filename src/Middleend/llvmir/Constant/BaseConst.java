package Middleend.llvmir.Constant;

import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.User;

public abstract class BaseConst extends User {
    public BaseConst(IRBaseType _type, String _name) {
        super(_type, _name);
    }
}
