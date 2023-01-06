package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.Register;

public class AsmBr extends AsmBaseInst{
    String op;
    ASMBlock dest;

    public AsmBr(String _op, Register rs1, Register rs2, ASMBlock _dest, ASMBlock parent) {
        super(null, rs1, rs2, null, parent);
        op = _op;
        dest = _dest;
    }

    @Override
    public String toString() {
        return op + " " + rs1.toString() + ", " + rs2.toString() + ", " + dest.toString();
    }
}
