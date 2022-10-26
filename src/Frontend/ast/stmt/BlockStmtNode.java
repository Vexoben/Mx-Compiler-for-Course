package Frontend.ast.stmt;

import Frontend.ast.ASTVisitor;
import Frontend.ast.BlockNode;
import Frontend.ast.StmtNode;
import Tools.Position;

public class BlockStmtNode extends StmtNode {
    public BlockNode block;

    public BlockStmtNode(Position _pos, BlockNode _block) {
        super(_pos);
        block = _block;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
