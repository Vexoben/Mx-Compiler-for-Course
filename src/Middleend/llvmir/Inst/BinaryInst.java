package Middleend.llvmir.Inst;

import Frontend.ast.expr.BinaryExprNode;
import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.IRVisitor;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Value;

public class BinaryInst extends BaseInst{   // binary && icmp
    public BinaryExprNode.BinaryOperator operator;

    public BinaryInst(IRBaseType _type, String _name, BinaryExprNode.BinaryOperator op, Value v1, Value v2, BasicBlock _belong) {
        super(_type, _name, _belong);
        v1.add_user(this);
        v2.add_user(this);
        add_operand(v1);
        add_operand(v2);
        operator = op;
    }

    @Override
    public String output() {
        return operator.toString() + " " + get_operand(0).get_tyme() + ", " + get_operand(1).get_name();
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
