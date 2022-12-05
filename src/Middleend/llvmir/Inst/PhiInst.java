package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Value;

public class PhiInst extends BaseInst{
    public PhiInst(IRBaseType _type, String _name, BasicBlock _belong, Value... values) {
        super(_type, _name, _belong);
        for (Value v : values) {
            v.add_user(this);
            add_operand(v);
        }
    }

    @Override
    public String toString() {

    }

}
