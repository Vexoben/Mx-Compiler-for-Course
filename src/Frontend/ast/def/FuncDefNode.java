package Frontend.ast.def;

import Frontend.ast.ASTVisitor;
import Frontend.ast.DefNode;
import Frontend.ast.stmt.BlockNode;
import Frontend.Tools.Position;
import Frontend.Tools.Registry.FuncRegistry;
import Frontend.Tools.Scope.FuncScope;

import java.util.ArrayList;

public class FuncDefNode extends DefNode {
    public FuncRegistry func_registry;
    public FuncScope func_scope;
    public BlockNode block_node;
    public ArrayList<VarSingleDefNode> arg_list;

    public FuncDefNode(Position _pos) {
        super(_pos);
        arg_list = new ArrayList<>();
        func_scope = new FuncScope();
    }

    public FuncDefNode(FuncRegistry _reg) {
        super(_reg.pos);
        func_registry = _reg;
        block_node = new BlockNode(_reg.pos);
        arg_list = new ArrayList<VarSingleDefNode>();
        func_scope = new FuncScope();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}