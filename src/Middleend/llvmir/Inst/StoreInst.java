package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.VoidType;
import Middleend.llvmir.Value;

public class StoreInst extends BaseInst{
    public StoreInst(Value data, Value addr, BasicBlock _belong) {
        super(new VoidType(), "store", _belong);
        add_operand(data);
        add_operand(addr);
        data.add_user(this);
        addr.add_user(this);
    }
}
