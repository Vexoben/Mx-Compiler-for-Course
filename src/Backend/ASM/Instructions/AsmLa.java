package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.Register;

public class AsmLa extends AsmBaseInst{
    String symbol;

    public AsmLa(Register rd, String _symbol, ASMBlock parent) {
        super(rd, null, null, null, parent);
        symbol = _symbol;
    }

    @Override
    public String toString() {
        return "la " + rd.toString() + ", " + symbol;
    }
}
