package Middleend.llvmir.Inst;

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.BaseType;
import Middleend.llvmir.User;

public abstract class BaseInst extends User {
    BasicBlock belong;

    BaseInst(BaseType _type, String _name, BasicBlock _belong) {
        super(_type, _name);
        belong = _belong;
    }
}