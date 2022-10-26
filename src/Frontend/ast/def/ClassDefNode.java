package Frontend.ast.def;

import Frontend.ast.ASTVisitor;
import Frontend.ast.DefNode;
import Tools.Position;
import Tools.Registry.ClassRegistry;
import Tools.Registry.FuncRegistry;
import Tools.Scope.ClassScope;

import java.util.ArrayList;

public class ClassDefNode extends DefNode {
    public ClassRegistry class_registry;

    public ArrayList<FuncDefNode> func_list;
    public ArrayList<VarDefNode> var_list;
    public FuncDefNode constructor;
    public ClassScope class_scope;

    public ClassDefNode(Position _pos) {
        super(_pos);
        class_registry = null;
        func_list = new ArrayList<>();
        var_list = new ArrayList<>();
        class_scope = new ClassScope();
    }
/*    public ClassDefNode(ClassRegistry _registry, ArrayList<FuncDefNode> _func, ArrayList<VarSingleDefNode> _var) {
        super(_registry.pos);
        class_registry = _registry;
        func_list = _func;
        var_list = _var;
        class_scope = new ClassScope();
    }*/

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}