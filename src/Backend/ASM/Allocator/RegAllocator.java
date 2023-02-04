package Backend.ASM.Allocator;

import Backend.ASM.ASMBlock;
import Backend.ASM.ASMFunction;
import Backend.ASM.ASMModule;
import Backend.ASM.Instructions.*;
import Backend.ASM.Operands.Immediate;
import Backend.ASM.Operands.PhysicalReg;
import Backend.ASM.Operands.Register;
import Backend.ASM.Operands.VirtualReg;
import Middleend.llvmir.Hierarchy.BasicBlock;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.*;

public class RegAllocator {

   Set<Register> precolored = new HashSet<>();           // 机器寄存器
   Set<Register> initial = new HashSet<>();              // 临时寄存器 没有预着色或被处理
   Set<Register> simplify_work_list = new HashSet<>();   // 低度数 传送无关
   Set<Register> freeze_work_list = new HashSet<>();     // 低度数 传送有关
   Set<Register> spill_work_list = new HashSet<>();      // 高度数
   Set<Register> spilled_nodes = new HashSet<>();        // 本轮中要被溢出的
   Set<Register> coalesced_nodes = new HashSet<>();      // 已合并的寄存器集合  u <- v 则将v放入
   Set<Register> colored_nodes = new HashSet<>();        // 已成功着色

   Set<AsmMv> coalesced_moves = new HashSet<>();         // 已合并的传送指令
   Set<AsmMv> constrained_moves = new HashSet<>();       // 源操作数和目标操作数冲突的传送
   Set<AsmMv> frozen_moves = new HashSet<>();            // 不再考虑的传送
   Set<AsmMv> work_list_moves = new HashSet<>();         // 有可能合并的传送
   Set<AsmMv> active_moves = new HashSet<>();            // 还未做好合并准备的传送

   Stack<Register> select_stack = new Stack<>();
   HashSet<Register> new_temps = new HashSet<>();

   InterfereGraph graph = new InterfereGraph();

   HashMap<Register, Immediate> stack_position = new HashMap<>();

   int offset = 0;

   static int K = ASMModule.assignable_colors.size();

   public RegAllocator() throws FileNotFoundException {
   }

   public void run_on_module(ASMModule asm) throws IOException {
      for (ASMFunction function : asm.functions) {
         offset = 0;
         run_on_function(function);
      }
   }

   public void run_on_function(ASMFunction function) throws IOException {
      while (true) {
         init(function);
         LivenessAnalyzer analyzer = new LivenessAnalyzer();
         analyzer.run_on_function(function);
         build(function, analyzer);
         // System.out.print("!!!");
         // graph.output();
         make_work_list();
         while (true) {
            if (simplify_work_list.size() > 0) simplify();
            else if (work_list_moves.size() > 0) coalesce();
            else if (freeze_work_list.size() > 0) freeze();
            else if (spill_work_list.size() > 0) select_spill();
            else break;
         }
         assign_colors();
         //------------debug---------------
         // graph.output();
         /*for (Register reg : colored_nodes) System.out.println(reg.identifier);
         System.out.println("---------------");*/
         //--------------------------------
         if (spilled_nodes.size() > 0) rewrite_program(function);
         else {
            for (ASMBlock block : function.blocks) {
               for (AsmBaseInst inst : block.instructions) {
                  inst.get_uses().forEach(i -> i.color = get_alias(i).color);
                  inst.get_defs().forEach(i -> i.color = get_alias(i).color);
               }
            }
            remove_coalesced_mv(function);
            break;
         }
      }
      if (offset > 0) {
         function.get_first_block().push_front(new AsmBinary("addi", ASMModule.get_reg("sp"), ASMModule.get_reg("sp"), new Immediate(-offset), null));
         for (ASMBlock block : function.blocks) {
            for (int i = 0; i < block.instructions.size(); ++i) {
               if (block.instructions.get(i) instanceof AsmRet) {
                  block.instructions.add(i, new AsmBinary("addi", ASMModule.get_reg("sp"), ASMModule.get_reg("sp"), new Immediate(offset), null));
                  ++i;
               }
            }
         }
      }
   }

   void remove_coalesced_mv(ASMFunction function) {
      for (ASMBlock block : function.blocks) {
         ArrayList<AsmBaseInst> insts = new ArrayList<>();
         for (AsmBaseInst inst : block.instructions) {
            if (inst instanceof AsmMv mv) {
               if (get_alias((Register) mv.rd).color != get_alias((Register) mv.rs1).color) {
                  insts.add(inst);
               }
            } else {
               insts.add(inst);
            }
         }
         block.instructions = insts;
      }
   }

   void init(ASMFunction function) throws FileNotFoundException {
      precolored = new HashSet<>();           // 机器寄存器
      initial = new HashSet<>();              // 临时寄存器 没有预着色或被处理
      simplify_work_list = new HashSet<>();   // 低度数 传送无关
      freeze_work_list = new HashSet<>();     // 低度数 传送有关
      spill_work_list = new HashSet<>();      // 高度数
      spilled_nodes = new HashSet<>();        // 本轮中要被溢出的
      coalesced_nodes = new HashSet<>();      // 已合并的寄存器集合  u <- v 则将v放入
      colored_nodes = new HashSet<>();        // 已成功着色

      coalesced_moves = new HashSet<>();         // 已合并的传送指令
      constrained_moves = new HashSet<>();       // 源操作数和目标操作数冲突的传送
      frozen_moves = new HashSet<>();            // 不再考虑的传送
      work_list_moves = new HashSet<>();         // 有可能合并的传送
      active_moves = new HashSet<>();            // 还未做好合并准备的传送

      select_stack = new Stack<>();

      graph = new InterfereGraph();

      for (int i = 0; i < 32; ++i) {
         PhysicalReg reg = ASMModule.get_reg(i);
         precolored.add(reg);
         reg.color = reg;
         reg.node = new InterfereGraph.GraphNode(reg, true);
      }
      for (ASMBlock block : function.blocks) {
         for (AsmBaseInst inst : block.instructions) {
            initial.addAll(inst.get_uses());
            initial.addAll(inst.get_defs());
            inst.get_uses().forEach(i -> {
               try {
                  if (i.node == null) i.node = new InterfereGraph.GraphNode(i);
                  else i.node.init();
               } catch (FileNotFoundException e) {
                  throw new RuntimeException(e);
               }
            });
            inst.get_defs().forEach(i -> {
               try {
                  if (i.node == null) i.node = new InterfereGraph.GraphNode(i);
                  else i.node.init();
               } catch (FileNotFoundException e) {
                  throw new RuntimeException(e);
               }
            });
         }
      }
      initial.removeAll(precolored);

      for (ASMBlock block : function.blocks) {
         double value = Math.pow(10, block.block_weight);
         for (AsmBaseInst inst : block.instructions) {
            inst.get_defs().forEach(i -> i.node.priority += Math.pow(10, value));
            inst.get_uses().forEach(i -> i.node.priority += Math.pow(10, value));
         }
      }
   }

   static int cnt_debug = 0;

   void build(ASMFunction function, LivenessAnalyzer analyzer) throws FileNotFoundException {
      for (ASMBlock block : function.blocks) {
         HashSet<Register> live = analyzer.get_live_out(block);
         for (int i = block.instructions.size() - 1; i >= 0; --i) {
            AsmBaseInst inst = block.instructions.get(i);
            if (inst.is_move_instruction()) {
               live.removeAll(inst.get_uses());
               inst.get_defs().forEach(reg -> reg.node.move_inst.add((AsmMv) inst));
               inst.get_uses().forEach(reg -> reg.node.move_inst.add((AsmMv) inst));
               work_list_moves.add((AsmMv) inst);
            }
            live.addAll(inst.get_defs());
            for (Register d : inst.get_defs())  {
               for (Register l : live) {
                  cnt_debug++;
                  graph.add_edge(d, l);
               }
            }
            live.removeAll(inst.get_defs());
            live.addAll(inst.get_uses());
         }
      }
   }

   void make_work_list() {
      for (Register reg : initial) {
         if (reg.node.degree >= K) spill_work_list.add(reg);
         else if (move_related(reg)) freeze_work_list.add(reg);
         else simplify_work_list.add(reg);
      }
      initial.clear();
   }

   HashSet<AsmMv> node_moves(Register reg) {
      HashSet<AsmMv> ret = new HashSet<>(active_moves);
      ret.addAll(work_list_moves);
      ret.retainAll(reg.node.move_inst);
      return ret;
   }

   boolean move_related(Register reg) {
      return node_moves(reg).size() > 0;
   }

   HashSet<Register> adjacent(Register reg) {
      HashSet<Register> ret = new HashSet<>();
      for (InterfereGraph.GraphNode node : reg.node.adjList) {
         ret.add(node.register);
      }
      select_stack.forEach(ret::remove);
      ret.removeAll(coalesced_nodes);
      return ret;
   }

   void simplify() { // 删去度数小于K的点
      for (Register n : simplify_work_list) {
         select_stack.push(n);
         adjacent(n).forEach(reg -> decrement_degree(reg.node));
         simplify_work_list.remove(n);
         break;
      }
   }

   void decrement_degree(InterfereGraph.GraphNode node) {
      int d = node.degree;
      node.degree = d - 1;
      if (d == K) {
         HashSet<InterfereGraph.GraphNode> enable_move_list = new HashSet<>();
         enable_move_list.add(node);
         adjacent(node.register).forEach(reg-> enable_move_list.add(reg.node));
         for (InterfereGraph.GraphNode tmp : enable_move_list) enable_moves(tmp);
         spill_work_list.remove(node.register);
         if (move_related(node.register)) {
            freeze_work_list.add(node.register);
         } else {
            simplify_work_list.add(node.register);
         }
      }
   }

   void enable_moves(InterfereGraph.GraphNode node) {
      node_moves(node.register).forEach(m -> {
         if (active_moves.contains(m)) {
            active_moves.remove(m);
            work_list_moves.add(m);
         }
      });
   }

   void coalesce() throws FileNotFoundException {
      var it = work_list_moves.iterator();
      AsmMv mv = it.next();
      Register u = get_alias((Register) mv.rd), v = get_alias((Register) mv.rs1), x, y;
      if (v.node.precolored) { // swap(x, y)
         x = v;
         y = u;
      } else {
         x = u;
         y = v;
      }
      it.remove();
      if (x == y) {
         coalesced_moves.remove(mv);
         add_work_list(x);
      } else if (y.node.precolored || graph.exist_edge(x, y)) {
         constrained_moves.add(mv);
         add_work_list(x);
         add_work_list(y);
      } else if ((x.node.precolored && george(x, y)) || (!x.node.precolored && briggs(x, y))) {
         coalesced_moves.add(mv);
         combine(x, y);
         add_work_list(x);
      } else {
         active_moves.add(mv);
      }
   }

   void combine(Register x, Register y) throws FileNotFoundException {
      if (freeze_work_list.contains(y)) freeze_work_list.remove(y);
      else spill_work_list.remove(y);
      coalesced_nodes.add(y);
      y.node.alias = x;
      x.node.move_inst.addAll(y.node.move_inst);
      enable_moves(y.node);
      for (Register reg : adjacent(y)) {
         graph.add_edge(reg, x);
         decrement_degree(reg.node);
      }
      if (x.node.degree >= K && freeze_work_list.contains(x)) {
         freeze_work_list.remove(x);
         spill_work_list.add(x);
      }
   }

   boolean briggs(Register x, Register y) {
      HashSet<Register> adj = new HashSet<>(adjacent(x));
      adj.addAll(adjacent(y));
      adj.remove(x);
      adj.remove(y);
      int ans = 0;
      for (Register reg : adj) {
         if (reg.node.degree >= K) {
            ++ans;
         }
      }
      return ans < K;
   }

   boolean george(Register x, Register y) throws FileNotFoundException {
      for (Register reg : adjacent(y)) {
         if (!(reg.node.degree < K || reg.node.precolored || graph.exist_edge(x, reg))) {
            return false;
         }
      }
      return true;
   }

   Register get_alias(Register reg) {
      return coalesced_nodes.contains(reg) ? get_alias(reg.node.alias) : reg;
   }

   void add_work_list(Register reg) {
      if (!reg.node.precolored && !move_related(reg) && reg.node.degree < K) {
         freeze_work_list.remove(reg);
         simplify_work_list.add(reg);
      }
   }

   void freeze() {
      Iterator<Register> it = freeze_work_list.iterator();
      Register reg = it.next();
      it.remove();
      simplify_work_list.add(reg);
      freeze_moves(reg);
   }

   void freeze_moves(Register u) {
      for (AsmMv mv : node_moves(u)) {
         Register v = get_alias((Register) mv.rd) == get_alias(u) ? get_alias((Register) mv.rd) : get_alias((Register) mv.rs1);
         active_moves.remove(mv);
         frozen_moves.add(mv);
         if (node_moves(v).size() == 0 && v.node.degree < K) {
            freeze_work_list.remove(v);
            simplify_work_list.add(v);
         }
      }
   }

   void select_spill() {
      Register result = null;
      double min_cost = 1e100;
      for (Register reg : spill_work_list) {
         if (new_temps.contains(reg)) continue;
         double cost = reg.node.priority / reg.node.degree;
         if (cost < min_cost) {
            min_cost = cost;
            result = reg;
         }
      }
      if (result == null) {
         for (Register reg : spill_work_list) {
            double cost = reg.node.priority / reg.node.degree;
            if (cost < min_cost) {
               min_cost = cost;
               result = reg;
            }
         }
      }
      spill_work_list.remove(result);
      simplify_work_list.add(result);
      freeze_moves(result);
   }

   void assign_colors() {
      while (!select_stack.empty()) {
         Register n = select_stack.pop();
         HashSet<Register> ok_color = new HashSet<>(ASMModule.assignable_colors);
         for (InterfereGraph.GraphNode w : n.node.adjList) {
            if (colored_nodes.contains(get_alias(w.register)) || precolored.contains(get_alias(w.register))) {
               ok_color.remove(get_alias(w.register).color);
            }
         }
         if (ok_color.size() == 0) {
            spilled_nodes.add(n);
         } else {
            colored_nodes.add(n);
            for (Register c : ok_color) {
               n.color = c;
               break;
            }
         }
      }
      for (Register reg : colored_nodes) {
         reg.color = get_alias(reg).color;
      }
   }

   void rewrite_program(ASMFunction function) {
      for (Register reg : spilled_nodes) {
         stack_position.put(reg, new Immediate(offset));
         offset += 4;
      }
      for (ASMBlock block : function.blocks) {
         for (int i = 0; i < block.instructions.size(); ++i) {
            AsmBaseInst inst = block.instructions.get(i);
            if (inst instanceof AsmMv && spilled_nodes.contains((Register) inst.rd) && spilled_nodes.contains((Register) inst.rs1)) {
               VirtualReg tmp = new VirtualReg("tmp");
               block.instructions.set(i, new AsmLoad(tmp, ASMModule.get_reg("sp"), stack_position.get((Register) inst.rs1), 4, null));
               block.instructions.add(i + 1, new AsmStore(tmp, ASMModule.get_reg("sp"), stack_position.get((Register) inst.rd), 4, null));
               ++i;
               continue;
            }
            for (Register reg : inst.get_uses()) {
               if (spilled_nodes.contains(reg)) {
                  if (inst instanceof AsmMv) {
                     block.instructions.set(i, new AsmLoad((Register) inst.rd, ASMModule.get_reg("sp"), stack_position.get(reg), 4, null));
                  } else {
                     VirtualReg tmp = new VirtualReg("tmp");
                     inst.replace_use(reg, tmp);
                     block.instructions.add(i, new AsmLoad(tmp, ASMModule.get_reg("sp"), stack_position.get(reg), 4, null));
                     ++i;
                     new_temps.add(tmp);
                  }
               }
            }
            for (Register reg : inst.get_defs()) {
               if (spilled_nodes.contains(reg)) {
                  if (inst instanceof AsmMv) {
                     block.instructions.set(i, new AsmStore((Register) inst.rs1, ASMModule.get_reg("sp"), stack_position.get(reg), 4, null));
                  } else {
                     VirtualReg tmp = new VirtualReg("tmp");
                     inst.replace_def(reg, tmp);
                     block.instructions.add(i + 1, new AsmStore(tmp, ASMModule.get_reg("sp"), stack_position.get(reg), 4, null));
                     ++i;
                     new_temps.add(tmp);
                  }
               }
            }
         }
      }
      spilled_nodes.clear();
      initial = new HashSet<>(colored_nodes);
      initial.addAll(coalesced_nodes);
      initial.addAll(new_temps);
      colored_nodes.clear();
      coalesced_moves.clear();
   }
}
