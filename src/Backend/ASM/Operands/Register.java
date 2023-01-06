package Backend.ASM.Operands;

public class Register extends BaseOperand{
    public int color;
    public Immediate offset;

    public Register(String _identifier) {
        super(_identifier);
        offset = new Immediate(0);
    }
}
