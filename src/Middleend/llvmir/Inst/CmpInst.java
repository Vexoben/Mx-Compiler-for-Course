package Middleend.llvmir.Inst;

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.BaseType;
import Middleend.llvmir.Type.BoolType;
import Middleend.llvmir.Value;

public class CmpInst extends BaseInst{

    String operator;

    public CmpInst(BaseType _type, String _name, String op, Value v1, Value v2, BasicBlock _belong) {
        super(new BoolType(), _name, _belong);
        v1.add_user(this);
        v2.add_user(this);
        add_operand(v1);
        add_operand(v2);
        operator = op;
    }

}
