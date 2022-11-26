package Middleend.llvmir.Type;

public class VoidType extends BaseType{
    public VoidType() {

    }

    @Override
    public boolean match(BaseType type) {
        return type instanceof VoidType;
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public String toString() {
        return "void";
    }
}
