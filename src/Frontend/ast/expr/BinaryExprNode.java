package Frontend.ast.expr;
import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Position;

public class BinaryExprNode extends ExprNode {
    public enum BinaryOperator {MUL, DIV, MOD, ADD, SUB, LESS, GREATER, LEQ, GEQ, EQUAL, NOTEQUAL,
        BITOR, BITAND, AND, OR, XOR, LEFTSHIFT, RIGHTSHIFT;

        public boolean is_compare() {
            return this == EQUAL || this == NOTEQUAL || this == LEQ || this == GEQ || this == LESS || this == GREATER;
        }

        public boolean is_check_equal() {
            return this == EQUAL || this == NOTEQUAL;
        }

        public boolean is_logic() {
            return this == AND || this == OR;
        }
    };
    public BinaryOperator op;
    public ExprNode left_expr, right_expr;

    public BinaryExprNode(Position _pos) {
        super(_pos);
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