package Backend.ASM;

import Backend.ASM.Instructions.*;
import Backend.ASM.Operands.*;

import java.util.ArrayList;
import java.util.HashMap;

public class RegAllocator implements InstVisitor {


    //
    //
    //
    //
    // arguments

    public ASMModule asm;
    ASMBlock cur_block;
    ASMFunction cur_func;
    HashMap<Register, Integer> stack_position = new HashMap<>();

    public RegAllocator(ASMModule _asm) {
        asm = _asm;
        for (ASMFunction func: asm.functions) {
            visit(func);
        }
    }

    public void visit(ASMFunction func) {
        cur_func = func;
        func.blocks.forEach(i -> visit(i));
    }

    public void visit(ASMBlock block) {
        cur_block = block;
        ArrayList<AsmBaseInst> insts = block.instructions;
        block.instructions = new ArrayList<>();
        insts.forEach(i -> i.accept(this));
    }

    Immediate get_stack_position(VirtualReg reg) {
        Integer pos = stack_position.get(reg);
        if (pos == null) {
            cur_func.delta_sp += 4;
            pos = cur_func.delta_sp;
            stack_position.put(reg, pos);
        }
        return new Immediate(-pos);
    }

    BaseOperand load(BaseOperand reg, PhysicalReg rd) {
        if (!(reg instanceof VirtualReg)) return reg;
        return  null;
    }

    BaseOperand store(BaseOperand reg, PhysicalReg rd) {
        return null;
    }

    @Override
    public void visit(AsmBinary inst) {
        inst.rs1 = load(inst.rs1, ASMModule.get_reg("s0"));
        inst.rs2 = load(inst.rs2, ASMModule.get_reg("s1"));
        cur_block.push_back(inst);
        inst.rd = store(inst.rd, ASMModule.get_reg("s0"));
    }

    @Override
    public void visit(AsmBr inst) {
        inst.rs1 = load(inst.rs1, ASMModule.get_reg("s0"));
        inst.rs2 = load(inst.rs2, ASMModule.get_reg("s1"));
        cur_block.push_back(inst);
    }

    @Override
    public void visit(AsmCall inst) {
        cur_block.push_back(inst);
    }

    @Override
    public void visit(AsmJump inst) {
        cur_block.push_back(inst);
    }

    @Override
    public void visit(AsmLa inst) {

    }

    @Override
    public void visit(AsmLi inst) {

    }

    @Override
    public void visit(AsmLoad inst) {

    }

    @Override
    public void visit(AsmMv inst) {

    }

    @Override
    public void visit(AsmLui inst) {

    }

    @Override
    public void visit(AsmRet inst) {

    }

    @Override
    public void visit(AsmStore inst) {

    }
}
