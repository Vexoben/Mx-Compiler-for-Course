package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;

public class AsmJump extends AsmBaseInst{

    public ASMBlock dest;

    public AsmJump(ASMBlock _dest, ASMBlock parent) {
        super(null, null, null, null, parent);
        dest = _dest;
    }

    @Override
    public void accept(InstVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "j " + dest.toString();
    }

    @Override
    public boolean is_move_instruction() {
        return false;
    }
}
