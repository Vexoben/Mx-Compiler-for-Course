package Frontend.ast.expr;

import Frontend.ast.ASTVisitor;
import Frontend.ast.ExprNode;
import Tools.Position;
import Tools.Type.BaseType;

public class ConstExprNode extends ExprNode {
    public BaseType.BuiltinType built_in_type;
    public String class_name, value;

    public ConstExprNode(Position _pos, BaseType.BuiltinType _type, String _class_name, String _value) {
        super(_pos);
        built_in_type = _type;
        class_name = _class_name;
        value = _value;
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