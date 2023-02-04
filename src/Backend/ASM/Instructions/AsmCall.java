package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.ASMFunction;
import Backend.ASM.ASMModule;
import Backend.ASM.Operands.Register;

import java.util.HashSet;

public class AsmCall extends AsmBaseInst{
    ASMFunction func;

    public AsmCall(ASMFunction _func, ASMBlock parent) {
        super(null, null, null, null, parent);
        func = _func;
    }

    @Override
    public void accept(InstVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "call " + func.name;
    }

    @Override
    public boolean is_move_instruction() {
        return false;
    }

    @Override
    public HashSet<Register> get_uses() {
        HashSet<Register> ret = new HashSet<>();
        for (int i = 0; i < 8 && i < func.arguments.size(); ++i) {
            ret.add(ASMModule.get_reg("a" + i));
        }
        return ret;
    }

    @Override
    public HashSet<Register> get_defs() {
        return new HashSet<>(ASMModule.caller_saved_reg);
    }

}
