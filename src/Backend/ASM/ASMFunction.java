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

    public boolean is_built_in;

    void add_block(ASMBlock block) {
        blocks.add(block);
    }

    ASMFunction(String _name) {
        name = _name;
    }

    public ASMBlock get_first_block() {
        return blocks.get(0);
    }

    public ASMBlock get_last_block() {
        return blocks.get(blocks.size() - 1);
    }

    @Override
    public String toString() {
        return name;
    }
}
