package Middleend.llvmir.Inst;

import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Type.BaseType;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.Type.PointerType;

public class AllocaInst extends BaseInst{

    DerivedType pointed_type;

    public AllocaInst(BaseType _type, String _name, int size, BasicBlock _belong) {
        super(new PointerType(_type), _name, _belong);
        assert _type instanceof DerivedType;
        pointed_type = (DerivedType) _type;
    }

}
