package Backend.ASM.Instructions;

import Backend.ASM.ASMBlock;
import Backend.ASM.Operands.Register;
import Frontend.Tools.Error.AsmError;
import Frontend.ast.expr.BinaryExprNode;

public class AsmBr extends AsmBaseInst{
    public BinaryExprNode.BinaryOperator op;
    ASMBlock dest;

    public AsmBr(BinaryExprNode.BinaryOperator _op, Register rs1, Register rs2, ASMBlock _dest, ASMBlock parent) {
        super(null, rs1, rs2, null, parent);
        op = _op;
        dest = _dest;
    }

    String trans_op() {
        switch (op) {
            case EQUAL: return "beq";
            case NOTEQUAL: return "bne";
            case LESS: return "blt";
            case GEQ: return "bge";
            case LEQ: return "ble";
            case GREATER: return "bgt";
            default: throw new AsmError("AsmBr.java: trans_op");
        }
    }

    @Override
    public void accept(InstVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return trans_op() + " " + rs1.toString() + ", " + rs2.toString() + ", " + dest.toString();
    }
}
