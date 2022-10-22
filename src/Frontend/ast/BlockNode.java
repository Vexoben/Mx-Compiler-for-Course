package Frontend.ast;

import Tools.Position;
import Tools.Scope.SuiteScope;

import java.util.ArrayList;

public class BlockNode extends ASTNode{
    public ArrayList<ASTNode> stmt_list; // StmtNode or VarDefNode
    public SuiteScope suite_scope;
    public BlockNode(Position _pos) {
        super(_pos);
        suite_scope = new SuiteScope();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
