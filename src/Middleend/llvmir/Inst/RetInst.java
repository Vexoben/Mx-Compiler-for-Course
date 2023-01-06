package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.IRVisitor;
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
    public String output() {
        if (get_operands_size() == 0) return "ret void";
        else return "ret " + get_operand(0).get_tyme();
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

}
