package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.IRVisitor;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.User;

public abstract class BaseInst extends User {
    BasicBlock belong;

    BaseInst(IRBaseType _type, String _name, BasicBlock _belong) {
        super(_type, _name);
        belong = _belong;
    }

    public abstract String output();

    public abstract void accept(IRVisitor visitor);

}