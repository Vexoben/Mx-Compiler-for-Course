package Backend.ASM.Allocator;

import Backend.ASM.ASMBlock;
import Backend.ASM.ASMFunction;
import Backend.ASM.Instructions.AsmBaseInst;
import Backend.ASM.Operands.Register;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;

public class LivenessAnalyzer {

   HashSet<ASMBlock> visited = new HashSet<>();
   HashMap<ASMBlock, HashSet<Register>> block_use_map = new HashMap<>();
   HashMap<ASMBlock, HashSet<Register>> block_def_map = new HashMap<>();
   HashMap<ASMBlock, HashSet<Register>> block_live_in_map = new HashMap<>();
   HashMap<ASMBlock, HashSet<Register>> block_live_out_map = new HashMap<>();
   Queue<ASMBlock> work_queue = new LinkedList<>();

   void init() {
      visited = new HashSet<>();
      block_use_map = new HashMap<>();
      block_def_map = new HashMap<>();
      block_live_in_map = new HashMap<>();
      block_live_out_map = new HashMap<>();
      work_queue = new LinkedList<>();
   }

   public void run_on_function(ASMFunction function) {
      init();
      function.blocks.forEach(block -> {
         if (block.succ_blocks.size() == 0) {
            work_queue.offer(block);
         }
         get_use_and_def(block);
         block_live_in_map.put(block, new HashSet<>());
         block_live_out_map.put(block, new HashSet<>());
      });
      while (!work_queue.isEmpty()) {
         ASMBlock block = work_queue.poll();
         run_on_block(block);
      }
   }

   void run_on_block(ASMBlock block) {
      if (visited.contains(block)) return;
      visited.add(block);
      HashSet<Register> live_in_new = new HashSet<>(block_live_out_map.get(block));
      HashSet<Register> live_out_new = new HashSet<>();

      for (ASMBlock succ : block.succ_blocks) {
         live_out_new.addAll(block_live_in_map.get(succ));
      }

      live_in_new.removeAll(block_def_map.get(block));
      live_in_new.addAll(block_use_map.get(block));

      if (!live_in_new.equals(block_live_in_map.get(block)) || !live_out_new.equals(block_live_out_map.get(block))) {
         block_live_in_map.replace(block, live_in_new);
         block_live_out_map.replace(block, live_out_new);
         block.prev_blocks.forEach(visited::remove);
      }

      work_queue.addAll(block.prev_blocks);
   }

   void get_use_and_def(ASMBlock block) {
      HashSet<Register> uses = new HashSet<>();
      HashSet<Register> defs = new HashSet<>();
      for (AsmBaseInst inst : block.instructions) {
         inst.get_uses().forEach(i -> {
            if (!defs.contains(i)) {
               uses.add(i);
            }
         });
         defs.addAll(inst.get_defs());
      }
      block_use_map.put(block, uses);
      block_def_map.put(block, defs);
   }

   public HashSet<Register> get_live_in(ASMBlock block) {
      return block_live_in_map.get(block);
   }

   public HashSet<Register> get_live_out(ASMBlock block) {
      return block_live_out_map.get(block);
   }
}
