package Middleend.llvmir.Type;

public class ArrayType extends DerivedType {

    int length;
    IRBaseType array_type;

    public ArrayType(IRBaseType _array_type, int _length) {
        array_type = _array_type;
        length = _length;
    }

    public IRBaseType get_array_type() {
        return array_type;
    }

    @Override
    public int size() {
        return array_type.size() * length;
    }

    @Override
    public boolean match(IRBaseType type) {
        if (!(type instanceof ArrayType)) return false;
        return length == ((ArrayType) type).length && array_type.match(((ArrayType) type).array_type);
    }

    @Override
    public String toString() {
        return "[" + length + " x " + array_type.toString() + "]";
    }
}
