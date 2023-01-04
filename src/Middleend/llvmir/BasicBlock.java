package Middleend.llvmir;

import Middleend.llvmir.Inst.BaseInst;

import java.util.ArrayList;

public class BasicBlock extends Value {
    ArrayList<BaseInst> instructions = new ArrayList<>();
    Function parent_function;
    BasicBlock next_block;
    Label label;

    public BasicBlock(String _name, Function _parent_function) {
        super(null, _name);
        label = new Label(_name);
        parent_function = _parent_function;
        if(parent_function != null) {
            add_user(parent_function);
            parent_function.add_block(this);
        }
    }

    public Label get_label() {
        return label;
    }

    public ArrayList<BaseInst> get_inst() {
        return instructions;
    }

    public Function get_parent_function() {
        return parent_function;
    }

    public void push_back(BaseInst inst) {
        instructions.add(inst);
    }

    public void cut() {   // cut the edge to next block
        assert next_block != null;
        next_block = null;
    }

    public void link(BasicBlock next) {  // link an edge to next_block
        assert next != null && next_block == null;
        next_block = next;
    }

    public void insert(BasicBlock next) {   // a -> b      // a -> c -> b
        BasicBlock tmp = next_block;
        cut();
        link(next);
        next.link(tmp);
    }

}
