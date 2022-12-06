package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.Type.PointerType;
import Middleend.llvmir.Value;

public class LoadInst extends BaseInst{

    public LoadInst(Value addr, String _name, BasicBlock _belong) {
        super(((PointerType) addr.get_type()).get_pointed_type(), _name, _belong);
        add_operand(addr);
        addr.add_user(this);
    }

    @Override
    public String output() {
        return "load " + get_type().toString() + ", " + new PointerType((DerivedType) get_type()).toString() + " " + get_operand(0).get_name();
    }

}
