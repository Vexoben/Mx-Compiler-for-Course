package Backend.ASM;

import Backend.ASM.Instructions.AsmBaseInst;

import java.util.ArrayList;

public class ASMBlock {
    public String label;
    public ArrayList<AsmBaseInst> instructions = new ArrayList<>();
    public ArrayList<ASMBlock> succ_blocks = new ArrayList<>();
    public ArrayList<ASMBlock> prev_blocks = new ArrayList<>();

    public ASMBlock(String _label) {
        label = _label;
    }

    public void push_back(AsmBaseInst inst) {
        instructions.add(inst);
    }

    public void push_front(AsmBaseInst inst) {
        instructions.add(0, inst);
    }

    // CFG
    public void add_edge(ASMBlock next) {
        succ_blocks.add(next);
        next.prev_blocks.add(this);
    }

    @Override
    public String toString() {
        return label;
    }
}
