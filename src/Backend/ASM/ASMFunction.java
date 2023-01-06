package Backend.ASM;

import Backend.ASM.Operands.Immediate;
import Backend.ASM.Operands.Register;
import Backend.ASM.Operands.VirtualReg;

import java.util.ArrayList;

public class ASMFunction {
    public String name;

    public ArrayList<ASMBlock> blocks = new ArrayList<>();
    public ArrayList<Register> arguments = new ArrayList<>();

    void add_block(ASMBlock block) {
        blocks.add(block);
    }

    @Override
    public String toString() {
        return null;
    }
}
