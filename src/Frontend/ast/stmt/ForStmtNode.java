package Frontend.ast.stmt;

import Frontend.ast.ASTVisitor;
import Frontend.ast.StmtNode;
import Frontend.ast.def.VarSingleDefNode;
import Tools.Position;
import Tools.Scope.RepeatScope;
import Tools.Scope.SuiteScope;

import java.util.ArrayList;

public class ForStmtNode extends StmtNode {
    public StmtNode init, condition, step;
    public RepeatScope scope;
    public StmtNode stmt;

    public ForStmtNode(Position _pos) {
        super(_pos);
        scope = new RepeatScope();
    }
    public ForStmtNode(Position _pos, StmtNode _init, StmtNode _condition,
                       StmtNode _step, ArrayList<VarSingleDefNode> _init_var_list, StmtNode _stmt) {
        super(_pos);
        init = _init;
        condition = _condition;
        step = _step;
        scope = new RepeatScope();
        stmt = _stmt;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}