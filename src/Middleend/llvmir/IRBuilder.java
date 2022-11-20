package Middleend.llvmir;

import Frontend.ast.ASTVisitor;
import Frontend.ast.def.*;
import Frontend.ast.expr.*;
import Frontend.ast.stmt.*;
import Frontend.ast.*;

public class IRBuilder implements ASTVisitor {
    @Override
    public void visit(RootNode obj) {

    }
    @Override
    public void visit(BlockNode obj) {

    }
    @Override
    public void visit(StmtNode obj) {

    }
    @Override
    public void visit(DefNode obj) {

    }
    @Override
    public void visit(ExprNode obj) {

    }

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

    }
    @Override
    public void visit(WhileStmtNode obj) {

    }
    @Override
    public void visit(BlockStmtNode obj) {

    }
    @Override
    public void visit(IfStmtNode obj) {

    }
    @Override
    public void visit(JumpStmtNode obj) {

    }
    @Override
    public void visit(AtomStmtNode obj) {

    }
}