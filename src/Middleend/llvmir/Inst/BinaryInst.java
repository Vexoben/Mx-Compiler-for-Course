package Middleend.llvmir.Inst;

import Frontend.ast.expr.BinaryExprNode;
import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Value;

public class BinaryInst extends BaseInst{
    BinaryExprNode.BinaryOperator operator;

    public BinaryInst(IRBaseType _type, String _name, BinaryExprNode.BinaryOperator op, Value v1, Value v2, BasicBlock _belong) {
        super(_type, _name, _belong);
        v1.add_user(this);
        v2.add_user(this);
        add_operand(v1);
        add_operand(v2);
        operator = op;
    }
}
