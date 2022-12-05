package Middleend.llvmir.Inst;


// <result> = trunc <ty> <value> to <ty2>
// The ‘trunc’ instruction truncates its operand to the type ty2.
// %X = trunc i32 257 to i8

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Value;

public class TruncInst extends BaseInst{
    public TruncInst(Value data, IRBaseType trunc_to, String _name, BasicBlock _belong) {
        super(trunc_to, _name, _belong);
        add_operand(data);
        data.add_user(this);
    }

    @Override
    public String toString() {   // unused
        return  null;
    }
}
