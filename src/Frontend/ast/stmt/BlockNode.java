package Frontend.ast.stmt;

import Frontend.ast.ASTNode;
import Frontend.ast.ASTVisitor;
import Frontend.ast.StmtNode;
import Tools.Position;
import Tools.Scope.SuiteScope;

import java.util.ArrayList;

public class BlockNode extends StmtNode {
    public ArrayList<ASTNode> stmt_list; // StmtNode or VarDefNode
    public SuiteScope suite_scope;
    public BlockNode(Position _pos) {
        super(_pos);
        stmt_list = new ArrayList<>();
        suite_scope = new SuiteScope();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
