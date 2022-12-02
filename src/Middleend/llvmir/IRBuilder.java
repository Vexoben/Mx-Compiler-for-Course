package Middleend.llvmir;

import Frontend.Tools.Scope.BaseScope;
import Frontend.ast.*;
import Frontend.ast.ASTVisitor;
import Frontend.ast.def.*;
import Frontend.ast.expr.*;
import Frontend.ast.stmt.*;
import Middleend.llvmir.Block.BasicBlock;
import Middleend.llvmir.Block.Module;
import Middleend.llvmir.Constant.Function;
import Middleend.llvmir.Inst.BrInst;

import javax.swing.plaf.basic.BasicCheckBoxMenuItemUI;
import java.util.Stack;

public class IRBuilder implements ASTVisitor {
    public Module top_module = new Module();
    Stack<BaseScope> scopes;
    BasicBlock cur_block = null;
    Function cur_func = null;

    public IRBuilder(RootNode root) {
        visit(root);
    }

    @Override
    public void visit(RootNode obj) {
        scopes.push(obj.global_scope);
        // builtin_function

        obj.child_list.forEach(i -> {
            if (i instanceof ClassDefNode) {
                visit(i);
            }
            if (i instanceof FuncDefNode) {
                visit(i);
            }
        });

        scopes.pop();
    }
    @Override
    public void visit(BlockNode obj) {
        scopes.push(obj.suite_scope);
        obj.stmt_list.forEach(i -> i.accept(this));
        scopes.pop();
    }
    @Override
    public void visit(StmtNode obj) {} // abstract node
    @Override
    public void visit(DefNode obj) {}  // abstract node
    @Override
    public void visit(ExprNode obj) {} // abstract node

    //def
    @Override
    public void visit(FuncDefNode obj) {

    }
    @Override
    public void visit(ClassDefNode obj) {

    }
    @Override
    public void visit(VarSingleDefNode obj) {

    }
    @Override
    public void visit(VarAnyNumberDefNode obj) {

    }
    @Override
    public void visit(VarDefNode obj) {

    }
    //expr
    @Override
    public void visit(VarExprNode obj) {

    }
    @Override
    public void visit(AssignExprNode obj) {

    }
    @Override
    public void visit(BinaryExprNode obj) {

    }
    @Override
    public void visit(ConstExprNode obj) {

    }
    @Override
    public void visit(FuncCallExprNode obj) {

    }
    @Override
    public void visit(MemberVisitExprNode obj) {

    }
    @Override
    public void visit(NewExprNode obj) {

    }
    @Override
    public void visit(LambdaExprNode obj) {

    }
    @Override
    public void visit(PostfixExprNode obj) {

    }
    @Override
    public void visit(PrefixExprNode obj) {

    }
    @Override
    public void visit(UnaryExprNode obj) {

    }
    @Override
    public void visit(AtomExprNode obj) {

    }

    // stmt
    @Override
    public void visit(ForStmtNode obj) {
        BasicBlock init_block = new BasicBlock("for_init", cur_func);
        BasicBlock condition_block = new BasicBlock("for_condition", cur_func);
        BasicBlock step_block = new BasicBlock("for_step", cur_func);
        BasicBlock repeat_block = new BasicBlock("for_repeat", cur_func);
        BasicBlock exit_block = new BasicBlock("for_exit", cur_func);

        cur_block = init_block;
        obj.init.accept(this);
        cur_block.push_back(new BrInst(condition_block, cur_block));

        cur_block = condition_block;
        obj.condition.accept(this);
        cur_block.push_back(new BrInst(repeat_block, cur_block));

        cur_block = repeat_block;

        obj.stmt.accept(this);

    }
    @Override
    public void visit(WhileStmtNode obj) {
        BasicBlock condition_block = new BasicBlock("while_condition", cur_func);
        BasicBlock repeat_block = new BasicBlock("while_repeat", cur_func);
        BasicBlock exit_block = new BasicBlock("while_exit", cur_func);

        cur_block = condition_block;
        obj.condition.accept(this);
        cur_block.push_back(new BrInst(obj.condition.result, repeat_block, exit_block, cur_block));

        cur_block = repeat_block;
        scopes.push(obj.scope);
        obj.stmt.accept(this);
        scopes.pop();
        cur_block.push_back(new BrInst(condition_block, cur_block));

        cur_block = exit_block;
    }
    @Override
    public void visit(BlockStmtNode obj) {
        obj.block.accept(this);
    }
    @Override
    public void visit(IfStmtNode obj) {
        BasicBlock if_block = new BasicBlock ("if_true", cur_func);
        BasicBlock else_block = new BasicBlock("if_false", cur_func);
        BasicBlock exit_block = new BasicBlock("if_exit", cur_func);
        // condition
        obj.condition.accept(this);
        cur_block.push_back(new BrInst(obj.condition.result, if_block, else_block, cur_block));
        // if_block
        scopes.push(obj.if_scope);
        cur_block = if_block;
        obj.if_stmt.accept(this);
        cur_block.push_back(new BrInst(exit_block, cur_block));
        scopes.pop();
        // else_block
        if (obj.else_scope != null) {
            scopes.push(obj.else_scope);
            cur_block = else_block;
            obj.else_stmt.accept(this);
            cur_block.push_back(new BrInst(exit_block, cur_block));
            scopes.pop();
        }
        // exit
        cur_block = exit_block;
    }
    @Override
    public void visit(JumpStmtNode obj) {

    }
    @Override
    public void visit(AtomStmtNode obj) {
        if (obj.expr != null) {
            obj.expr.accept(this);
        }
    }
}