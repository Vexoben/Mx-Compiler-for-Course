package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;

public class AsmRet extends AsmBaseInst{

    public AsmRet(ASMBlock parent) {
        super(null, null, null, null, parent);
    }

    @Override
    public String toString() {
        return "ret";
    }
}
