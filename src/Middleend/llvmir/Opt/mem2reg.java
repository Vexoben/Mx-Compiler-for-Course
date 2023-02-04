package Middleend.llvmir.Opt;

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
         }
         if (inst instanceof LoadInst load) {
            if (load.get_operand(0) instanceof AllocaInst allo) {
               toRegValue value = new toRegValue(allo.get_pointed_type(), "tmp");
               block.push_back(new AssignInst((DerivedType) value.type, value, alloca_map.get(allo), "tmp", null));
               load_map.put(load, value);
               continue;
            } else {
               load_map.put(load, load);
            }
         }
         for (Value value : inst.operands) {
            if (value.get_origin_name().equals("null")) {
               inst.replace_operand(value, new IntConst(0));
            }
            else if (value instanceof AllocaInst allo) {
               inst.replace_operand(allo, alloca_map.get(allo));
            } else if (value instanceof LoadInst load) {
               inst.replace_operand(load, load_map.get(load));
            }
         }
         if (inst instanceof StoreInst store) {
            if (store.get_operand(1) instanceof toRegValue allo) {
               block.push_back(new AssignInst((DerivedType) store.type, allo, store.get_operand(0), "assign", block));
            } else {
               block.push_back(store);
            }
         } else block.push_back(inst);
      }
   }
}
