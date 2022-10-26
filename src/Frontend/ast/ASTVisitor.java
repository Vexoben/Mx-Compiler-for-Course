package Frontend.ast;

import Frontend.ast.def.*;
import Frontend.ast.expr.*;
import Frontend.ast.stmt.*;

public interface ASTVisitor {
    public void visit(RootNode obj);
    public void visit(BlockNode obj);
    public void visit(StmtNode obj);
    public void visit(DefNode obj);
    public void visit(ExprNode obj);

    //def
    public void visit(FuncDefNode obj);
    public void visit(ClassDefNode obj);
    public void visit(VarSingleDefNode obj);
    public void visit(VarAnyNumberDefNode obj);
    public void visit(VarDefNode obj);

    //expr
    public void visit(VarExprNode obj);
    public void visit(AssignExprNode obj);
    public void visit(BinaryExprNode obj);
    public void visit(ConstExprNode obj);
    public void visit(FuncCallExprNode obj);
    public void visit(MemberVisitExprNode obj);
    public void visit(NewExprNode obj);
    public void visit(LambdaExprNode obj);
    public void visit(PostfixExprNode obj);
    public void visit(PrefixExprNode obj);
    public void visit(UnaryExprNode obj);
    public void visit(AtomExprNode obj);

    // stmt
    public void visit(ForStmtNode obj);
    public void visit(WhileStmtNode obj);
    public void visit(BlockStmtNode obj);
    public void visit(IfStmtNode obj);
    public void visit(JumpStmtNode obj);
    public void visit(AtomStmtNode obj);
}