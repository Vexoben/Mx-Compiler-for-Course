package Middleend.llvmir.Inst;


// <result> = trunc <ty> <value> to <ty2>
// The ‘trunc’ instruction truncates its operand to the type ty2.
// %X = trunc i32 257 to i8

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.BaseType;
import Middleend.llvmir.Value;

public class TruncInst extends BaseInst{
    public TruncInst(Value data, BaseType trunc_to, String _name, BasicBlock _belong) {
        super(trunc_to, _name, _belong);
        add_operand(data);
        data.add_user(this);
    }
}
