package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.Register;

public class AsmMv extends AsmBaseInst{

    public AsmMv(Register rd, Register rs1, ASMBlock parent) {
        super(rd, rs1, null, null, parent);
    }

    @Override
    public void accept(InstVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "mv " + rd.toString() + ", " + rs1.toString();
    }

    @Override
    public boolean is_move_instruction() {
        return true;
    }
}
