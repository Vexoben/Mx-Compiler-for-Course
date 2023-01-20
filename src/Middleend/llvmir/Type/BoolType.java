package Middleend.llvmir.Type;

public class BoolType extends DerivedType{
    public BoolType() {

    }

    @Override
    public int size() {
        return 4;
    }

    @Override
    public boolean match(IRBaseType type) {
        return type instanceof BoolType;
    }


    @Override
    public String toString() {
        return "i1";
    }
}
