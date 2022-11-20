package Middleend.llvmir.Type;

public abstract class BaseType {

    public abstract int size();

    public abstract boolean match(BaseType type);

    public abstract String toString();
}