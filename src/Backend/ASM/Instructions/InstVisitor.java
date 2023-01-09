package Backend.ASM.Instructions;

public interface InstVisitor {
    void visit(AsmBinary inst);
    void visit(AsmBr inst);
    void visit(AsmCall inst);
    void visit(AsmJump inst);
    void visit(AsmLa inst);
    void visit(AsmLi inst);
    void visit(AsmLoad inst);
    void visit(AsmMv inst);
    void visit(AsmLui inst);
    void visit(AsmRet inst);
    void visit(AsmStore inst);
}
