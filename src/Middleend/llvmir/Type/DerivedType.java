package Middleend.llvmir.Type;

public abstract class DerivedType extends IRBaseType {
    public boolean is_class_ptr() {
        return this instanceof PointerType && ((PointerType) this).get_pointed_type() instanceof StructType;
    }
}
