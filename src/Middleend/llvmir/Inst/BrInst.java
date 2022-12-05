package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.VoidType;
import Middleend.llvmir.Value;

public class BrInst extends BaseInst{

    public BrInst(BasicBlock dest, BasicBlock _belong) {
        super(new VoidType(), "branch_inst", _belong);
        add_operand(dest);
        dest.add_user(this);
    }

    public BrInst(Value condition, BasicBlock if_jump, BasicBlock else_jump, BasicBlock _belong) {
        super(new VoidType(), "branch_inst", _belong);
        add_operand(condition);
        add_operand(if_jump);
        add_operand(else_jump);
        condition.add_user(this);
        if_jump.add_user(this);
        else_jump.add_user(this);
    }

    @Override
    public String toString() {
        if (get_operands_size() == 1) {
            return "br label " + get_operand(0).get_name();
        } else {
            return "br i1 " + get_operand(0).get_name() + ", label " + get_operand(1).get_name() + ", label " + get_operand(2).get_name();
        }
    }

}
