package gen;// Generated from F:/github/Mx-Compiler-for-Course/src/grammar/src\ParserRules.g4 by ANTLR 4.10.1
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link ParserRulesParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface ParserRulesVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#mxstarcode}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMxstarcode(ParserRulesParser.MxstarcodeContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#buildinType_without_void}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBuildinType_without_void(ParserRulesParser.BuildinType_without_voidContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#buildinType_with_void}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBuildinType_with_void(ParserRulesParser.BuildinType_with_voidContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#varTypeDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarTypeDef(ParserRulesParser.VarTypeDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#varDefSingle}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDefSingle(ParserRulesParser.VarDefSingleContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#varDefAnyNumber}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDefAnyNumber(ParserRulesParser.VarDefAnyNumberContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#varDefBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDefBlock(ParserRulesParser.VarDefBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#funcTypeDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncTypeDef(ParserRulesParser.FuncTypeDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#funcDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncDef(ParserRulesParser.FuncDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#funcArgs}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncArgs(ParserRulesParser.FuncArgsContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#funcBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncBlock(ParserRulesParser.FuncBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#funcCallArgs}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncCallArgs(ParserRulesParser.FuncCallArgsContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#funcStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncStatement(ParserRulesParser.FuncStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#classDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassDef(ParserRulesParser.ClassDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#classConstructor}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassConstructor(ParserRulesParser.ClassConstructorContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#ifBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfBlock(ParserRulesParser.IfBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#whileBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileBlock(ParserRulesParser.WhileBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#forBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForBlock(ParserRulesParser.ForBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#initializationStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitializationStatement(ParserRulesParser.InitializationStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#forConditionExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForConditionExpression(ParserRulesParser.ForConditionExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#stepExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStepExpression(ParserRulesParser.StepExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#jumpBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitJumpBlock(ParserRulesParser.JumpBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#atomicBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAtomicBlock(ParserRulesParser.AtomicBlockContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PostfixExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPostfixExpr(ParserRulesParser.PostfixExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code LambdaExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambdaExpr(ParserRulesParser.LambdaExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BinaryExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryExpr(ParserRulesParser.BinaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NewExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewExpr(ParserRulesParser.NewExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code MemberVisitExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemberVisitExpr(ParserRulesParser.MemberVisitExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ParenthesesExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParenthesesExpr(ParserRulesParser.ParenthesesExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AtomExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAtomExpr(ParserRulesParser.AtomExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryExpr(ParserRulesParser.UnaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PrefixExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrefixExpr(ParserRulesParser.PrefixExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AssignExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignExpr(ParserRulesParser.AssignExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code FuncCallExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncCallExpr(ParserRulesParser.FuncCallExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ArrayVisitExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayVisitExpr(ParserRulesParser.ArrayVisitExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#arraySizeDeclare}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArraySizeDeclare(ParserRulesParser.ArraySizeDeclareContext ctx);
	/**
	 * Visit a parse tree produced by {@link ParserRulesParser#atom}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAtom(ParserRulesParser.AtomContext ctx);
}