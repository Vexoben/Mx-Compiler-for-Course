package Frontend.ast;

import Tools.Position;
import Tools.Scope.GlobalScope;

import java.util.ArrayList;
public class RootNode extends ASTNode {
    public ArrayList<DefNode> child_list;
    public GlobalScope global_scope;
    public RootNode(Position _pos) {
        super(_pos);
        global_scope = new GlobalScope();
        child_list = new ArrayList<DefNode>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}