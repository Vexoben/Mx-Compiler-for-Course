package Middleend.llvmir.Inst;

import Middleend.llvmir.Hierarchy.BasicBlock;
import Middleend.llvmir.IRVisitor;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.ValueAndUser.Value;

public class BitCastInst extends BaseInst{
    public BitCastInst(Value value, DerivedType target_type, BasicBlock _belong) {
        super(target_type, "bit_cast_inst",_belong);
        add_operand(value);
        value.add_user(this);
    }

    public BitCastInst(Value value, DerivedType target_type, String _name, BasicBlock _belong) {
        super(target_type, _name ,_belong);
        add_operand(value);
        value.add_user(this);
    }

    @Override
    public String output() {
        return "bitcast " + get_operand(0).get_type().toString() + " " + get_operand(0).get_name() + " to " + type.toString();
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

}
