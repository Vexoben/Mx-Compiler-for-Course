package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.ASMFunction;
import Backend.ASM.Operands.Register;

public class AsmCall extends AsmBaseInst{
    ASMFunction func;

    public AsmCall(ASMFunction _func, ASMBlock parent) {
        super(null, null, null, null, parent);
        func = _func;
    }

    @Override
    public String toString() {
        return "call " + func.name;
    }
}
