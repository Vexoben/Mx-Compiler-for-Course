package Frontend.ast.stmt;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.ast.StmtNode;
import Tools.Position;
import Tools.Scope.SuiteScope;

public class IfStmtNode extends StmtNode {
    ExprNode if_cond, else_cond;
    StmtNode if_stmt, else_stmt;
    SuiteScope if_scope, else_scope;

    public IfStmtNode(Position _pos,
                      ExprNode _if_cond, ExprNode _else_cond,
                      StmtNode _if_stmt, StmtNode _else_stmt) {
        super(_pos);
        if_stmt = _if_stmt;
        else_stmt = _else_stmt;
        if_cond = _if_cond;
        else_cond = _else_cond;
        if_scope = new SuiteScope();
        else_scope = new SuiteScope();
    }

    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}