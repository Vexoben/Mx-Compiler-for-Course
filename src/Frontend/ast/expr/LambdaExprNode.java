package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.ast.stmt.BlockNode;
import Frontend.ast.def.VarSingleDefNode;
import Frontend.Tools.Position;
import Frontend.Tools.Scope.FuncScope;

import java.util.ArrayList;

public class LambdaExprNode extends ExprNode {
    public FuncScope func_scope;
    public BlockNode suite_node;
    public ArrayList<VarSingleDefNode> arg_list;
    public ArrayList<ExprNode> call_args;
    public boolean outside_visit;

    public LambdaExprNode(Position _pos) {
        super(_pos);
        func_scope = new FuncScope();
        arg_list = new ArrayList<>();
        call_args = new ArrayList<>();
    }

    public LambdaExprNode(Position _pos, BlockNode _suite_node, ArrayList<VarSingleDefNode> _arg, boolean _outside) {
        super(_pos);
        func_scope = new FuncScope();
        suite_node = _suite_node;
        arg_list = _arg;
        outside_visit = _outside;
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