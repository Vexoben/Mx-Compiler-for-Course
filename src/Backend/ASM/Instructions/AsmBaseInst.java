package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.BaseOperand;
import Backend.ASM.Operands.Immediate;

public abstract class AsmBaseInst {
    public ASMBlock parent_block;
    public BaseOperand rd, rs1, rs2;
    public Immediate immediate;

    public AsmBaseInst(BaseOperand _rd, BaseOperand _rs1, BaseOperand _rs2, Immediate _imm, ASMBlock _parent_block) {
        parent_block = _parent_block;
        rd = _rd; rs1 = _rs1; rs2 = _rs2; immediate = _imm;
        if (parent_block != null) {
            parent_block.push_back(this);
        }
    }

    public abstract void accept(InstVisitor visitor);

    abstract public String toString();
}
