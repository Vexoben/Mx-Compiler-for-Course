package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Position;

import java.util.ArrayList;

public class FuncCallExprNode extends ExprNode {
    public ExprNode func_name;
    public ArrayList<ExprNode> args;

    public FuncCallExprNode(Position _pos) {
        super(_pos);
    }

    public FuncCallExprNode(Position _pos, ExprNode _func_name, ArrayList<ExprNode> _args) {
        super(_pos);
        func_name = _func_name;
        args = _args;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean is_left_value() {
        return false;
    }
}