package Backend.ASM.Allocator;

import java.util.HashMap;
import java.util.HashSet;

public class Graph<NodeType> {
   public class Edge {
      NodeType u, v;

      public Edge(NodeType _u, NodeType _v) {
         u = _u; v = _v;
      }
   }

   HashMap<NodeType, HashSet<NodeType>> adj_map = new HashMap<>();

   public void add_edge(NodeType u, NodeType v) {
      if (u == v || exist_edge(u, v)) return;
      Edge edge = new Edge(u, v);
      add_edge(edge);
   }

   public void add_edge(Edge edge) {
      if (edge.u == edge.v || exist_edge(edge)) {
         return;
      }
      HashSet<NodeType> adj_set = adj_map.computeIfAbsent(edge.u, k -> new HashSet<>());
      adj_set.add(edge.v);
   }

   public void remove_edge(NodeType u, NodeType v) {
      Edge edge = new Edge(u, v);
      remove_edge(edge);
   }

   public void remove_edge(Edge edge) {
      if (!exist_edge(edge)) return;
      HashSet<NodeType> adj_set = adj_map.get(edge.u);
      adj_set.remove(edge.v);
   }

   public boolean exist_edge(NodeType u, NodeType v) {
      HashSet<NodeType> adj_set = adj_map.get(u);
      if (adj_set == null) return false;
      return adj_set.contains(v);
   }

   public boolean exist_edge(Edge edge) {
      return exist_edge(edge.u, edge.v);
   }
}
