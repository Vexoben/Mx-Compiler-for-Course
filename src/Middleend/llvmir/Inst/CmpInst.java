package Middleend.llvmir.Inst;

import Frontend.ast.expr.BinaryExprNode;
import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Type.BoolType;
import Middleend.llvmir.Value;

public class CmpInst extends BaseInst{

    // unused

    BinaryExprNode.BinaryOperator op;

    public CmpInst(IRBaseType _type, String _name, BinaryExprNode.BinaryOperator _op, Value v1, Value v2, BasicBlock _belong) {
        super(new BoolType(), _name, _belong);
        v1.add_user(this);
        v2.add_user(this);
        add_operand(v1);
        add_operand(v2);
        _op = op;
    }

    @Override
    public String output() { return ""; }


}
