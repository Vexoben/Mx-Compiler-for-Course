package Middleend.llvmir.Block;

import Middleend.llvmir.Constant.Function;
import Middleend.llvmir.Inst.BaseInst;
import Middleend.llvmir.Type.LabelType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class BasicBlock extends Value {
    public ArrayList<BaseInst> instructions;
    Function parent_function;

    public BasicBlock(String _name, Function _parent_function) {
        super(new LabelType(), _name);
        parent_function = _parent_function;
        if(parent_function != null) add_user(parent_function);
    }

}
