package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Constant.Function;
import Middleend.llvmir.Type.IRFuncType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class FuncCallInst extends BaseInst{
    public FuncCallInst(Function func, BasicBlock _belong, ArrayList<Value> args) {
        super(((IRFuncType)func.get_type()).get_ret_type(), "function_call_inst", _belong);
        add_operand(func);
        args.forEach(i -> {
            add_operand(i);
            i.add_user(this);
        });
    }

    @Override
    public String toString() {

    }

}
