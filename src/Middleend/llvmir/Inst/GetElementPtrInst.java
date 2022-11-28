package Middleend.llvmir.Inst;

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.ArrayType;
import Middleend.llvmir.Value;

public class GetElementPtrInst extends BaseInst{
    public GetElementPtrInst(ArrayType array, Value index, String _name, BasicBlock _belong) {
        super();
    }
}
