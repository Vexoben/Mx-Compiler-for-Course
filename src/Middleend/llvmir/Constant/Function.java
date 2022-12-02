package Middleend.llvmir.Constant;

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.FuncType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class Function extends GlobalValue{

    ArrayList<BasicBlock> blocks = new ArrayList<>();
    ArrayList<Value> para = new ArrayList<>();

    BasicBlock entry_block, exit_block;

    public Function(String _name, FuncType _type) {
        super(_name, _type);
        entry_block = new BasicBlock(_name + "entry", this);
        exit_block = new BasicBlock(_name + "exit", this);
    }

    public void add_block(BasicBlock block) {
        blocks.add(block);
    }
}
