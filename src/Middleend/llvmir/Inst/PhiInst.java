package Middleend.llvmir.Inst;

import Middleend.llvmir.Hierarchy.BasicBlock;
import Middleend.llvmir.IRVisitor;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.ValueAndUser.Value;

public class PhiInst extends BaseInst{
    public PhiInst(IRBaseType _type, String _name, BasicBlock _belong, Value... values) {
        super(_type, _name, _belong);
        for (Value v : values) {
            v.add_user(this);
            add_operand(v);
        }
    }

    @Override
    public String output() { // unused
        String ret = "phi " + get_type().toString() + " ";
        for (int i = 0; i < get_operands_size(); i += 2) {
            if (i > 0) ret = ret + ", ";
            ret = ret + "[" + get_operand(i).get_name() + ", " + get_operand(i + 1).get_name() + "]";
        }
        return ret;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

}
