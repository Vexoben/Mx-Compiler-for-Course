package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class BitCastInst extends BaseInst{
    public BitCastInst(Value value, DerivedType target_type, BasicBlock _belong) {
        super(target_type, "bit_cast_inst",_belong);
        add_operand(value);
    }

    public BitCastInst(Value value, DerivedType target_type, String _name, BasicBlock _belong) {
        super(target_type, _name ,_belong);
        add_operand(value);
    }

    @Override
    public String output() {
        return "bitcast " + get_operand(0).get_type().toString() + " " + get_operand(0).get_name() + " to " + type.toString();
    }

}
