package Frontend.ast.stmt;

import Frontend.ast.ASTNode;
import Frontend.ast.ASTVisitor;
import Frontend.ast.StmtNode;
import Frontend.Tools.Position;
import Frontend.Tools.Scope.RepeatScope;

public class ForStmtNode extends StmtNode {
    public ASTNode init;
    public AtomStmtNode condition, step;
    public RepeatScope scope;
    public StmtNode stmt;

    public ForStmtNode(Position _pos) {
        super(_pos);
        scope = new RepeatScope();
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}