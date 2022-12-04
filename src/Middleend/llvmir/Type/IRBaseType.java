package Middleend.llvmir.Type;

public abstract class IRBaseType {

    public abstract int size();

    public abstract boolean match(IRBaseType type);

    public abstract String toString();
}