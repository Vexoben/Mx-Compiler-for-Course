package Frontend.ast.stmt;

import Frontend.ast.ASTVisitor;
import Frontend.ast.StmtNode;
import Tools.Position;
import Tools.Scope.SuiteScope;

public class WhileStmtNode extends StmtNode {
    public StmtNode condition;
    public StmtNode stmt;
    SuiteScope scope;

    public WhileStmtNode(Position _pos, StmtNode _condition, StmtNode _stmt) {
        super(_pos);
        condition = _condition;
        stmt = _stmt;
        scope = new SuiteScope();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}