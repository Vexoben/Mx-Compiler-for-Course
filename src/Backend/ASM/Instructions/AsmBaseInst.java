package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.Immediate;
import Backend.ASM.Operands.Register;

public abstract class AsmBaseInst {
    ASMBlock parent_block;
    Register rd, rs1, rs2;
    Immediate immediate;

    public AsmBaseInst(Register _rd, Register _rs1, Register _rs2, Immediate _imm, ASMBlock _parent_block) {
        parent_block = _parent_block;
        rd = _rd; rs1 = _rs1; rs2 = _rs2; immediate = _imm;
        if (parent_block != null) {
            parent_block.add_inst(this);
        }
    }

    abstract public String toString();
}
