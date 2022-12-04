package Middleend.llvmir.Constant;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.IRFuncType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class Function extends GlobalValue{

    ArrayList<BasicBlock> blocks = new ArrayList<>();

    public BasicBlock entry_block, exit_block;
    public Value ret_value_ptr;

    public Function(String _name, IRFuncType _type) {
        super(_name, _type);
        entry_block = new BasicBlock(_name + "entry", this);
        exit_block = new BasicBlock(_name + "exit", this);
        entry_block.link(exit_block);
    }

    public void add_block(BasicBlock block) {
        blocks.add(block);
    }

    public ArrayList<BasicBlock> get_blocks() {
        return blocks;
    }

    /* public void add_para(Value value) {
        para.add(value);
    } */
}
