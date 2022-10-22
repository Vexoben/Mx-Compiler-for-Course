// Generated from F:/github/Mx-Compiler-for-Course/src/grammar/src\MxStar.g4 by ANTLR 4.10.1
package Frontend.parser;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MxStarParser}.
 */
public interface MxStarListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MxStarParser#mxstarcode}.
	 * @param ctx the parse tree
	 */
	void enterMxstarcode(MxStarParser.MxstarcodeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#mxstarcode}.
	 * @param ctx the parse tree
	 */
	void exitMxstarcode(MxStarParser.MxstarcodeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#buildinType_without_void}.
	 * @param ctx the parse tree
	 */
	void enterBuildinType_without_void(MxStarParser.BuildinType_without_voidContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#buildinType_without_void}.
	 * @param ctx the parse tree
	 */
	void exitBuildinType_without_void(MxStarParser.BuildinType_without_voidContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#buildinType_with_void}.
	 * @param ctx the parse tree
	 */
	void enterBuildinType_with_void(MxStarParser.BuildinType_with_voidContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#buildinType_with_void}.
	 * @param ctx the parse tree
	 */
	void exitBuildinType_with_void(MxStarParser.BuildinType_with_voidContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#varTypeDef}.
	 * @param ctx the parse tree
	 */
	void enterVarTypeDef(MxStarParser.VarTypeDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#varTypeDef}.
	 * @param ctx the parse tree
	 */
	void exitVarTypeDef(MxStarParser.VarTypeDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#varDefSingle}.
	 * @param ctx the parse tree
	 */
	void enterVarDefSingle(MxStarParser.VarDefSingleContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#varDefSingle}.
	 * @param ctx the parse tree
	 */
	void exitVarDefSingle(MxStarParser.VarDefSingleContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#varDefAnyNumber}.
	 * @param ctx the parse tree
	 */
	void enterVarDefAnyNumber(MxStarParser.VarDefAnyNumberContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#varDefAnyNumber}.
	 * @param ctx the parse tree
	 */
	void exitVarDefAnyNumber(MxStarParser.VarDefAnyNumberContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#varDefBlock}.
	 * @param ctx the parse tree
	 */
	void enterVarDefBlock(MxStarParser.VarDefBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#varDefBlock}.
	 * @param ctx the parse tree
	 */
	void exitVarDefBlock(MxStarParser.VarDefBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#funcTypeDef}.
	 * @param ctx the parse tree
	 */
	void enterFuncTypeDef(MxStarParser.FuncTypeDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#funcTypeDef}.
	 * @param ctx the parse tree
	 */
	void exitFuncTypeDef(MxStarParser.FuncTypeDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#funcDef}.
	 * @param ctx the parse tree
	 */
	void enterFuncDef(MxStarParser.FuncDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#funcDef}.
	 * @param ctx the parse tree
	 */
	void exitFuncDef(MxStarParser.FuncDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#funcArgs}.
	 * @param ctx the parse tree
	 */
	void enterFuncArgs(MxStarParser.FuncArgsContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#funcArgs}.
	 * @param ctx the parse tree
	 */
	void exitFuncArgs(MxStarParser.FuncArgsContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#funcBlock}.
	 * @param ctx the parse tree
	 */
	void enterFuncBlock(MxStarParser.FuncBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#funcBlock}.
	 * @param ctx the parse tree
	 */
	void exitFuncBlock(MxStarParser.FuncBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#funcCallArgs}.
	 * @param ctx the parse tree
	 */
	void enterFuncCallArgs(MxStarParser.FuncCallArgsContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#funcCallArgs}.
	 * @param ctx the parse tree
	 */
	void exitFuncCallArgs(MxStarParser.FuncCallArgsContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#funcStatement}.
	 * @param ctx the parse tree
	 */
	void enterFuncStatement(MxStarParser.FuncStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#funcStatement}.
	 * @param ctx the parse tree
	 */
	void exitFuncStatement(MxStarParser.FuncStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#classDef}.
	 * @param ctx the parse tree
	 */
	void enterClassDef(MxStarParser.ClassDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#classDef}.
	 * @param ctx the parse tree
	 */
	void exitClassDef(MxStarParser.ClassDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#classConstructor}.
	 * @param ctx the parse tree
	 */
	void enterClassConstructor(MxStarParser.ClassConstructorContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#classConstructor}.
	 * @param ctx the parse tree
	 */
	void exitClassConstructor(MxStarParser.ClassConstructorContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#ifBlock}.
	 * @param ctx the parse tree
	 */
	void enterIfBlock(MxStarParser.IfBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#ifBlock}.
	 * @param ctx the parse tree
	 */
	void exitIfBlock(MxStarParser.IfBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#whileBlock}.
	 * @param ctx the parse tree
	 */
	void enterWhileBlock(MxStarParser.WhileBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#whileBlock}.
	 * @param ctx the parse tree
	 */
	void exitWhileBlock(MxStarParser.WhileBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#forBlock}.
	 * @param ctx the parse tree
	 */
	void enterForBlock(MxStarParser.ForBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#forBlock}.
	 * @param ctx the parse tree
	 */
	void exitForBlock(MxStarParser.ForBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#initializationStatement}.
	 * @param ctx the parse tree
	 */
	void enterInitializationStatement(MxStarParser.InitializationStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#initializationStatement}.
	 * @param ctx the parse tree
	 */
	void exitInitializationStatement(MxStarParser.InitializationStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#forConditionExpression}.
	 * @param ctx the parse tree
	 */
	void enterForConditionExpression(MxStarParser.ForConditionExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#forConditionExpression}.
	 * @param ctx the parse tree
	 */
	void exitForConditionExpression(MxStarParser.ForConditionExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#stepExpression}.
	 * @param ctx the parse tree
	 */
	void enterStepExpression(MxStarParser.StepExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#stepExpression}.
	 * @param ctx the parse tree
	 */
	void exitStepExpression(MxStarParser.StepExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#jumpBlock}.
	 * @param ctx the parse tree
	 */
	void enterJumpBlock(MxStarParser.JumpBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#jumpBlock}.
	 * @param ctx the parse tree
	 */
	void exitJumpBlock(MxStarParser.JumpBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#atomicBlock}.
	 * @param ctx the parse tree
	 */
	void enterAtomicBlock(MxStarParser.AtomicBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#atomicBlock}.
	 * @param ctx the parse tree
	 */
	void exitAtomicBlock(MxStarParser.AtomicBlockContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PostfixExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPostfixExpr(MxStarParser.PostfixExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PostfixExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPostfixExpr(MxStarParser.PostfixExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code LambdaExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLambdaExpr(MxStarParser.LambdaExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code LambdaExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLambdaExpr(MxStarParser.LambdaExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BinaryExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBinaryExpr(MxStarParser.BinaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BinaryExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBinaryExpr(MxStarParser.BinaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NewExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterNewExpr(MxStarParser.NewExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NewExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitNewExpr(MxStarParser.NewExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MemberVisitExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterMemberVisitExpr(MxStarParser.MemberVisitExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MemberVisitExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitMemberVisitExpr(MxStarParser.MemberVisitExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ParenthesesExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterParenthesesExpr(MxStarParser.ParenthesesExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ParenthesesExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitParenthesesExpr(MxStarParser.ParenthesesExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AtomExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAtomExpr(MxStarParser.AtomExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AtomExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAtomExpr(MxStarParser.AtomExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterUnaryExpr(MxStarParser.UnaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitUnaryExpr(MxStarParser.UnaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PrefixExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPrefixExpr(MxStarParser.PrefixExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PrefixExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPrefixExpr(MxStarParser.PrefixExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssignExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAssignExpr(MxStarParser.AssignExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssignExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAssignExpr(MxStarParser.AssignExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code FuncCallExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFuncCallExpr(MxStarParser.FuncCallExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code FuncCallExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFuncCallExpr(MxStarParser.FuncCallExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ArrayVisitExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterArrayVisitExpr(MxStarParser.ArrayVisitExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ArrayVisitExpr}
	 * labeled alternative in {@link MxStarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitArrayVisitExpr(MxStarParser.ArrayVisitExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#arraySizeDeclare}.
	 * @param ctx the parse tree
	 */
	void enterArraySizeDeclare(MxStarParser.ArraySizeDeclareContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#arraySizeDeclare}.
	 * @param ctx the parse tree
	 */
	void exitArraySizeDeclare(MxStarParser.ArraySizeDeclareContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxStarParser#atom}.
	 * @param ctx the parse tree
	 */
	void enterAtom(MxStarParser.AtomContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxStarParser#atom}.
	 * @param ctx the parse tree
	 */
	void exitAtom(MxStarParser.AtomContext ctx);
}