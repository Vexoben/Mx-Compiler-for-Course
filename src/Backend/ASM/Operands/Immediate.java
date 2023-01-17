package Backend.ASM.Operands;

public class Immediate extends BaseOperand{
    public int data;

    public Immediate(int _data) {
        super(String.valueOf(_data));
        data = _data;
    }

    @Override
    public String toString() {
        return String.valueOf(data);
    }
}
