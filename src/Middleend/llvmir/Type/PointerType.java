package Middleend.llvmir.Type;

public class PointerType extends DerivedType{

    static int POINTER_SIZE = 8;

    BaseType pointed_type;
    int level;

    public PointerType(BaseType _pointed_type) {
        pointed_type = _pointed_type;
        if (_pointed_type instanceof PointerType) {
            level = ((PointerType) _pointed_type).level + 1;
        } else {
            level = 1;
        }
    }

    public BaseType get_pointed_type() {
        return pointed_type;
    }

    @Override
    public int size() {
        return POINTER_SIZE;
    }

    @Override
    public boolean match(BaseType type) {
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
