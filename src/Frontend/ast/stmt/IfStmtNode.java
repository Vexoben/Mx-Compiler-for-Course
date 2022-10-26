package Frontend.ast.stmt;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.ast.StmtNode;
import Tools.Position;
import Tools.Scope.SuiteScope;

public class IfStmtNode extends StmtNode {
    public ExprNode condition;
    public StmtNode if_stmt, else_stmt;
    public SuiteScope if_scope, else_scope;

    public IfStmtNode(Position _pos) {
        super(_pos);
        if_scope = new SuiteScope();
        else_scope = new SuiteScope();
    }

    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}