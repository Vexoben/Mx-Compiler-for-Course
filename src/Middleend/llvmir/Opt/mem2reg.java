package Middleend.llvmir.Opt;

import Backend.ASM.ASMBlock;
import Backend.ASM.Instructions.AsmBaseInst;
import Backend.ASM.Instructions.AsmMv;
import Middleend.llvmir.Constant.IntConst;
import Middleend.llvmir.Hierarchy.BasicBlock;
import Middleend.llvmir.Hierarchy.IRFunction;
import Middleend.llvmir.IRBuilder;
import Middleend.llvmir.Inst.*;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.ValueAndUser.User;
import Middleend.llvmir.ValueAndUser.Value;
import Middleend.llvmir.ValueAndUser.toRegValue;

import java.util.ArrayList;
import java.util.HashMap;

public class mem2reg {

   IRBuilder ir;
   HashMap<AllocaInst, toRegValue> alloca_map = new HashMap<>();
   HashMap<LoadInst, Value> load_map = new HashMap<>();

   public mem2reg(IRBuilder ir_builder) {
      ir = ir_builder;
      for (IRFunction func : ir.func_table.values()) {
         run_on_function(func);
      }
   }

   void run_on_function(IRFunction function) {
      alloca_map.clear();
      load_map.clear();
      for (BasicBlock block : function.blocks) {
         run_on_block(block);
      }
   }

   void run_on_block(BasicBlock block) {
      ArrayList<BaseInst> insts = block.instructions;
      block.instructions = new ArrayList<>();
      for (BaseInst inst : insts) {
         if (inst instanceof AllocaInst allo) {
            toRegValue value = new toRegValue(allo.get_pointed_type(), inst.get_origin_name());
            alloca_map.put(allo, value);
            continue;
         } else if (inst instanceof LoadInst load) {
            if (load.get_operand(0) instanceof AllocaInst allo) {
               toRegValue value = new toRegValue(allo.get_pointed_type(), "tmp");
               block.push_back(new StoreInst(alloca_map.get(allo), value, block));
               load_map.put(load, value);
               continue;
            }
         }
         update_operand(inst);
         block.push_back(inst);
      }
   }

   void update_operand(BaseInst inst) {
      for (int i = 0; i < inst.get_operands_size(); ++i) {
         Value value = inst.get_operand(i);
         if (value.get_origin_name().equals("null")) {
            inst.replace_operand(i, new IntConst(0));
         }
         else if (value instanceof AllocaInst allo) {
            inst.replace_operand(i, alloca_map.get(allo));
         } else if (value instanceof LoadInst load) {
            if (load_map.containsKey(load)) {
               inst.replace_operand(i, load_map.get(load));
            }
         }
      }
   }
}
