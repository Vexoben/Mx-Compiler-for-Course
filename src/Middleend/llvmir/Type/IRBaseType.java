package Middleend.llvmir.Type;

public abstract class IRBaseType {

    public abstract int size();

    public abstract boolean match(IRBaseType type);

    public abstract String toString();

    public boolean is_string() {
        if (!(this instanceof PointerType)) return false;
        DerivedType type = ((PointerType) this).get_pointed_type();
        if (!(type instanceof PointerType)) return false;
        type = ((PointerType) type).get_pointed_type();
        return type.match(new IntType(8));
    }
}