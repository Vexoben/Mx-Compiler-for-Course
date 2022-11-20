package Middleend.llvmir.Type;

public class ArrayType extends BaseType{
    @Override
    public int size() {
        return 0;
    }

    @Override
    public boolean match(BaseType type) {
        return false;
    }

    @Override
    public String toString() {
        return new String();
    }
}
