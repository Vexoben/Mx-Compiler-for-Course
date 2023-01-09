package Backend.ASM;

import Backend.ASM.Operands.Immediate;
import Backend.ASM.Operands.Register;
import Backend.ASM.Operands.VirtualReg;

import java.util.ArrayList;

public class ASMFunction {
    public String name;

    public ArrayList<ASMBlock> blocks = new ArrayList<>();
    public ArrayList<Register> arguments = new ArrayList<>();
    public ArrayList<Immediate> stack_offset = new ArrayList<>();
    public ArrayList<VirtualReg> callee_saved_virtual = new ArrayList<>();

    public int delta_sp;

    void add_block(ASMBlock block) {
        blocks.add(block);
    }

    ASMFunction(String _name) {
        name = _name;
    }

    @Override
    public String toString() {
        return null;
    }
}
