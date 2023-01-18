package Backend.ASM;

import Backend.ASM.Instructions.*;
import Backend.ASM.Operands.*;
import Middleend.llvmir.Inst.LoadInst;

import java.awt.image.RGBImageFilter;
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

    ArrayList<AsmBinary> sp_addi_list = new ArrayList<>();

    public RegAllocator(ASMModule _asm) {
        asm = _asm;
        for (ASMFunction func: asm.functions) {
            visit(func);
        }
    }

    public void visit(ASMFunction func) {
        if (func.is_built_in) return;
        cur_func = func;
        ArrayList<ASMBlock> block_arr = func.blocks;
        func.blocks = new ArrayList<>();
        sp_addi_list = new ArrayList<>();
        block_arr.forEach(this::visit);
        func.get_first_block().push_front(new AsmBinary("addi", ASMModule.get_reg("sp"), ASMModule.get_reg("sp"), new Immediate(-func.delta_sp), null));
        // func.get_last_block().push_back(new AsmBinary("addi", ASMModule.get_reg("sp"), ASMModule.get_reg("sp"), new Immediate(func.delta_sp), null));
        for (AsmBinary inst: sp_addi_list) ((Immediate) inst.rs2).data = func.delta_sp;
    }

    public void visit(ASMBlock block) {
        cur_block = new ASMBlock(block.label);
        ArrayList<AsmBaseInst> insts = block.instructions;
        block.instructions = new ArrayList<>();
        insts.forEach(i -> i.accept(this));
        cur_func.add_block(cur_block);
    }

    Immediate get_stack_position(VirtualReg reg) {
        Integer pos = stack_position.get(reg);
        if (pos == null) {
            pos = cur_func.delta_sp;
            cur_func.delta_sp += 4;
            stack_position.put(reg, pos);
        }
        return new Immediate(pos);
    }

    BaseOperand load(BaseOperand reg, PhysicalReg rd) {
        if (!(reg instanceof VirtualReg)) return reg;
        if (((VirtualReg) reg).color == -1) {
            PhysicalReg ret = new PhysicalReg("sp");
            ret.offset = get_stack_position((VirtualReg) reg);
            return ret;
        } else {
            new AsmLoad(rd, ASMModule.get_reg("sp"), get_stack_position((VirtualReg) reg), 4, cur_block);
            return rd;
        }
    }

    BaseOperand store(Register rd, PhysicalReg tmp_reg) {
        if (!(rd instanceof VirtualReg)) return rd;
        if (rd.color == -1) {
            PhysicalReg ret = new PhysicalReg("sp");
            ret.offset = get_stack_position((VirtualReg) rd);
            return ret;
        } else {
            new AsmStore(tmp_reg, ASMModule.get_reg("sp"), get_stack_position((VirtualReg) rd), 4, cur_block);
            return tmp_reg;
        }
    }

    @Override
    public void visit(AsmBinary inst) {
        inst.rs1 = load(inst.rs1, ASMModule.get_reg("s0"));
        inst.rs2 = load(inst.rs2, ASMModule.get_reg("s1"));
        cur_block.push_back(inst);
        inst.rd = store((Register) inst.rd, ASMModule.get_reg("s0"));
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
        cur_block.push_back(inst);
        inst.rd = store((Register) inst.rd, ASMModule.get_reg("s0"));
    }

    @Override
    public void visit(AsmLi inst) {
        cur_block.push_back(inst);
        inst.rd = store((Register) inst.rd, ASMModule.get_reg("s0"));
    }

    @Override
    public void visit(AsmLoad inst) {
        inst.rs1 = load(inst.rs1, ASMModule.get_reg("s0"));
        cur_block.push_back(inst);
        inst.immediate = ((Register) inst.rs1).offset;
        inst.rd = store((Register) inst.rd, ASMModule.get_reg("s1"));
    }

    @Override
    public void visit(AsmMv inst) {
        inst.rs1 = load(inst.rs1, new PhysicalReg("s0"));
        cur_block.push_back(inst);
        inst.rd = store((Register) inst.rd, new PhysicalReg("s1"));
        /*if (inst.rs1 instanceof PhysicalReg) {
            if (inst.rd instanceof PhysicalReg) {
                cur_block.push_back(inst);
            } else if (inst.rd instanceof VirtualReg) {
                new AsmStore((Register) inst.rs1, ASMModule.get_reg("sp"), get_stack_position((VirtualReg) inst.rd), 4, cur_block);
            }
        } else {
            if (inst.rd instanceof PhysicalReg) {
                new AsmLoad((Register) inst.rd, ASMModule.get_reg("sp"), get_stack_position((VirtualReg) inst.rs1), 4, cur_block);
            } else {
                new AsmLoad(ASMModule.get_reg("s0"),  ASMModule.get_reg("sp"), get_stack_position((VirtualReg) inst.rs1), 4, cur_block);
                new AsmStore(ASMModule.get_reg("s0"), ASMModule.get_reg("sp"), get_stack_position((VirtualReg) inst.rd), 4, cur_block);
            }
            //inst.rd = store((Register) inst.rd, ASMModule.get_reg("s1"));
        }*/
    }

    @Override
    public void visit(AsmLui inst) {
        cur_block.push_back(inst);
        inst.rd = store((Register) inst.rd, ASMModule.get_reg("s0"));
    }

    @Override
    public void visit(AsmRet inst) {
        sp_addi_list.add(new AsmBinary("addi", ASMModule.get_reg("sp"), ASMModule.get_reg("sp"), new Immediate(0), cur_block));
        cur_block.push_back(inst);
    }

    @Override
    public void visit(AsmStore inst) {
        inst.rs1 = load(inst.rs1, ASMModule.get_reg("s0"));
        inst.rd = load(inst.rd, ASMModule.get_reg("s1"));
        cur_block.push_back(inst);
    }
}
