package Middleend.llvmir.Type;

public class IntType extends DerivedType{

    int width;

    public IntType() {
        super();
        width = 32;
    }

    public IntType(int _width) {
        super();
        width = _width;
    }

    @Override
    public int size() {
        if ((width & 7) > 0) {
            return (width >> 3) + 1;
        } else {
            return width >> 3;
        }
    }

    @Override
    public boolean match(IRBaseType type) {
        return type instanceof IntType && width == ((IntType) type).width;
    }

    @Override
    public String toString() {
        return "i" + width;
    }
}
