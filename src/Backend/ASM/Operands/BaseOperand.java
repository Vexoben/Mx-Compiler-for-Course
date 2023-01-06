package Backend.ASM.Operands;

public class BaseOperand {
    public String identifier;

    public BaseOperand(String _identifier) {
        identifier = _identifier;
    }

    @Override
    public String toString() {
        return identifier;
    }
}
