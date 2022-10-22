package Frontend.ast.stmt;

import Frontend.ast.ASTVisitor;
import Frontend.ast.StmtNode;
import Tools.Position;

public class JumpStmtNode extends StmtNode {
    String jump_case;

    public JumpStmtNode(Position _pos, String _case) {
        super(_pos);
        jump_case = _case;
    }

    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}