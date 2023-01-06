package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Function;
import Middleend.llvmir.IRVisitor;
import Middleend.llvmir.Type.IRFuncType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class FuncCallInst extends BaseInst{

    Function func;

    public FuncCallInst(Function _func, BasicBlock _belong, ArrayList<Value> args) {
        super(((IRFuncType)_func.get_type()).get_ret_type(), "function_call_inst", _belong);
        func = _func;
        add_operand(func);
        args.forEach(i -> {
            add_operand(i);
            i.add_user(this);
        });
    }

    @Override
    public String output() {
        String ans = "call " + func.get_ret_type().toString() + " " + func.get_name() + "(";
        for (int i = 1; i < get_operands_size(); ++i) { // operand(0) is func
            if (i > 1) ans += ", ";
            ans += get_operand(i).get_tyme();
        }
        ans += ")";
        return ans;
    }

    public Function get_func() {
        return func;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
