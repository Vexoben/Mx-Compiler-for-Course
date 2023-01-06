package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.Immediate;
import Backend.ASM.Operands.Register;

public class AsmLui extends AsmBaseInst{

    public AsmLui(Register rd, Immediate imm, ASMBlock parent) {
        super(rd, null, null, imm, parent);
    }

    @Override
    public String toString() {
        return "lui " + rd.toString() + ", " + immediate.toString();
    }
}
