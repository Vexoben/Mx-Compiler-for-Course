package Middleend.llvmir.Inst;

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.BaseType;
import Middleend.llvmir.Value;

public class PhiInst extends BaseInst{
    public PhiInst(BaseType _type, String _name, BasicBlock _belong, Value... values) {
        super(_type, _name, _belong);
        for (Value v : values) {
            v.add_user(this);
            add_operand(v);
        }
    }
}
