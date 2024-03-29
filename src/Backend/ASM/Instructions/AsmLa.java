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
    public void accept(InstVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "la " + rd.toString() + ", " + symbol;
    }

    @Override
    public boolean is_move_instruction() {
        return false;
    }
}
