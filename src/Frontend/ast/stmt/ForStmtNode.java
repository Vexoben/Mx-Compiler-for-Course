package Frontend.ast.stmt;

import Frontend.ast.ASTVisitor;
import Frontend.ast.StmtNode;
import Frontend.ast.def.VarSingleDefNode;
import Tools.Position;
import Tools.Scope.RepeatScope;
import Tools.Scope.SuiteScope;

import java.util.ArrayList;

public class ForStmtNode extends StmtNode {
    public AtomStmtNode init, condition, step;
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