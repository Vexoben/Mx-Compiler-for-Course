package Middleend.llvmir.Inst;

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.PointerType;
import Middleend.llvmir.Value;

import javax.management.ValueExp;

public class LoadInst extends BaseInst{

    public LoadInst(Value addr, String _name, BasicBlock _belong) {
        super(((PointerType) addr.get_type()).get_pointed_type(), _name, _belong);
        add_operand(addr);
        addr.add_user(this);
    }
}
