package Frontend.ast.stmt;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.ast.StmtNode;
import Frontend.Tools.Position;

public class AtomStmtNode extends StmtNode {
    public ExprNode expr;

    public AtomStmtNode(Position _pos) {
        super(_pos);
    }
    public AtomStmtNode(Position _pos, ExprNode _expr) {
        super(_pos);
        expr = _expr;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
