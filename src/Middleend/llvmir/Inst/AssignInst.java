package Middleend.llvmir.Inst;

import Middleend.llvmir.Hierarchy.BasicBlock;
import Middleend.llvmir.IRVisitor;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.ValueAndUser.Value;

public class AssignInst extends BaseInst{

   public AssignInst(DerivedType _type, Value variable, Value expr, String _name, BasicBlock _belong) {
      super(_type, _name, _belong);
      add_operand(variable);
      variable.add_user(this);
      add_operand(expr);
      expr.add_user(this);
   }

   @Override
   public String output() {
      return "assign " + get_operand(0).get_name() + ", " + get_operand(1).get_name();
   }

   @Override
   public void accept(IRVisitor visitor) {
      visitor.visit(this);
   }
}
