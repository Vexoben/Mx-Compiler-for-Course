package Frontend.ast.stmt;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.ast.StmtNode;
import Tools.Position;
import Tools.Scope.RepeatScope;
import Tools.Scope.SuiteScope;

public class WhileStmtNode extends StmtNode {
    public ExprNode condition;
    public StmtNode stmt;
    public RepeatScope scope;

    public WhileStmtNode(Position _pos) {
        super(_pos);
        scope = new RepeatScope();
    }

    public WhileStmtNode(Position _pos, ExprNode _condition, StmtNode _stmt) {
        super(_pos);
        condition = _condition;
        stmt = _stmt;
        scope = new RepeatScope();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}