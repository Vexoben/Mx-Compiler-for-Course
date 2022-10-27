// Generated from F:/github/Mx-Compiler-for-Course/src/Frontend/parser\MxStar.g4 by ANTLR 4.10.1
package Frontend.parser;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MxStarParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MxStarVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MxStarParser#mxstarcode}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMxstarcode(MxStarParser.MxstarcodeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#buildinType_without_void}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBuildinType_without_void(MxStarParser.BuildinType_without_voidContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#buildinType_with_void}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBuildinType_with_void(MxStarParser.BuildinType_with_voidContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#varTypeDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarTypeDef(MxStarParser.VarTypeDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#varDefSingle}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDefSingle(MxStarParser.VarDefSingleContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#varDefWithoutType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDefWithoutType(MxStarParser.VarDefWithoutTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#varDefAnyNumber}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDefAnyNumber(MxStarParser.VarDefAnyNumberContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#varDefBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDefBlock(MxStarParser.VarDefBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#funcTypeDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncTypeDef(MxStarParser.FuncTypeDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#funcDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncDef(MxStarParser.FuncDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#funcArgs}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncArgs(MxStarParser.FuncArgsContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#funcBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncBlock(MxStarParser.FuncBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#funcCallArgs}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncCallArgs(MxStarParser.FuncCallArgsContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#funcStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncStatement(MxStarParser.FuncStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#classDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassDef(MxStarParser.ClassDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#classConstructor}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassConstructor(MxStarParser.ClassConstructorContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#ifBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfBlock(MxStarParser.IfBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#whileBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileBlock(MxStarParser.WhileBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#forBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForBlock(MxStarParser.ForBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#initializationStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitializationStatement(MxStarParser.InitializationStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#forConditionExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForConditionExpression(MxStarParser.ForConditionExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#stepExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStepExpression(MxStarParser.StepExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#jumpBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitJumpBlock(MxStarParser.JumpBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#atomicBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAtomicBlock(MxStarParser.AtomicBlockContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PostfixExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPostfixExpr(MxStarParser.PostfixExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code LambdaExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambdaExpr(MxStarParser.LambdaExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BinaryExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryExpr(MxStarParser.BinaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NewExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewExpr(MxStarParser.NewExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code MemberVisitExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemberVisitExpr(MxStarParser.MemberVisitExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ParenthesesExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParenthesesExpr(MxStarParser.ParenthesesExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AtomExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAtomExpr(MxStarParser.AtomExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryExpr(MxStarParser.UnaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PrefixExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrefixExpr(MxStarParser.PrefixExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AssignExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignExpr(MxStarParser.AssignExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code FuncCallExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncCallExpr(MxStarParser.FuncCallExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ArrayVisitExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayVisitExpr(MxStarParser.ArrayVisitExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#arraySizeDeclare}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArraySizeDeclare(MxStarParser.ArraySizeDeclareContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxStarParser#atom}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAtom(MxStarParser.AtomContext ctx);
}