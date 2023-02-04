package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.BaseOperand;
import Backend.ASM.Operands.Immediate;
import Backend.ASM.Operands.Register;
import Middleend.llvmir.Inst.RetInst;

import java.util.HashSet;

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

    abstract public boolean is_move_instruction();

    public void replace_use(Register older, Register newer) {
        if (rs1 == older) rs1 = newer;
        if (rs2 == older) rs2 = newer;
    }

    public void replace_def(Register older, Register newer) {
        if (rd == older) rd = newer;
    }

    public HashSet<Register> get_uses() {
        HashSet<Register> ret = new HashSet<>();
        if (rs1 != null && rs1 instanceof Register) ret.add((Register) rs1);
        if (rs2 != null && rs2 instanceof Register) ret.add((Register) rs2);
        return ret;
    }

    public HashSet<Register> get_defs() {
        HashSet<Register> ret = new HashSet<>();
        if (rd != null) ret.add((Register) rd);
        return ret;
    }
}
