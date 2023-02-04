package Backend.ASM.Operands;

import Backend.ASM.Allocator.InterfereGraph;

public class Register extends BaseOperand{

    public Register color;
    public Immediate offset;

    // for interfereGraph
    public InterfereGraph.GraphNode node;

    // only used in RegAllocatorNaive
    public int color2;

    public Register(String _identifier) {
        super(_identifier);
        offset = new Immediate(0);
    }

    @Override
    public String toString() {
        if (color == null) return identifier;
        else return color.identifier;
    }
}
