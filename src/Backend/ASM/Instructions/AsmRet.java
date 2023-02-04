package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;

public class AsmRet extends AsmBaseInst{

    public AsmRet(ASMBlock parent) {
        super(null, null, null, null, parent);
    }

    @Override
    public void accept(InstVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "ret";
    }

    @Override
    public boolean is_move_instruction() {
        return false;
    }
}
