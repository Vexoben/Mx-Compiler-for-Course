package Middleend.llvmir.Inst;

// <result> = zext <ty> <value> to <ty2>
// The ‘zext’ instruction zero extends its operand to type ty2.
// %X = zext i32 257 to i64

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Value;

public class ZextInst extends BaseInst{
    public ZextInst(Value data, IRBaseType zext_to, String _name, BasicBlock _belong) {
        super(zext_to, _name, _belong);
        add_operand(data);
        data.add_user(this);
    }

    @Override
    public String toString() {   // unused
        return null;
    }
}