package Middleend.llvmir.Inst;

import Frontend.ast.expr.BinaryExprNode;
import Middleend.llvmir.Hierarchy.BasicBlock;
import Middleend.llvmir.IRVisitor;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Type.BoolType;
import Middleend.llvmir.ValueAndUser.Value;

public class CmpInst extends BaseInst{

    // unused
    public CmpInst(IRBaseType _type, String _name, BinaryExprNode.BinaryOperator _op, Value v1, Value v2, BasicBlock _belong) {
        super(new BoolType(), _name, _belong);
        v1.add_user(this);
        v2.add_user(this);
        add_operand(v1);
        add_operand(v2);
    }

    @Override
    public String output() { return ""; }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

}
