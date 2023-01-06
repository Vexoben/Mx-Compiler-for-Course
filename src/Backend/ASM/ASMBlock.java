package Backend.ASM;

import Backend.ASM.Instructions.AsmBaseInst;

import java.util.ArrayList;

public class ASMBlock {
    public String label;
    public ArrayList<AsmBaseInst> instructions;

    public ASMBlock(String _label) {
        label = _label;
    }

    public void add_inst(AsmBaseInst inst) {
        instructions.add(inst);
    }

    @Override
    public String toString() {
        String ret = label;
        for (AsmBaseInst inst : instructions) {
            ret = ret + "  " + inst.toString() + "\n";
        }
        return ret;
    }
}
