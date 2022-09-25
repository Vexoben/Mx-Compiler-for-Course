// Generated from C:/Users/26034/IdeaProjects/compiler/src\test.g4 by ANTLR 4.10.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link testParser}.
 */
public interface testListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link testParser#line}.
	 * @param ctx the parse tree
	 */
	void enterLine(testParser.LineContext ctx);
	/**
	 * Exit a parse tree produced by {@link testParser#line}.
	 * @param ctx the parse tree
	 */
	void exitLine(testParser.LineContext ctx);
	/**
	 * Enter a parse tree produced by the {@code multOrDiv}
	 * labeled alternative in {@link testParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMultOrDiv(testParser.MultOrDivContext ctx);
	/**
	 * Exit a parse tree produced by the {@code multOrDiv}
	 * labeled alternative in {@link testParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMultOrDiv(testParser.MultOrDivContext ctx);
	/**
	 * Enter a parse tree produced by the {@code addOrSubstract}
	 * labeled alternative in {@link testParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAddOrSubstract(testParser.AddOrSubstractContext ctx);
	/**
	 * Exit a parse tree produced by the {@code addOrSubstract}
	 * labeled alternative in {@link testParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAddOrSubstract(testParser.AddOrSubstractContext ctx);
	/**
	 * Enter a parse tree produced by the {@code float}
	 * labeled alternative in {@link testParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterFloat(testParser.FloatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code float}
	 * labeled alternative in {@link testParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitFloat(testParser.FloatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code parenExpr}
	 * labeled alternative in {@link testParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParenExpr(testParser.ParenExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code parenExpr}
	 * labeled alternative in {@link testParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParenExpr(testParser.ParenExprContext ctx);
}