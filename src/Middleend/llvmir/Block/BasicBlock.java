package Middleend.llvmir.Block;

import Middleend.llvmir.Constant.Function;
import Middleend.llvmir.Inst.BaseInst;
import Middleend.llvmir.Type.LabelType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class BasicBlock extends Value {
    LabelType label;
    ArrayList<BaseInst> instructions;
    Function parent_function;

    public BasicBlock(String _name, Function _parent_function) {
        super(new LabelType(_name), _name);
        parent_function = _parent_function;
        if(parent_function != null) {
            add_user(parent_function);
            parent_function.add_block(this);
        }
    }

    public Function get_parent_function() {
        return parent_function;
    }

    public void push_back(BaseInst inst) {
        instructions.add(inst);
    }

}
