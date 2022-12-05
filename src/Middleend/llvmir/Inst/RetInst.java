package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.VoidType;
import Middleend.llvmir.Value;

public class RetInst extends BaseInst{
    public RetInst(Value ret_value, BasicBlock _belong) {
        super(new VoidType(), "return", _belong);
        if (ret_value != null) {
            add_operand(ret_value);
            ret_value.add_user(this);
        }
    }

    @Override
    public String toString() {

    }

}
