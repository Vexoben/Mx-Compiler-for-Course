package Middleend.llvmir.Constant;

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.FuncType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class Function extends GlobalValue{

    ArrayList<BasicBlock> blocks = new ArrayList<>();
    ArrayList<Value> para = new ArrayList<>();

    public Function(String _name, FuncType _type) {
        super(_name, _type);
    }
}
