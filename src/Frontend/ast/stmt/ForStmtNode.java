package Frontend.ast.stmt;

import Frontend.ast.ASTVisitor;
import Frontend.ast.StmtNode;
import Frontend.ast.def.VarSingleDefNode;
import Tools.Position;
import Tools.Scope.SuiteScope;

import java.util.ArrayList;

public class ForStmtNode extends StmtNode {
    StmtNode init, condition, step;
    SuiteScope scope;
    ArrayList<VarSingleDefNode> init_var_list;
    StmtNode stmt;

    public ForStmtNode(Position _pos, StmtNode _init, StmtNode _condition,
                       StmtNode _step, ArrayList<VarSingleDefNode> _init_var_list, StmtNode _stmt) {
        super(_pos);
        init = _init;
        condition = _condition;
        step = _step;
        scope = new SuiteScope();
        init_var_list = _init_var_list;
        stmt = _stmt;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}