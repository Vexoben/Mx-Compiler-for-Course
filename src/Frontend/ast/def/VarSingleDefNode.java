package Frontend.ast.def;

import Frontend.ast.ASTVisitor;
import Frontend.ast.DefNode;
import Frontend.ast.ExprNode;
import Frontend.ast.expr.NewExprNode;
import Tools.Position;
import Tools.Registry.VarRegistry;

public class VarSingleDefNode extends VarDefNode {
    public VarRegistry registry;
    public ExprNode assign;

    public VarSingleDefNode(Position _pos) {
        super(_pos);
        assign = null;
    }

    public VarSingleDefNode(VarRegistry _reg, ExprNode _assign) {
        super(_reg.pos);
        registry = _reg;
        assign = _assign;
        var_type = _reg.var_type;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}