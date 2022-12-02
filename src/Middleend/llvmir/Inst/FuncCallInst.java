package Middleend.llvmir.Inst;

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.BaseType;
import Middleend.llvmir.Type.FuncType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class FuncCallInst extends BaseInst{
    public FuncCallInst(FuncType _type, String _name, BasicBlock _belong, ArrayList<Value> args) {
        super(_type.get_ret_type(), _name, _belong);
        args.forEach(i -> {
            add_operand(i);
            i.add_user(this);
        });
    }
}
