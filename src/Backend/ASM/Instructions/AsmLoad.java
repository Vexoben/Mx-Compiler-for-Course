package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.Immediate;
import Backend.ASM.Operands.Register;
import Frontend.Tools.Error.AsmError;

public class AsmLoad extends AsmBaseInst{

    public int size;

    public AsmLoad(Register rd, Register rs1, Immediate offset, int _size, ASMBlock parent) {
        super(rd, rs1, null, offset, parent);
        size = _size;
    }

    @Override
    public String toString() {
        String ret;
        if (size == 1) ret = "lb";
        else if (size == 2) ret = "lh";
        else if (size == 4) ret = "lw";
        else throw new AsmError("AsmLoad.java: load size = " + size);
        ret = ret + " " + rd.toString() + ", " + immediate.toString() + "(" + rs1.toString() + ")";
        return ret;
    }
}
