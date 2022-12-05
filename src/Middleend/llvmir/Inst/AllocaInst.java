package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.Type.PointerType;

public class AllocaInst extends BaseInst{

    int type_size, length;
    DerivedType pointed_type;

    public AllocaInst(DerivedType _type, String _name, BasicBlock _belong) {
        super(new PointerType(_type), _name, _belong);
        pointed_type = (DerivedType) _type;
        type_size = _type.size();
    }

    public DerivedType get_pointed_type() {
        return pointed_type;
    }

    @Override
    public String toString() {
        return "alloca " + pointed_type.toString();
    }

}
