package Frontend.ast.stmt;

import Frontend.ast.ASTNode;
import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.ast.StmtNode;
import Tools.Position;

public class JumpStmtNode extends StmtNode {

    public enum JUMP_CASE {RETURN, CONTINUE, BREAK};
    public JUMP_CASE jump_case;
    public ExprNode return_value;

    public JumpStmtNode(Position _pos) {
        super(_pos);
    }
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}