package Middleend.llvmir.Inst;

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.BaseType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class FuncCallInst extends BaseInst{
    FuncCallInst(BaseType _type, String _name, BasicBlock _belong, ArrayList<Value> args) {
        super(_type, _name, _belong);
    }
}
