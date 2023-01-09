package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.BaseOperand;
import Backend.ASM.Operands.Immediate;
import Backend.ASM.Operands.Register;
import Backend.ASM.Operands.VirtualReg;
import Frontend.ast.expr.BinaryExprNode;

public class AsmBinary extends AsmBaseInst{
    String op;

    public AsmBinary(String _op, Register _rd, BaseOperand _rs1, BaseOperand _rs2, ASMBlock block) {
        super(_rd, _rs1, _rs2, null, block);
        op = _op;
    }

    @Override
    public void accept(InstVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return op + " " + rd.toString() + ", " + rs1.toString() + ", " + rs2.toString();
    }
}
