package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.Immediate;
import Backend.ASM.Operands.Register;
import Frontend.Tools.Error.AsmError;

import java.util.HashSet;

public class AsmStore extends AsmBaseInst{

    public int size;

    public AsmStore(Register rs1, Register rd, Immediate offset, int _size, ASMBlock parent) {
        super(rd, rs1, null, offset, parent);
        immediate = offset;
        size = _size;
    }

    @Override
    public void accept(InstVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        String ret;
        if (size == 1) ret = "sb";
        else if (size == 2) ret = "sh";
        else if (size == 4) ret = "sw";
        else throw new AsmError("AsmLoad.java: load size = " + size);
        ret = ret + " " + rs1.toString() + ", " + immediate.toString() + "(" + rd.toString() + ")";
        return ret;
    }

    @Override
    public boolean is_move_instruction() {
        return false;
    }

    @Override
    public HashSet<Register> get_uses() {
        HashSet<Register> ret = new HashSet<>();
        ret.add((Register) rd);
        ret.add((Register) rs1);
        return ret;
    }

    @Override
    public HashSet<Register> get_defs() {
        return new HashSet<>();
    }
}
