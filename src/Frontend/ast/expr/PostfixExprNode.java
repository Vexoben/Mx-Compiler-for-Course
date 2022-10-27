package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Error.SemanticError;
import Tools.Position;

public class PostfixExprNode extends ExprNode {
    public ExprNode var;
    public boolean is_add, is_sub;

    public PostfixExprNode(Position _pos) {
        super(_pos);
    }

    public PostfixExprNode(Position _pos, String op, VarExprNode _var) {
        super(_pos);
        var = _var;
        if (op.equals("++")) {
            is_add = true;
            is_sub = false;
        } else if (op.equals("--")) {
            is_add = false;
            is_sub = true;
        } else {
            throw new SemanticError(_pos, "undefined operator");
        }
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean is_left_value() {
        return false;
    }
}