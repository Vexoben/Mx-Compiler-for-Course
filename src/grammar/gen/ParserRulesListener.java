package gen;// Generated from F:/github/Mx-Compiler-for-Course/src/grammar/src\ParserRules.g4 by ANTLR 4.10.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link ParserRulesParser}.
 */
public interface ParserRulesListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#mxstarcode}.
	 * @param ctx the parse tree
	 */
	void enterMxstarcode(ParserRulesParser.MxstarcodeContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#mxstarcode}.
	 * @param ctx the parse tree
	 */
	void exitMxstarcode(ParserRulesParser.MxstarcodeContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#buildinType_without_void}.
	 * @param ctx the parse tree
	 */
	void enterBuildinType_without_void(ParserRulesParser.BuildinType_without_voidContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#buildinType_without_void}.
	 * @param ctx the parse tree
	 */
	void exitBuildinType_without_void(ParserRulesParser.BuildinType_without_voidContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#buildinType_with_void}.
	 * @param ctx the parse tree
	 */
	void enterBuildinType_with_void(ParserRulesParser.BuildinType_with_voidContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#buildinType_with_void}.
	 * @param ctx the parse tree
	 */
	void exitBuildinType_with_void(ParserRulesParser.BuildinType_with_voidContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#varTypeDef}.
	 * @param ctx the parse tree
	 */
	void enterVarTypeDef(ParserRulesParser.VarTypeDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#varTypeDef}.
	 * @param ctx the parse tree
	 */
	void exitVarTypeDef(ParserRulesParser.VarTypeDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#varDefSingle}.
	 * @param ctx the parse tree
	 */
	void enterVarDefSingle(ParserRulesParser.VarDefSingleContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#varDefSingle}.
	 * @param ctx the parse tree
	 */
	void exitVarDefSingle(ParserRulesParser.VarDefSingleContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#varDefAnyNumber}.
	 * @param ctx the parse tree
	 */
	void enterVarDefAnyNumber(ParserRulesParser.VarDefAnyNumberContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#varDefAnyNumber}.
	 * @param ctx the parse tree
	 */
	void exitVarDefAnyNumber(ParserRulesParser.VarDefAnyNumberContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#varDefBlock}.
	 * @param ctx the parse tree
	 */
	void enterVarDefBlock(ParserRulesParser.VarDefBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#varDefBlock}.
	 * @param ctx the parse tree
	 */
	void exitVarDefBlock(ParserRulesParser.VarDefBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#funcTypeDef}.
	 * @param ctx the parse tree
	 */
	void enterFuncTypeDef(ParserRulesParser.FuncTypeDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#funcTypeDef}.
	 * @param ctx the parse tree
	 */
	void exitFuncTypeDef(ParserRulesParser.FuncTypeDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#funcDef}.
	 * @param ctx the parse tree
	 */
	void enterFuncDef(ParserRulesParser.FuncDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#funcDef}.
	 * @param ctx the parse tree
	 */
	void exitFuncDef(ParserRulesParser.FuncDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#funcArgs}.
	 * @param ctx the parse tree
	 */
	void enterFuncArgs(ParserRulesParser.FuncArgsContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#funcArgs}.
	 * @param ctx the parse tree
	 */
	void exitFuncArgs(ParserRulesParser.FuncArgsContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#funcBlock}.
	 * @param ctx the parse tree
	 */
	void enterFuncBlock(ParserRulesParser.FuncBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#funcBlock}.
	 * @param ctx the parse tree
	 */
	void exitFuncBlock(ParserRulesParser.FuncBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#funcCallArgs}.
	 * @param ctx the parse tree
	 */
	void enterFuncCallArgs(ParserRulesParser.FuncCallArgsContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#funcCallArgs}.
	 * @param ctx the parse tree
	 */
	void exitFuncCallArgs(ParserRulesParser.FuncCallArgsContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#funcStatement}.
	 * @param ctx the parse tree
	 */
	void enterFuncStatement(ParserRulesParser.FuncStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#funcStatement}.
	 * @param ctx the parse tree
	 */
	void exitFuncStatement(ParserRulesParser.FuncStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#classDef}.
	 * @param ctx the parse tree
	 */
	void enterClassDef(ParserRulesParser.ClassDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#classDef}.
	 * @param ctx the parse tree
	 */
	void exitClassDef(ParserRulesParser.ClassDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#classConstructor}.
	 * @param ctx the parse tree
	 */
	void enterClassConstructor(ParserRulesParser.ClassConstructorContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#classConstructor}.
	 * @param ctx the parse tree
	 */
	void exitClassConstructor(ParserRulesParser.ClassConstructorContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#ifBlock}.
	 * @param ctx the parse tree
	 */
	void enterIfBlock(ParserRulesParser.IfBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#ifBlock}.
	 * @param ctx the parse tree
	 */
	void exitIfBlock(ParserRulesParser.IfBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#whileBlock}.
	 * @param ctx the parse tree
	 */
	void enterWhileBlock(ParserRulesParser.WhileBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#whileBlock}.
	 * @param ctx the parse tree
	 */
	void exitWhileBlock(ParserRulesParser.WhileBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#forBlock}.
	 * @param ctx the parse tree
	 */
	void enterForBlock(ParserRulesParser.ForBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#forBlock}.
	 * @param ctx the parse tree
	 */
	void exitForBlock(ParserRulesParser.ForBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#initializationStatement}.
	 * @param ctx the parse tree
	 */
	void enterInitializationStatement(ParserRulesParser.InitializationStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#initializationStatement}.
	 * @param ctx the parse tree
	 */
	void exitInitializationStatement(ParserRulesParser.InitializationStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#forConditionExpression}.
	 * @param ctx the parse tree
	 */
	void enterForConditionExpression(ParserRulesParser.ForConditionExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#forConditionExpression}.
	 * @param ctx the parse tree
	 */
	void exitForConditionExpression(ParserRulesParser.ForConditionExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#stepExpression}.
	 * @param ctx the parse tree
	 */
	void enterStepExpression(ParserRulesParser.StepExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#stepExpression}.
	 * @param ctx the parse tree
	 */
	void exitStepExpression(ParserRulesParser.StepExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#jumpBlock}.
	 * @param ctx the parse tree
	 */
	void enterJumpBlock(ParserRulesParser.JumpBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#jumpBlock}.
	 * @param ctx the parse tree
	 */
	void exitJumpBlock(ParserRulesParser.JumpBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#atomicBlock}.
	 * @param ctx the parse tree
	 */
	void enterAtomicBlock(ParserRulesParser.AtomicBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#atomicBlock}.
	 * @param ctx the parse tree
	 */
	void exitAtomicBlock(ParserRulesParser.AtomicBlockContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PostfixExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPostfixExpr(ParserRulesParser.PostfixExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PostfixExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPostfixExpr(ParserRulesParser.PostfixExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code LambdaExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLambdaExpr(ParserRulesParser.LambdaExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code LambdaExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLambdaExpr(ParserRulesParser.LambdaExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BinaryExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBinaryExpr(ParserRulesParser.BinaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BinaryExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBinaryExpr(ParserRulesParser.BinaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NewExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterNewExpr(ParserRulesParser.NewExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NewExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitNewExpr(ParserRulesParser.NewExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MemberVisitExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterMemberVisitExpr(ParserRulesParser.MemberVisitExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MemberVisitExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitMemberVisitExpr(ParserRulesParser.MemberVisitExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ParenthesesExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterParenthesesExpr(ParserRulesParser.ParenthesesExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ParenthesesExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitParenthesesExpr(ParserRulesParser.ParenthesesExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AtomExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAtomExpr(ParserRulesParser.AtomExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AtomExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAtomExpr(ParserRulesParser.AtomExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterUnaryExpr(ParserRulesParser.UnaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitUnaryExpr(ParserRulesParser.UnaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PrefixExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPrefixExpr(ParserRulesParser.PrefixExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PrefixExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPrefixExpr(ParserRulesParser.PrefixExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssignExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAssignExpr(ParserRulesParser.AssignExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssignExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAssignExpr(ParserRulesParser.AssignExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code FuncCallExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFuncCallExpr(ParserRulesParser.FuncCallExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code FuncCallExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFuncCallExpr(ParserRulesParser.FuncCallExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ArrayVisitExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterArrayVisitExpr(ParserRulesParser.ArrayVisitExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ArrayVisitExpr}
	 * labeled alternative in {@link ParserRulesParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitArrayVisitExpr(ParserRulesParser.ArrayVisitExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#arraySizeDeclare}.
	 * @param ctx the parse tree
	 */
	void enterArraySizeDeclare(ParserRulesParser.ArraySizeDeclareContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#arraySizeDeclare}.
	 * @param ctx the parse tree
	 */
	void exitArraySizeDeclare(ParserRulesParser.ArraySizeDeclareContext ctx);
	/**
	 * Enter a parse tree produced by {@link ParserRulesParser#atom}.
	 * @param ctx the parse tree
	 */
	void enterAtom(ParserRulesParser.AtomContext ctx);
	/**
	 * Exit a parse tree produced by {@link ParserRulesParser#atom}.
	 * @param ctx the parse tree
	 */
	void exitAtom(ParserRulesParser.AtomContext ctx);
}