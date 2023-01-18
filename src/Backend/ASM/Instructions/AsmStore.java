package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.Immediate;
import Backend.ASM.Operands.Register;
import Frontend.Tools.Error.AsmError;

public class AsmStore extends AsmBaseInst{

    public int size;

    public AsmStore(Register rs1, Register rd, Immediate offset, int _size, ASMBlock parent) {
        super(rd, rs1, null, offset, parent);
        rd.offset = offset;
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
        ret = ret + " " + rs1.toString() + ", " + ((Register) rd).offset.toString() + "(" + rd.toString() + ")";
        return ret;
    }
}
