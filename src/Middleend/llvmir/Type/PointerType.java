package Middleend.llvmir.Type;

import java.awt.*;

public class PointerType extends DerivedType{

    static int POINTER_SIZE = 8;

    DerivedType pointed_type;
    int level;

    public PointerType(DerivedType _pointed_type) {
        pointed_type = _pointed_type;
        if (_pointed_type instanceof PointerType) {
            level = ((PointerType) _pointed_type).level + 1;
        } else {
            level = 1;
        }
    }

    public PointerType(DerivedType _pointed_type, int _level) {
        pointed_type = _pointed_type;
        if (_pointed_type instanceof PointerType) {
            level = ((PointerType) _pointed_type).level + 1;
        } else {
            level = 1;
        }
        for (int i = 1; i < _level; ++i) {
            pointed_type = new PointerType(pointed_type);
            level++;
        }
    }

    public DerivedType get_pointed_type() {
        return pointed_type;
    }

    @Override
    public int size() {
        return POINTER_SIZE;
    }

    @Override
    public boolean match(IRBaseType type) {
        if (!(type instanceof PointerType)) return false;
        else {
            if (((PointerType) type).level != level) return false;
            return pointed_type.match(((PointerType) type).pointed_type);
        }
    }

    @Override
    public String toString() {
        return pointed_type.toString() + '*';
    }

}
