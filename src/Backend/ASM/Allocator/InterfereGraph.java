package Backend.ASM.Allocator;

import Backend.ASM.Instructions.AsmMv;
import Backend.ASM.Operands.Register;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;

public class InterfereGraph {
   public InterfereGraph() throws FileNotFoundException {
   }

   public static class GraphNode {
      public boolean precolored;
      public int degree;
      public double priority;
      public Register register;
      public Register alias;
      public ArrayList<AsmMv> move_inst = new ArrayList<>();
      public ArrayList<GraphNode> adjList = new ArrayList<>();

      GraphNode(Register reg) throws FileNotFoundException {
         register = reg;
         precolored = false;
         degree = 0;
         priority = 0;
      }

      GraphNode(Register reg, boolean colored) throws FileNotFoundException {
         register = reg;
         precolored = colored;
         degree = 0;
         priority = 0;
      }

      public void init() {
         degree = 0;
         priority = 0;
         alias = null;
         move_inst.clear();
         adjList.clear();
      }
   }

   HashSet<GraphNode> node_set = new HashSet<>();
   Graph<GraphNode> graph = new Graph<>();

   // debug
   static OutputStream os;
   static {
      try {
         os = new FileOutputStream("log");
      } catch (FileNotFoundException e) {
         throw new RuntimeException(e);
      }
   }

   public void add_edge(Register u, Register v) throws FileNotFoundException {
      if (u == v || graph.exist_edge(get_node(u), get_node(v))) return;
      node_set.add(get_node(u));
      node_set.add(get_node(v));
      graph.add_edge(get_node(u), get_node(v));
      graph.add_edge(get_node(v), get_node(u));
      if (!u.node.precolored) {
         u.node.adjList.add(v.node);
         u.node.degree++;
      }
      if (!v.node.precolored) {
         v.node.adjList.add(u.node);
         v.node.degree++;
      }
   }

   public void remove_edge(Register u, Register v) throws FileNotFoundException {
      graph.remove_edge(get_node(u), get_node(v));
      graph.remove_edge(get_node(v), get_node(u));
   }

   public boolean exist_edge(Register u, Register v) throws FileNotFoundException {
      return graph.exist_edge(get_node(u), get_node(v));
   }

   GraphNode get_node(Register reg) throws FileNotFoundException {
      if (reg.node == null) reg.node = new GraphNode(reg);
      return reg.node;
   }

   void printf(String str) throws IOException {
      os.write(str.getBytes());
   }

   public void output() throws IOException {
      printf("color\n");
      for (GraphNode node : node_set) {
         printf(node.register.toString() + " ");
         if (node.register.color == null) printf("null\n");
         else printf(node.register.color.toString() + '\n');
      }
      printf("edge\n");
      for (GraphNode node : node_set) {
         for (GraphNode adj : node.adjList) {
            printf(node.register.toString() + " " + adj.register.toString() + "\n");
         }
      }
      printf("--------------\n");
   }
}
