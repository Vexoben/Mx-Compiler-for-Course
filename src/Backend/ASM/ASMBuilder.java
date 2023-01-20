package Backend.ASM;

import Backend.ASM.Instructions.*;
import Backend.ASM.Operands.*;
import Frontend.Tools.Error.AsmError;
import Frontend.ast.expr.BinaryExprNode;
import Middleend.llvmir.*;
import Middleend.llvmir.Constant.*;
import Middleend.llvmir.Inst.*;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Type.PointerType;
import Middleend.llvmir.Type.StructType;
import Middleend.llvmir.Type.VoidType;

import java.util.HashMap;

public class ASMBuilder implements IRVisitor {

    public IRPrinter ir;

    public ASMModule asm;
    public ASMFunction cur_func;
    public ASMBlock cur_block;

    HashMap<BasicBlock, ASMBlock> block_map = new HashMap<>();
    HashMap<IRFunction, ASMFunction> func_map = new HashMap<>();

    public ASMBuilder(IRPrinter _ir) {
        asm = new ASMModule();
        ir = _ir;
        for (GlobalValue value : ir.const_string_table.values()) {
            asm.const_strings.add(new GlobalReg("." + value.get_name().substring(1), value.const_string_data));
        }
        for (GlobalValue value : ir.global_vars) {
            asm.global_vars.add(new GlobalReg(value.get_name().substring(1)));
        }
        for (IRFunction func: ir.func_table.values()) {
            cur_func = create_asm_func(func);
            for (BasicBlock block: func.get_blocks()) {
                create_asm_block(block);
            }
            cur_func = null;
        }
        for (IRFunction func: ir.func_table.values()) {
            visit(func);
        }
    }

    ASMFunction create_asm_func(IRFunction ir_func) {
        ASMFunction asm_func = new ASMFunction(ir_func.get_name().substring(1));
        asm_func.is_built_in = ir_func.is_built_in;
        func_map.put(ir_func, asm_func);
        asm.functions.add(asm_func);
        return asm_func;
    }

    ASMBlock create_asm_block(BasicBlock ir_block) {
        String name = "." + ir_block.parent_function.get_origin_name() + "." + ir_block.get_label().toString();
        ASMBlock asm_block = new ASMBlock(name);
        block_map.put(ir_block, asm_block);
        cur_func.add_block(asm_block);
        return asm_block;
    }

    ASMFunction get_asm_func(IRFunction ir_func) {
        ASMFunction ret = func_map.get(ir_func);
        if (ret == null) ret = create_asm_func(ir_func);
        return ret;
    }

    ASMBlock get_asm_block(BasicBlock ir_block) {
        ASMBlock ret = block_map.get(ir_block);
        if (ret == null) ret = create_asm_block(ir_block);
        return ret;
    }

    Register get_register(Value value) {
        if (value instanceof BaseConst) {
            if (value instanceof StringConst) {
                VirtualReg ret = new VirtualReg("str.addr");
                new AsmLa(ret, "." + value.get_name().substring(1), cur_block);
                return ret;
            } else {
                int v;
                if (value instanceof IntConst) v = ((IntConst)value).data;
                else if (value instanceof BoolConst) v = ((BoolConst)value).data ? 1 : 0;
                else if (value instanceof NullConst) v = 0;
                else throw new AsmError("ASMBuilder: get_register");
                VirtualReg ret = new VirtualReg("tmp");
                new AsmLi(ret, new Immediate(v), cur_block);
                return ret;
            }
        } else {
            VirtualReg ret;
            if (value.reg_asm != null) ret = (VirtualReg) value.reg_asm;
            else {
                ret = new VirtualReg(value.get_origin_name());
                value.reg_asm = ret;
            }
            return ret;
        }
    }

    @Override
    public void visit(IRFunction ir_func) {
        ASMFunction asm_func = get_asm_func(ir_func);
        cur_func = asm_func;
        cur_block = get_asm_block(ir_func.entry_block);

        VirtualReg _ra = new VirtualReg("virtual_ra");
        asm_func.callee_saved_virtual.add(_ra);
        new AsmMv(_ra, ASMModule.get_reg("ra"), cur_block);
        for (PhysicalReg reg: ASMModule.get_callee_saved_reg()) {
            VirtualReg _reg = new VirtualReg("virtual_" + reg.toString());
            new AsmMv(_reg, reg, cur_block);
            asm_func.callee_saved_virtual.add(_reg);
        }

        for (int i = 0; i < 8 && i < ir_func.get_operands_size(); ++i) {
            asm_func.arguments.add(get_register(ir_func.get_operand(i)));
            new AsmMv(asm_func.arguments.get(i), ASMModule.get_reg_a(i), cur_block);
        }
        int offset = -4 * (ir_func.get_operands_size() - 8);
        for (int i = 8; i < ir_func.get_operands_size(); ++i, offset += 4) {
            Immediate imm = new Immediate(offset);
            cur_func.stack_offset.add(imm);
            cur_func.delta_sp += 4;
            asm_func.arguments.add(get_register(ir_func.get_operand(i)));
            new AsmLoad(asm_func.arguments.get(i), ASMModule.get_reg("sp"), imm, 4, cur_block);
        }

        for (BasicBlock block: ir_func.get_blocks()) {
            visit(block);
        }
    }

    @Override
    public void visit(BasicBlock ir_block) {
        cur_block = get_asm_block(ir_block);
        for (BaseInst inst: ir_block.get_inst()) {
            inst.accept(this);
        }
    }

    @Override
    public void visit(GlobalValue value) { // should not be used
        throw new AsmError("AsmBuilder.java: visit GlobalValue");
    }

    @Override
    public void visit(AllocaInst inst) {
        Register reg = get_register(inst);
        reg.color = -1; // placed in stack memory
        // cur_func.delta_sp +=
    }

    @Override
    public void visit(BinaryInst inst) {
        Register rd = get_register(inst);
        Register rs1 = get_register(inst.get_operand(0));
        Register rs2 = get_register(inst.get_operand(1));
        if (inst.operator.is_compare()) {
            switch (inst.operator) {
                case LESS -> new AsmBinary("slt", rd, rs1, rs2, cur_block);
                case GREATER -> new AsmBinary("slt", rd, rs2, rs1, cur_block);
                case LEQ -> {
                    VirtualReg tmp = new VirtualReg("tmp");
                    new AsmBinary("slt", tmp, rs2, rs1, cur_block);
                    new AsmBinary("xori", rd, tmp, new Immediate(1), cur_block);
                }
                case GEQ -> {
                    VirtualReg tmp = new VirtualReg("tmp");
                    new AsmBinary("slt", tmp, rs1, rs2, cur_block);
                    new AsmBinary("xori", rd, tmp, new Immediate(1), cur_block);
                }
                case EQUAL -> {
                    VirtualReg tmp = new VirtualReg("tmp");
                    new AsmBinary("xor", tmp, rs1, rs2, cur_block);
                    new AsmBinary("sltiu", rd, tmp, new Immediate(1), cur_block);
                }
                case NOTEQUAL -> {
                    VirtualReg tmp = new VirtualReg("tmp");
                    new AsmBinary("xor", tmp, rs1, rs2, cur_block);
                    new AsmBinary("snez", rd, tmp, ASMModule.get_reg("zero"), cur_block);
                }
                default -> throw new AsmError("ASMBuilder.java: visit BinaryInst, cmp");
            }
        } else {
            String op;
            switch (inst.operator) {
                case ADD -> op = "add";
                case SUB -> op = "sub";
                case MUL -> op = "mul";
                case DIV -> op = "div";
                case MOD -> op = "rem";
                case LEFTSHIFT -> op = "sll";
                case RIGHTSHIFT -> op = "sra";
                case OR, BITOR -> op = "or";
                case AND, BITAND -> op = "and";
                case XOR -> op = "xor";
                default -> throw new AsmError("ASMBuilder.java: visit BinaryInst, calc");
            }
            new AsmBinary(op, rd, rs1, rs2, cur_block);
        }
    }
/*
    Register get_register_allow_const(Value value) {
        if (value instanceof BaseConst) {
            if (value instanceof IntConst ic) {
                VirtualReg tmp = new VirtualReg("tmp");
                new AsmLi(tmp, new Immediate(ic.data), cur_block);
                return tmp;
            } else if (value instanceof BoolConst bc) {
                VirtualReg tmp = new VirtualReg("tmp");
                new AsmLi(tmp, new Immediate(bc.data ? 1 : 0), cur_block);
                return tmp;
            } else if (value instanceof NullConst nc) {
                VirtualReg tmp = new VirtualReg("tmp");
                new AsmLi(tmp, new Immediate(0), cur_block);
                return tmp;
            } else {
                throw new AsmError("ASMBuilder.java: get_register_allow_const");
            }
        } else {
            return get_register(value);
        }
    }*/

    @Override
    public void visit(BitCastInst inst) {
        new AsmMv(get_register(inst), get_register(inst.get_operand(0)), cur_block);
    }

    @Override
    public void visit(BrInst inst) {
        if (inst.get_operands_size() == 1) {
            new AsmJump(block_map.get(inst.get_operand(0)), cur_block);
        } else {
            ASMBlock if_block = block_map.get(inst.get_operand(1));
            ASMBlock else_block = block_map.get(inst.get_operand(2));

            if (inst.get_operand(0) instanceof BinaryInst cmp && cmp.operator.is_compare()) { // cmp inst
                new AsmBr(cmp.operator, get_register(cmp.get_operand(0)), get_register(cmp.get_operand(1)), if_block, cur_block);
            } else {
                new AsmBr(BinaryExprNode.BinaryOperator.NOTEQUAL, get_register(inst.get_operand(0)), ASMModule.get_reg(0), if_block, cur_block);
            }
            new AsmJump(else_block, cur_block);
        }
    }

    @Override
    public void visit(CmpInst inst) { // unused
        throw new AsmError("AsmBuilder.java: visit CmpInst");
    }

    @Override
    public void visit(FuncCallInst inst) {
        ASMFunction callee = get_asm_func(inst.get_func());
        for (int i = 0; i < 8 && i + 1 < inst.get_operands_size(); ++i) {
            new AsmMv(ASMModule.get_reg_a(i), get_register(inst.get_operand(i + 1)), cur_block);
        }
        for (int i = 8, offset = -4 * (inst.get_operands_size() - 9); i + 1 < inst.get_operands_size(); ++i, offset += 4) {
            new AsmStore(get_register(inst.get_operand(i + 1)), ASMModule.get_reg("sp"), new Immediate(offset), 4, cur_block);
        }
        new AsmCall(callee, cur_block);
        if (!(inst.get_func().get_ret_type() instanceof VoidType)) {
            new AsmMv(get_register(inst), ASMModule.get_reg_a(0), cur_block);
        }
    }

    @Override
    public void visit(GetElementPtrInst inst) {
        // array: only one index
        // class/string: two indexes

        IRBaseType type = ((PointerType) inst.get_operand(0).get_type()).get_pointed_type();

         if (inst.get_operands_size() == 3) {
             if (type instanceof StructType) {
                 Register tmp = new VirtualReg("tmp");
                 int prefix_size = inst.get_prefix_size(((IntConst)inst.get_operand(2)).data);
                 new AsmLi(tmp, new Immediate(prefix_size), cur_block);
                 new AsmBinary("add", get_register(inst), get_register(inst.get_operand(0)), tmp, cur_block);
             } else {
                 Register tmp = new VirtualReg("tmp");
                 new AsmLi(tmp, new Immediate(((IntConst)inst.get_operand(2)).data), cur_block);
                 new AsmBinary("add", get_register(inst), get_register(inst.get_operand(0)), tmp, cur_block);
             }
             /*
            if (is_zero_const(inst.get_operand(1)) && is_zero_const(inst.get_operand(2))) {
                inst.reg_asm = inst.get_operand(0).reg_asm;
            } else {
                Register tmp = new VirtualReg("tmp");
                new AsmLi(tmp, new Immediate(((IntConst)inst.get_operand(2)).data), cur_block);
                new AsmBinary("add", get_register(inst), get_register(inst.get_operand(0)), tmp, cur_block);
            }*/
         } else if (inst.get_operands_size() == 2) {
             int type_size = ((PointerType) type).get_pointed_type().size();
             Register tmp = new VirtualReg("tmp");
             Register index = get_register(inst.get_operand(1));
             //new AsmBinary("add", tmp, index, index, cur_block);
             //new AsmBinary("add", tmp, tmp, tmp, cur_block);
             new AsmBinary("mul", tmp, tmp, new Immediate(type_size), cur_block);
             new AsmBinary("add", get_register(inst), tmp, get_register(inst.get_operand(0)),cur_block);
         } else {
             throw new AsmError("ASMBuilder.java: GetElementPtrInst");
         }
    }

    boolean is_zero_const(Value value) {
        if (value instanceof IntConst ic) {
            return ic.data == 0;
        } else return false;
    }

    @Override
    public void visit(LoadInst inst) {
        Value addr = inst.get_operand(0);
        if (addr instanceof GlobalValue) {
            VirtualReg reg = new VirtualReg(addr.get_origin_name() + "_addr");
            new AsmLa(reg, addr.get_origin_name(), cur_block);
            new AsmLoad(get_register(inst), reg, new Immediate(0), 4, cur_block);
        } else {
            new AsmLoad(get_register(inst), get_register(addr), new Immediate(0), 4, cur_block);
        }
    }

    @Override
    public void visit(PhiInst inst) { // should not be used
        throw new AsmError("AsmBuilder.java: visit PhiInst");
    }

    @Override
    public void visit(RetInst inst) {
        if (inst.get_operands_size() > 0) {
            new AsmMv(ASMModule.get_reg_a(0), get_register(inst.get_operand(0)), cur_block);
        }
        for (int i = 0; i < ASMModule.get_callee_saved_reg().size(); ++i) { // 0 is ra
            new AsmMv(ASMModule.get_callee_saved_reg().get(i), cur_func.callee_saved_virtual.get(i + 1), cur_block);
        }
        new AsmMv(ASMModule.get_reg("ra"), cur_func.callee_saved_virtual.get(0), cur_block);
        new AsmRet(cur_block);
    }

    @Override
    public void visit(StoreInst inst) {
        Value data = inst.get_operand(0);
        Value addr = inst.get_operand(1);
        if (addr instanceof GlobalValue) {
            VirtualReg reg = new VirtualReg(addr.get_origin_name() + "_addr");
            new AsmLa(reg, addr.get_origin_name(), cur_block);
            new AsmStore(get_register(data), reg, new Immediate(0), 4, cur_block);
        } else {
            new AsmStore(get_register(data), get_register(addr), new Immediate(0), 4, cur_block);
        }
    }

    @Override
    public void visit(TruncInst inst) {// should not be used
        throw new AsmError("AsmBuilder.java: visit TruncInst");
    }

    @Override
    public void visit(ZextInst inst) {
        throw new AsmError("AsmBuilder.java: visit ZextInst");
    }
}
