package Middleend.llvmir;

import Middleend.llvmir.Hierarchy.BasicBlock;
import Middleend.llvmir.Hierarchy.IRFunction;
import Middleend.llvmir.Inst.*;
import Middleend.llvmir.ValueAndUser.GlobalValue;

public interface IRVisitor {
    void visit(IRFunction func);

    void visit(BasicBlock block);

    void visit(GlobalValue value);

    void visit(AllocaInst inst);

    void visit(BinaryInst inst);

    void visit(BitCastInst inst);

    void visit(BrInst inst);

    void visit(CmpInst inst);

    void visit(FuncCallInst inst);

    void visit(GetElementPtrInst inst);

    void visit(LoadInst inst);

    void visit(PhiInst inst);

    void visit(RetInst inst);

    void visit(StoreInst inst);

    void visit(TruncInst inst);

    void visit(ZextInst inst);

   void visit(AssignInst assignInst);
}
