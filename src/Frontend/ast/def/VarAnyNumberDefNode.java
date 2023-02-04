package Frontend.ast.def;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.Tools.Position;
import Frontend.Tools.Registry.VarRegistry;
import Middleend.llvmir.ValueAndUser.Value;

import java.util.ArrayList;

public class VarAnyNumberDefNode extends VarDefNode {
    public ArrayList<VarRegistry> registry_list;
    public ArrayList<ExprNode> assign_list;

    public VarAnyNumberDefNode(Position _pos) {
        super(_pos);
        registry_list = new ArrayList<>();
        assign_list = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    // interact with IR
    public ArrayList<Value> value_list = new ArrayList<>();

}