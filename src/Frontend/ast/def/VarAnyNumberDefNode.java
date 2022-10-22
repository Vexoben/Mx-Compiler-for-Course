package Frontend.ast.def;

import Frontend.ast.ASTVisitor;
import Frontend.ast.DefNode;
import Frontend.ast.expr.NewExprNode;
import Tools.Position;
import Tools.Registry.VarRegistry;

import java.util.ArrayList;

public class VarAnyNumberDefNode extends VarDefNode {
    public ArrayList<VarRegistry> registry_list;
    public ArrayList<NewExprNode> assign_list;

    public VarAnyNumberDefNode(Position _pos) {
        super(_pos);
        registry_list = new ArrayList<>();
        assign_list = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}