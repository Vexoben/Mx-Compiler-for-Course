package Middleend.llvmir.Type;

public class LabelType extends IRBaseType {

    String label;

    public LabelType(String _label) {
        label = _label;
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public boolean match(IRBaseType type) {
        return false;
    }

    @Override
    public String toString() {
        return label;
    }

}