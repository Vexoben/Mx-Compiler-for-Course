package Frontend.ast.def;

import Frontend.ast.ASTVisitor;
import Frontend.ast.DefNode;
import Frontend.ast.expr.NewExprNode;
import Tools.Registry.VarRegistry;

public class VarSingleDefNode extends VarDefNode {
    public VarRegistry registry;
    public NewExprNode assign;

    public VarSingleDefNode(VarRegistry _reg, NewExprNode _assign) {
        super(_reg.pos);
        registry = _reg;
        assign = _assign;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}