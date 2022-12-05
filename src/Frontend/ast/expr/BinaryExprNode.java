package Frontend.ast.expr;
import Frontend.Tools.Error.IRError;
import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Frontend.Tools.Position;

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

        public String toString() {
            switch (this) {
                case MUL -> {
                    return "mul";
                }
                case DIV -> {
                    return "sdiv";
                }
                case MOD -> {
                    return "srem";
                }
                case ADD -> {
                    return "add";
                }
                case SUB -> {
                    return "sub";
                }
                case LESS -> {
                    return "icmp slt";
                }
                case GREATER -> {
                    return "icmp sgt";
                }
                case LEQ -> {
                    return "icmp sle";
                }
                case GEQ -> {
                    return "icmp sge";
                }
                case EQUAL -> {
                    return "icmp eq";
                }
                case NOTEQUAL -> {
                    return "icmp ne";
                }
                case BITOR -> {
                    return "or";
                }
                case BITAND -> {
                    return "and";
                }
                case XOR -> {
                    return "xor";
                }
                case OR, AND -> { // will not be used
                    return "";
                }
                case LEFTSHIFT -> {
                    return "shl";
                }
                case RIGHTSHIFT -> {
                    return "arhl";
                }
                default -> throw new IRError(new Position(0, 0), "BinaryExprNode");
            }
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