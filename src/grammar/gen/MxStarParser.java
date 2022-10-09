// Generated from F:/github/Mx-Compiler-for-Course/src/grammar/src\MxStar.g4 by ANTLR 4.10.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxStarParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.10.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, Void=2, Bool=3, Int=4, String=5, New=6, Class=7, Null=8, True=9, 
		False=10, This=11, If=12, Else=13, For=14, While=15, Break=16, Continue=17, 
		Return=18, Add=19, Sub=20, Mul=21, Div=22, Mod=23, Less=24, Greater=25, 
		Leq=26, Geq=27, Equal=28, NotEqual=29, And=30, Or=31, Not=32, Xor=33, 
		AndBit=34, OrBit=35, ReverseBit=36, LeftShift=37, RightShift=38, Assign=39, 
		SelfAdd=40, SeflSub=41, Dot=42, LeftParen=43, Rightparen=44, LeftBracket=45, 
		RightBracket=46, LeftBrace=47, RightBrace=48, Colon=49, Question=50, Semicolon=51, 
		Arrow=52, Identifier=53, IntConst=54, StringConst=55, BlockComment=56, 
		LineComment=57, WhiteSpace=58, NewLine=59;
	public static final int
		RULE_mxstarcode = 0, RULE_buildinType_without_void = 1, RULE_buildinType_with_void = 2, 
		RULE_varTypeDef = 3, RULE_varDefSingle = 4, RULE_varDefAnyNumber = 5, 
		RULE_varDefBlock = 6, RULE_funcTypeDef = 7, RULE_funcDef = 8, RULE_funcArgs = 9, 
		RULE_funcBlock = 10, RULE_funcCallArgs = 11, RULE_funcStatement = 12, 
		RULE_classDef = 13, RULE_classConstructor = 14, RULE_ifBlock = 15, RULE_whileBlock = 16, 
		RULE_forBlock = 17, RULE_initializationStatement = 18, RULE_forConditionExpression = 19, 
		RULE_stepExpression = 20, RULE_jumpBlock = 21, RULE_atomicBlock = 22, 
		RULE_expression = 23, RULE_arraySizeDeclare = 24, RULE_atom = 25;
	private static String[] makeRuleNames() {
		return new String[] {
			"mxstarcode", "buildinType_without_void", "buildinType_with_void", "varTypeDef", 
			"varDefSingle", "varDefAnyNumber", "varDefBlock", "funcTypeDef", "funcDef", 
			"funcArgs", "funcBlock", "funcCallArgs", "funcStatement", "classDef", 
			"classConstructor", "ifBlock", "whileBlock", "forBlock", "initializationStatement", 
			"forConditionExpression", "stepExpression", "jumpBlock", "atomicBlock", 
			"expression", "arraySizeDeclare", "atom"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "','", "'void'", "'bool'", "'int'", "'string'", "'new'", "'class'", 
			"'null'", "'true'", "'false'", "'this'", "'if'", "'else'", "'for'", "'while'", 
			"'break'", "'continue'", "'return'", "'+'", "'-'", "'*'", "'/'", "'%'", 
			"'<'", "'>'", "'<='", "'>='", "'=='", "'!='", "'&&'", "'||'", "'!'", 
			"'^'", "'&'", "'|'", "'~'", "'<<'", "'>>'", "'='", "'++'", "'--'", "'.'", 
			"'('", "')'", "'['", "']'", "'{'", "'}'", "':'", "'?'", "';'", "'->'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, "Void", "Bool", "Int", "String", "New", "Class", "Null", 
			"True", "False", "This", "If", "Else", "For", "While", "Break", "Continue", 
			"Return", "Add", "Sub", "Mul", "Div", "Mod", "Less", "Greater", "Leq", 
			"Geq", "Equal", "NotEqual", "And", "Or", "Not", "Xor", "AndBit", "OrBit", 
			"ReverseBit", "LeftShift", "RightShift", "Assign", "SelfAdd", "SeflSub", 
			"Dot", "LeftParen", "Rightparen", "LeftBracket", "RightBracket", "LeftBrace", 
			"RightBrace", "Colon", "Question", "Semicolon", "Arrow", "Identifier", 
			"IntConst", "StringConst", "BlockComment", "LineComment", "WhiteSpace", 
			"NewLine"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "MxStar.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MxStarParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class MxstarcodeContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(MxStarParser.EOF, 0); }
		public List<ClassDefContext> classDef() {
			return getRuleContexts(ClassDefContext.class);
		}
		public ClassDefContext classDef(int i) {
			return getRuleContext(ClassDefContext.class,i);
		}
		public List<FuncDefContext> funcDef() {
			return getRuleContexts(FuncDefContext.class);
		}
		public FuncDefContext funcDef(int i) {
			return getRuleContext(FuncDefContext.class,i);
		}
		public List<VarDefBlockContext> varDefBlock() {
			return getRuleContexts(VarDefBlockContext.class);
		}
		public VarDefBlockContext varDefBlock(int i) {
			return getRuleContext(VarDefBlockContext.class,i);
		}
		public MxstarcodeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mxstarcode; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterMxstarcode(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitMxstarcode(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitMxstarcode(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MxstarcodeContext mxstarcode() throws RecognitionException {
		MxstarcodeContext _localctx = new MxstarcodeContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_mxstarcode);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(57);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Void) | (1L << Bool) | (1L << Int) | (1L << String) | (1L << Class) | (1L << Identifier))) != 0)) {
				{
				setState(55);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(52);
					classDef();
					}
					break;
				case 2:
					{
					setState(53);
					funcDef();
					}
					break;
				case 3:
					{
					setState(54);
					varDefBlock();
					}
					break;
				}
				}
				setState(59);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(60);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BuildinType_without_voidContext extends ParserRuleContext {
		public TerminalNode Int() { return getToken(MxStarParser.Int, 0); }
		public TerminalNode Bool() { return getToken(MxStarParser.Bool, 0); }
		public TerminalNode String() { return getToken(MxStarParser.String, 0); }
		public BuildinType_without_voidContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_buildinType_without_void; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterBuildinType_without_void(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitBuildinType_without_void(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitBuildinType_without_void(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BuildinType_without_voidContext buildinType_without_void() throws RecognitionException {
		BuildinType_without_voidContext _localctx = new BuildinType_without_voidContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_buildinType_without_void);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(62);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Bool) | (1L << Int) | (1L << String))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BuildinType_with_voidContext extends ParserRuleContext {
		public BuildinType_without_voidContext buildinType_without_void() {
			return getRuleContext(BuildinType_without_voidContext.class,0);
		}
		public TerminalNode Void() { return getToken(MxStarParser.Void, 0); }
		public BuildinType_with_voidContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_buildinType_with_void; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterBuildinType_with_void(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitBuildinType_with_void(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitBuildinType_with_void(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BuildinType_with_voidContext buildinType_with_void() throws RecognitionException {
		BuildinType_with_voidContext _localctx = new BuildinType_with_voidContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_buildinType_with_void);
		try {
			setState(66);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Bool:
			case Int:
			case String:
				enterOuterAlt(_localctx, 1);
				{
				setState(64);
				buildinType_without_void();
				}
				break;
			case Void:
				enterOuterAlt(_localctx, 2);
				{
				setState(65);
				match(Void);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarTypeDefContext extends ParserRuleContext {
		public TerminalNode Int() { return getToken(MxStarParser.Int, 0); }
		public TerminalNode Bool() { return getToken(MxStarParser.Bool, 0); }
		public TerminalNode String() { return getToken(MxStarParser.String, 0); }
		public TerminalNode Identifier() { return getToken(MxStarParser.Identifier, 0); }
		public List<TerminalNode> LeftBracket() { return getTokens(MxStarParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxStarParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxStarParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxStarParser.RightBracket, i);
		}
		public VarTypeDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varTypeDef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterVarTypeDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitVarTypeDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitVarTypeDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarTypeDefContext varTypeDef() throws RecognitionException {
		VarTypeDefContext _localctx = new VarTypeDefContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_varTypeDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(68);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Bool) | (1L << Int) | (1L << String) | (1L << Identifier))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			setState(73);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==LeftBracket) {
				{
				{
				setState(69);
				match(LeftBracket);
				setState(70);
				match(RightBracket);
				}
				}
				setState(75);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarDefSingleContext extends ParserRuleContext {
		public VarTypeDefContext varTypeDef() {
			return getRuleContext(VarTypeDefContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxStarParser.Identifier, 0); }
		public TerminalNode Assign() { return getToken(MxStarParser.Assign, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public VarDefSingleContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDefSingle; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterVarDefSingle(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitVarDefSingle(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitVarDefSingle(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarDefSingleContext varDefSingle() throws RecognitionException {
		VarDefSingleContext _localctx = new VarDefSingleContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_varDefSingle);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(76);
			varTypeDef();
			setState(77);
			match(Identifier);
			setState(80);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Assign) {
				{
				setState(78);
				match(Assign);
				setState(79);
				expression(0);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarDefAnyNumberContext extends ParserRuleContext {
		public VarTypeDefContext varTypeDef() {
			return getRuleContext(VarTypeDefContext.class,0);
		}
		public List<TerminalNode> Identifier() { return getTokens(MxStarParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(MxStarParser.Identifier, i);
		}
		public List<TerminalNode> Assign() { return getTokens(MxStarParser.Assign); }
		public TerminalNode Assign(int i) {
			return getToken(MxStarParser.Assign, i);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public VarDefAnyNumberContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDefAnyNumber; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterVarDefAnyNumber(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitVarDefAnyNumber(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitVarDefAnyNumber(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarDefAnyNumberContext varDefAnyNumber() throws RecognitionException {
		VarDefAnyNumberContext _localctx = new VarDefAnyNumberContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_varDefAnyNumber);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(82);
			varTypeDef();
			setState(83);
			match(Identifier);
			setState(86);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Assign) {
				{
				setState(84);
				match(Assign);
				setState(85);
				expression(0);
				}
			}

			setState(96);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__0) {
				{
				{
				setState(88);
				match(T__0);
				setState(89);
				match(Identifier);
				setState(92);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==Assign) {
					{
					setState(90);
					match(Assign);
					setState(91);
					expression(0);
					}
				}

				}
				}
				setState(98);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarDefBlockContext extends ParserRuleContext {
		public VarDefAnyNumberContext varDefAnyNumber() {
			return getRuleContext(VarDefAnyNumberContext.class,0);
		}
		public TerminalNode Semicolon() { return getToken(MxStarParser.Semicolon, 0); }
		public VarDefBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDefBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterVarDefBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitVarDefBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitVarDefBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarDefBlockContext varDefBlock() throws RecognitionException {
		VarDefBlockContext _localctx = new VarDefBlockContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_varDefBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(99);
			varDefAnyNumber();
			setState(100);
			match(Semicolon);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FuncTypeDefContext extends ParserRuleContext {
		public VarTypeDefContext varTypeDef() {
			return getRuleContext(VarTypeDefContext.class,0);
		}
		public TerminalNode Void() { return getToken(MxStarParser.Void, 0); }
		public FuncTypeDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcTypeDef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterFuncTypeDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitFuncTypeDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitFuncTypeDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FuncTypeDefContext funcTypeDef() throws RecognitionException {
		FuncTypeDefContext _localctx = new FuncTypeDefContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_funcTypeDef);
		try {
			setState(104);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Bool:
			case Int:
			case String:
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(102);
				varTypeDef();
				}
				break;
			case Void:
				enterOuterAlt(_localctx, 2);
				{
				setState(103);
				match(Void);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FuncDefContext extends ParserRuleContext {
		public FuncTypeDefContext funcTypeDef() {
			return getRuleContext(FuncTypeDefContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxStarParser.Identifier, 0); }
		public TerminalNode LeftParen() { return getToken(MxStarParser.LeftParen, 0); }
		public FuncArgsContext funcArgs() {
			return getRuleContext(FuncArgsContext.class,0);
		}
		public TerminalNode Rightparen() { return getToken(MxStarParser.Rightparen, 0); }
		public FuncBlockContext funcBlock() {
			return getRuleContext(FuncBlockContext.class,0);
		}
		public FuncDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcDef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterFuncDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitFuncDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitFuncDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FuncDefContext funcDef() throws RecognitionException {
		FuncDefContext _localctx = new FuncDefContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_funcDef);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(106);
			funcTypeDef();
			setState(107);
			match(Identifier);
			setState(108);
			match(LeftParen);
			setState(109);
			funcArgs();
			setState(110);
			match(Rightparen);
			setState(111);
			funcBlock();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FuncArgsContext extends ParserRuleContext {
		public List<VarTypeDefContext> varTypeDef() {
			return getRuleContexts(VarTypeDefContext.class);
		}
		public VarTypeDefContext varTypeDef(int i) {
			return getRuleContext(VarTypeDefContext.class,i);
		}
		public List<TerminalNode> Identifier() { return getTokens(MxStarParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(MxStarParser.Identifier, i);
		}
		public FuncArgsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcArgs; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterFuncArgs(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitFuncArgs(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitFuncArgs(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FuncArgsContext funcArgs() throws RecognitionException {
		FuncArgsContext _localctx = new FuncArgsContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_funcArgs);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(125);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Bool) | (1L << Int) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				{
				setState(113);
				varTypeDef();
				setState(114);
				match(Identifier);
				}
				setState(122);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__0) {
					{
					{
					setState(116);
					match(T__0);
					setState(117);
					varTypeDef();
					setState(118);
					match(Identifier);
					}
					}
					setState(124);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FuncBlockContext extends ParserRuleContext {
		public TerminalNode LeftBrace() { return getToken(MxStarParser.LeftBrace, 0); }
		public FuncStatementContext funcStatement() {
			return getRuleContext(FuncStatementContext.class,0);
		}
		public TerminalNode RightBrace() { return getToken(MxStarParser.RightBrace, 0); }
		public FuncBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterFuncBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitFuncBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitFuncBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FuncBlockContext funcBlock() throws RecognitionException {
		FuncBlockContext _localctx = new FuncBlockContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_funcBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(127);
			match(LeftBrace);
			setState(128);
			funcStatement();
			setState(129);
			match(RightBrace);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FuncCallArgsContext extends ParserRuleContext {
		public TerminalNode LeftParen() { return getToken(MxStarParser.LeftParen, 0); }
		public TerminalNode Rightparen() { return getToken(MxStarParser.Rightparen, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public FuncCallArgsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcCallArgs; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterFuncCallArgs(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitFuncCallArgs(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitFuncCallArgs(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FuncCallArgsContext funcCallArgs() throws RecognitionException {
		FuncCallArgsContext _localctx = new FuncCallArgsContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_funcCallArgs);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(131);
			match(LeftParen);
			setState(140);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << New) | (1L << Null) | (1L << True) | (1L << False) | (1L << This) | (1L << Add) | (1L << Sub) | (1L << Not) | (1L << ReverseBit) | (1L << SelfAdd) | (1L << SeflSub) | (1L << LeftBracket) | (1L << LeftBrace) | (1L << Identifier) | (1L << IntConst) | (1L << StringConst))) != 0)) {
				{
				setState(132);
				expression(0);
				setState(137);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__0) {
					{
					{
					setState(133);
					match(T__0);
					setState(134);
					expression(0);
					}
					}
					setState(139);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(142);
			match(Rightparen);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FuncStatementContext extends ParserRuleContext {
		public FuncBlockContext funcBlock() {
			return getRuleContext(FuncBlockContext.class,0);
		}
		public IfBlockContext ifBlock() {
			return getRuleContext(IfBlockContext.class,0);
		}
		public WhileBlockContext whileBlock() {
			return getRuleContext(WhileBlockContext.class,0);
		}
		public ForBlockContext forBlock() {
			return getRuleContext(ForBlockContext.class,0);
		}
		public JumpBlockContext jumpBlock() {
			return getRuleContext(JumpBlockContext.class,0);
		}
		public VarDefBlockContext varDefBlock() {
			return getRuleContext(VarDefBlockContext.class,0);
		}
		public AtomicBlockContext atomicBlock() {
			return getRuleContext(AtomicBlockContext.class,0);
		}
		public FuncStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterFuncStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitFuncStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitFuncStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FuncStatementContext funcStatement() throws RecognitionException {
		FuncStatementContext _localctx = new FuncStatementContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_funcStatement);
		try {
			setState(151);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(144);
				funcBlock();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(145);
				ifBlock();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(146);
				whileBlock();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(147);
				forBlock();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(148);
				jumpBlock();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(149);
				varDefBlock();
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(150);
				atomicBlock();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassDefContext extends ParserRuleContext {
		public TerminalNode Class() { return getToken(MxStarParser.Class, 0); }
		public TerminalNode Identifier() { return getToken(MxStarParser.Identifier, 0); }
		public TerminalNode LeftBrace() { return getToken(MxStarParser.LeftBrace, 0); }
		public TerminalNode RightBrace() { return getToken(MxStarParser.RightBrace, 0); }
		public TerminalNode Semicolon() { return getToken(MxStarParser.Semicolon, 0); }
		public List<FuncDefContext> funcDef() {
			return getRuleContexts(FuncDefContext.class);
		}
		public FuncDefContext funcDef(int i) {
			return getRuleContext(FuncDefContext.class,i);
		}
		public List<VarDefBlockContext> varDefBlock() {
			return getRuleContexts(VarDefBlockContext.class);
		}
		public VarDefBlockContext varDefBlock(int i) {
			return getRuleContext(VarDefBlockContext.class,i);
		}
		public ClassConstructorContext classConstructor() {
			return getRuleContext(ClassConstructorContext.class,0);
		}
		public ClassDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterClassDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitClassDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitClassDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassDefContext classDef() throws RecognitionException {
		ClassDefContext _localctx = new ClassDefContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_classDef);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(153);
			match(Class);
			setState(154);
			match(Identifier);
			setState(155);
			match(LeftBrace);
			setState(160);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,15,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					setState(158);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
					case 1:
						{
						setState(156);
						funcDef();
						}
						break;
					case 2:
						{
						setState(157);
						varDefBlock();
						}
						break;
					}
					} 
				}
				setState(162);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,15,_ctx);
			}
			setState(164);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				{
				setState(163);
				classConstructor();
				}
				break;
			}
			setState(170);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Void) | (1L << Bool) | (1L << Int) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(168);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
				case 1:
					{
					setState(166);
					funcDef();
					}
					break;
				case 2:
					{
					setState(167);
					varDefBlock();
					}
					break;
				}
				}
				setState(172);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(173);
			match(RightBrace);
			setState(174);
			match(Semicolon);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassConstructorContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxStarParser.Identifier, 0); }
		public TerminalNode LeftParen() { return getToken(MxStarParser.LeftParen, 0); }
		public TerminalNode Rightparen() { return getToken(MxStarParser.Rightparen, 0); }
		public FuncBlockContext funcBlock() {
			return getRuleContext(FuncBlockContext.class,0);
		}
		public ClassConstructorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classConstructor; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterClassConstructor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitClassConstructor(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitClassConstructor(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassConstructorContext classConstructor() throws RecognitionException {
		ClassConstructorContext _localctx = new ClassConstructorContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_classConstructor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(176);
			match(Identifier);
			setState(177);
			match(LeftParen);
			setState(178);
			match(Rightparen);
			setState(179);
			funcBlock();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IfBlockContext extends ParserRuleContext {
		public TerminalNode If() { return getToken(MxStarParser.If, 0); }
		public TerminalNode LeftParen() { return getToken(MxStarParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Rightparen() { return getToken(MxStarParser.Rightparen, 0); }
		public List<FuncStatementContext> funcStatement() {
			return getRuleContexts(FuncStatementContext.class);
		}
		public FuncStatementContext funcStatement(int i) {
			return getRuleContext(FuncStatementContext.class,i);
		}
		public TerminalNode Else() { return getToken(MxStarParser.Else, 0); }
		public IfBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterIfBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitIfBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitIfBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final IfBlockContext ifBlock() throws RecognitionException {
		IfBlockContext _localctx = new IfBlockContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_ifBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(181);
			match(If);
			setState(182);
			match(LeftParen);
			setState(183);
			expression(0);
			setState(184);
			match(Rightparen);
			setState(185);
			funcStatement();
			setState(188);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				{
				setState(186);
				match(Else);
				setState(187);
				funcStatement();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class WhileBlockContext extends ParserRuleContext {
		public TerminalNode While() { return getToken(MxStarParser.While, 0); }
		public TerminalNode LeftParen() { return getToken(MxStarParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Rightparen() { return getToken(MxStarParser.Rightparen, 0); }
		public FuncStatementContext funcStatement() {
			return getRuleContext(FuncStatementContext.class,0);
		}
		public WhileBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whileBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterWhileBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitWhileBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitWhileBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final WhileBlockContext whileBlock() throws RecognitionException {
		WhileBlockContext _localctx = new WhileBlockContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_whileBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(190);
			match(While);
			setState(191);
			match(LeftParen);
			setState(192);
			expression(0);
			setState(193);
			match(Rightparen);
			setState(194);
			funcStatement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForBlockContext extends ParserRuleContext {
		public TerminalNode For() { return getToken(MxStarParser.For, 0); }
		public TerminalNode LeftParen() { return getToken(MxStarParser.LeftParen, 0); }
		public List<TerminalNode> Semicolon() { return getTokens(MxStarParser.Semicolon); }
		public TerminalNode Semicolon(int i) {
			return getToken(MxStarParser.Semicolon, i);
		}
		public TerminalNode Rightparen() { return getToken(MxStarParser.Rightparen, 0); }
		public FuncStatementContext funcStatement() {
			return getRuleContext(FuncStatementContext.class,0);
		}
		public InitializationStatementContext initializationStatement() {
			return getRuleContext(InitializationStatementContext.class,0);
		}
		public ForConditionExpressionContext forConditionExpression() {
			return getRuleContext(ForConditionExpressionContext.class,0);
		}
		public StepExpressionContext stepExpression() {
			return getRuleContext(StepExpressionContext.class,0);
		}
		public ForBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterForBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitForBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitForBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForBlockContext forBlock() throws RecognitionException {
		ForBlockContext _localctx = new ForBlockContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_forBlock);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(196);
			match(For);
			setState(197);
			match(LeftParen);
			setState(199);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Bool) | (1L << Int) | (1L << String) | (1L << New) | (1L << Null) | (1L << True) | (1L << False) | (1L << This) | (1L << Add) | (1L << Sub) | (1L << Not) | (1L << ReverseBit) | (1L << SelfAdd) | (1L << SeflSub) | (1L << LeftBracket) | (1L << LeftBrace) | (1L << Identifier) | (1L << IntConst) | (1L << StringConst))) != 0)) {
				{
				setState(198);
				initializationStatement();
				}
			}

			setState(201);
			match(Semicolon);
			setState(203);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << New) | (1L << Null) | (1L << True) | (1L << False) | (1L << This) | (1L << Add) | (1L << Sub) | (1L << Not) | (1L << ReverseBit) | (1L << SelfAdd) | (1L << SeflSub) | (1L << LeftBracket) | (1L << LeftBrace) | (1L << Identifier) | (1L << IntConst) | (1L << StringConst))) != 0)) {
				{
				setState(202);
				forConditionExpression();
				}
			}

			setState(205);
			match(Semicolon);
			setState(207);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << New) | (1L << Null) | (1L << True) | (1L << False) | (1L << This) | (1L << Add) | (1L << Sub) | (1L << Not) | (1L << ReverseBit) | (1L << SelfAdd) | (1L << SeflSub) | (1L << LeftBracket) | (1L << LeftBrace) | (1L << Identifier) | (1L << IntConst) | (1L << StringConst))) != 0)) {
				{
				setState(206);
				stepExpression();
				}
			}

			setState(209);
			match(Rightparen);
			setState(210);
			funcStatement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class InitializationStatementContext extends ParserRuleContext {
		public VarDefAnyNumberContext varDefAnyNumber() {
			return getRuleContext(VarDefAnyNumberContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public InitializationStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_initializationStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterInitializationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitInitializationStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitInitializationStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InitializationStatementContext initializationStatement() throws RecognitionException {
		InitializationStatementContext _localctx = new InitializationStatementContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_initializationStatement);
		try {
			setState(214);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,23,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(212);
				varDefAnyNumber();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(213);
				expression(0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForConditionExpressionContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ForConditionExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forConditionExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterForConditionExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitForConditionExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitForConditionExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForConditionExpressionContext forConditionExpression() throws RecognitionException {
		ForConditionExpressionContext _localctx = new ForConditionExpressionContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_forConditionExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(216);
			expression(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StepExpressionContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public StepExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stepExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterStepExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitStepExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitStepExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StepExpressionContext stepExpression() throws RecognitionException {
		StepExpressionContext _localctx = new StepExpressionContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_stepExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(218);
			expression(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class JumpBlockContext extends ParserRuleContext {
		public TerminalNode Semicolon() { return getToken(MxStarParser.Semicolon, 0); }
		public TerminalNode Return() { return getToken(MxStarParser.Return, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Continue() { return getToken(MxStarParser.Continue, 0); }
		public TerminalNode Break() { return getToken(MxStarParser.Break, 0); }
		public JumpBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_jumpBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterJumpBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitJumpBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitJumpBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final JumpBlockContext jumpBlock() throws RecognitionException {
		JumpBlockContext _localctx = new JumpBlockContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_jumpBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(224);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Return:
				{
				setState(220);
				match(Return);
				setState(221);
				expression(0);
				}
				break;
			case Continue:
				{
				setState(222);
				match(Continue);
				}
				break;
			case Break:
				{
				setState(223);
				match(Break);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(226);
			match(Semicolon);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AtomicBlockContext extends ParserRuleContext {
		public TerminalNode Semicolon() { return getToken(MxStarParser.Semicolon, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public AtomicBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_atomicBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterAtomicBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitAtomicBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitAtomicBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AtomicBlockContext atomicBlock() throws RecognitionException {
		AtomicBlockContext _localctx = new AtomicBlockContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_atomicBlock);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(229);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << New) | (1L << Null) | (1L << True) | (1L << False) | (1L << This) | (1L << Add) | (1L << Sub) | (1L << Not) | (1L << ReverseBit) | (1L << SelfAdd) | (1L << SeflSub) | (1L << LeftBracket) | (1L << LeftBrace) | (1L << Identifier) | (1L << IntConst) | (1L << StringConst))) != 0)) {
				{
				setState(228);
				expression(0);
				}
			}

			setState(231);
			match(Semicolon);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class PostfixExprContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SelfAdd() { return getToken(MxStarParser.SelfAdd, 0); }
		public TerminalNode SeflSub() { return getToken(MxStarParser.SeflSub, 0); }
		public PostfixExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterPostfixExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitPostfixExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitPostfixExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class LambdaExprContext extends ExpressionContext {
		public TerminalNode LeftBracket() { return getToken(MxStarParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxStarParser.RightBracket, 0); }
		public TerminalNode Arrow() { return getToken(MxStarParser.Arrow, 0); }
		public FuncBlockContext funcBlock() {
			return getRuleContext(FuncBlockContext.class,0);
		}
		public FuncCallArgsContext funcCallArgs() {
			return getRuleContext(FuncCallArgsContext.class,0);
		}
		public TerminalNode AndBit() { return getToken(MxStarParser.AndBit, 0); }
		public TerminalNode LeftParen() { return getToken(MxStarParser.LeftParen, 0); }
		public FuncArgsContext funcArgs() {
			return getRuleContext(FuncArgsContext.class,0);
		}
		public TerminalNode Rightparen() { return getToken(MxStarParser.Rightparen, 0); }
		public LambdaExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterLambdaExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitLambdaExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitLambdaExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BinaryExprContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode Mul() { return getToken(MxStarParser.Mul, 0); }
		public TerminalNode Div() { return getToken(MxStarParser.Div, 0); }
		public TerminalNode Mod() { return getToken(MxStarParser.Mod, 0); }
		public TerminalNode Add() { return getToken(MxStarParser.Add, 0); }
		public TerminalNode Sub() { return getToken(MxStarParser.Sub, 0); }
		public TerminalNode LeftShift() { return getToken(MxStarParser.LeftShift, 0); }
		public TerminalNode RightShift() { return getToken(MxStarParser.RightShift, 0); }
		public TerminalNode Less() { return getToken(MxStarParser.Less, 0); }
		public TerminalNode Leq() { return getToken(MxStarParser.Leq, 0); }
		public TerminalNode Greater() { return getToken(MxStarParser.Greater, 0); }
		public TerminalNode Geq() { return getToken(MxStarParser.Geq, 0); }
		public TerminalNode Equal() { return getToken(MxStarParser.Equal, 0); }
		public TerminalNode NotEqual() { return getToken(MxStarParser.NotEqual, 0); }
		public TerminalNode AndBit() { return getToken(MxStarParser.AndBit, 0); }
		public TerminalNode Xor() { return getToken(MxStarParser.Xor, 0); }
		public TerminalNode OrBit() { return getToken(MxStarParser.OrBit, 0); }
		public TerminalNode And() { return getToken(MxStarParser.And, 0); }
		public TerminalNode Or() { return getToken(MxStarParser.Or, 0); }
		public BinaryExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterBinaryExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitBinaryExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitBinaryExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NewExprContext extends ExpressionContext {
		public TerminalNode New() { return getToken(MxStarParser.New, 0); }
		public BuildinType_without_voidContext buildinType_without_void() {
			return getRuleContext(BuildinType_without_voidContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxStarParser.Identifier, 0); }
		public List<ArraySizeDeclareContext> arraySizeDeclare() {
			return getRuleContexts(ArraySizeDeclareContext.class);
		}
		public ArraySizeDeclareContext arraySizeDeclare(int i) {
			return getRuleContext(ArraySizeDeclareContext.class,i);
		}
		public NewExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterNewExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitNewExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitNewExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class MemberVisitExprContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Dot() { return getToken(MxStarParser.Dot, 0); }
		public TerminalNode Identifier() { return getToken(MxStarParser.Identifier, 0); }
		public MemberVisitExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterMemberVisitExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitMemberVisitExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitMemberVisitExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ParenthesesExprContext extends ExpressionContext {
		public TerminalNode LeftBrace() { return getToken(MxStarParser.LeftBrace, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightBrace() { return getToken(MxStarParser.RightBrace, 0); }
		public ParenthesesExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterParenthesesExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitParenthesesExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitParenthesesExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class AtomExprContext extends ExpressionContext {
		public AtomContext atom() {
			return getRuleContext(AtomContext.class,0);
		}
		public AtomExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterAtomExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitAtomExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitAtomExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class UnaryExprContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Add() { return getToken(MxStarParser.Add, 0); }
		public TerminalNode Sub() { return getToken(MxStarParser.Sub, 0); }
		public TerminalNode Not() { return getToken(MxStarParser.Not, 0); }
		public TerminalNode ReverseBit() { return getToken(MxStarParser.ReverseBit, 0); }
		public UnaryExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterUnaryExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitUnaryExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitUnaryExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class PrefixExprContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SelfAdd() { return getToken(MxStarParser.SelfAdd, 0); }
		public TerminalNode SeflSub() { return getToken(MxStarParser.SeflSub, 0); }
		public PrefixExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterPrefixExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitPrefixExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitPrefixExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class AssignExprContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode Assign() { return getToken(MxStarParser.Assign, 0); }
		public AssignExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterAssignExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitAssignExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitAssignExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class FuncCallExprContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public FuncCallArgsContext funcCallArgs() {
			return getRuleContext(FuncCallArgsContext.class,0);
		}
		public FuncCallExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterFuncCallExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitFuncCallExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitFuncCallExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ArrayVisitExprContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode LeftBracket() { return getToken(MxStarParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxStarParser.RightBracket, 0); }
		public ArrayVisitExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterArrayVisitExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitArrayVisitExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitArrayVisitExpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 46;
		enterRecursionRule(_localctx, 46, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(271);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Null:
			case True:
			case False:
			case This:
			case Identifier:
			case IntConst:
			case StringConst:
				{
				_localctx = new AtomExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(234);
				atom();
				}
				break;
			case LeftBrace:
				{
				_localctx = new ParenthesesExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(235);
				match(LeftBrace);
				setState(236);
				expression(0);
				setState(237);
				match(RightBrace);
				}
				break;
			case New:
				{
				_localctx = new NewExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(239);
				match(New);
				setState(242);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case Bool:
				case Int:
				case String:
					{
					setState(240);
					buildinType_without_void();
					}
					break;
				case Identifier:
					{
					setState(241);
					match(Identifier);
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(247);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(244);
						arraySizeDeclare();
						}
						} 
					}
					setState(249);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
				}
				}
				break;
			case LeftBracket:
				{
				_localctx = new LambdaExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(250);
				match(LeftBracket);
				setState(252);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==AndBit) {
					{
					setState(251);
					match(AndBit);
					}
				}

				setState(254);
				match(RightBracket);
				setState(259);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==LeftParen) {
					{
					setState(255);
					match(LeftParen);
					setState(256);
					funcArgs();
					setState(257);
					match(Rightparen);
					}
				}

				setState(261);
				match(Arrow);
				setState(262);
				funcBlock();
				setState(263);
				funcCallArgs();
				}
				break;
			case SelfAdd:
			case SeflSub:
				{
				_localctx = new PrefixExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(265);
				((PrefixExprContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==SelfAdd || _la==SeflSub) ) {
					((PrefixExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(266);
				expression(14);
				}
				break;
			case Add:
			case Sub:
				{
				_localctx = new UnaryExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(267);
				((UnaryExprContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==Add || _la==Sub) ) {
					((UnaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(268);
				expression(13);
				}
				break;
			case Not:
			case ReverseBit:
				{
				_localctx = new UnaryExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(269);
				((UnaryExprContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==Not || _la==ReverseBit) ) {
					((UnaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(270);
				expression(12);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(320);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,32,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(318);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,31,_ctx) ) {
					case 1:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(273);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(274);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Mul) | (1L << Div) | (1L << Mod))) != 0)) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(275);
						expression(12);
						}
						break;
					case 2:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(276);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(277);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Add || _la==Sub) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(278);
						expression(11);
						}
						break;
					case 3:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(279);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(280);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==LeftShift || _la==RightShift) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(281);
						expression(10);
						}
						break;
					case 4:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(282);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(283);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Less) | (1L << Greater) | (1L << Leq) | (1L << Geq))) != 0)) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(284);
						expression(9);
						}
						break;
					case 5:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(285);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(286);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Equal || _la==NotEqual) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(287);
						expression(8);
						}
						break;
					case 6:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(288);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(289);
						((BinaryExprContext)_localctx).op = match(AndBit);
						setState(290);
						expression(7);
						}
						break;
					case 7:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(291);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(292);
						((BinaryExprContext)_localctx).op = match(Xor);
						setState(293);
						expression(6);
						}
						break;
					case 8:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(294);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(295);
						((BinaryExprContext)_localctx).op = match(OrBit);
						setState(296);
						expression(5);
						}
						break;
					case 9:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(297);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(298);
						((BinaryExprContext)_localctx).op = match(And);
						setState(299);
						expression(4);
						}
						break;
					case 10:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(300);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(301);
						((BinaryExprContext)_localctx).op = match(Or);
						setState(302);
						expression(3);
						}
						break;
					case 11:
						{
						_localctx = new AssignExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(303);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(304);
						((AssignExprContext)_localctx).op = match(Assign);
						setState(305);
						expression(1);
						}
						break;
					case 12:
						{
						_localctx = new FuncCallExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(306);
						if (!(precpred(_ctx, 20))) throw new FailedPredicateException(this, "precpred(_ctx, 20)");
						setState(307);
						funcCallArgs();
						}
						break;
					case 13:
						{
						_localctx = new MemberVisitExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(308);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(309);
						match(Dot);
						setState(310);
						match(Identifier);
						}
						break;
					case 14:
						{
						_localctx = new ArrayVisitExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(311);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(312);
						match(LeftBracket);
						setState(313);
						expression(0);
						setState(314);
						match(RightBracket);
						}
						break;
					case 15:
						{
						_localctx = new PostfixExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(316);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(317);
						((PostfixExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==SelfAdd || _la==SeflSub) ) {
							((PostfixExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					}
					} 
				}
				setState(322);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,32,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class ArraySizeDeclareContext extends ParserRuleContext {
		public List<TerminalNode> RightBracket() { return getTokens(MxStarParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxStarParser.RightBracket, i);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ArraySizeDeclareContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arraySizeDeclare; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterArraySizeDeclare(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitArraySizeDeclare(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitArraySizeDeclare(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ArraySizeDeclareContext arraySizeDeclare() throws RecognitionException {
		ArraySizeDeclareContext _localctx = new ArraySizeDeclareContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_arraySizeDeclare);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(323);
			match(RightBracket);
			setState(324);
			expression(0);
			setState(325);
			match(RightBracket);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AtomContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxStarParser.Identifier, 0); }
		public TerminalNode IntConst() { return getToken(MxStarParser.IntConst, 0); }
		public TerminalNode StringConst() { return getToken(MxStarParser.StringConst, 0); }
		public TerminalNode False() { return getToken(MxStarParser.False, 0); }
		public TerminalNode True() { return getToken(MxStarParser.True, 0); }
		public TerminalNode Null() { return getToken(MxStarParser.Null, 0); }
		public TerminalNode This() { return getToken(MxStarParser.This, 0); }
		public AtomContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_atom; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).enterAtom(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxStarListener ) ((MxStarListener)listener).exitAtom(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxStarVisitor ) return ((MxStarVisitor<? extends T>)visitor).visitAtom(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AtomContext atom() throws RecognitionException {
		AtomContext _localctx = new AtomContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_atom);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(327);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Null) | (1L << True) | (1L << False) | (1L << This) | (1L << Identifier) | (1L << IntConst) | (1L << StringConst))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 23:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 11);
		case 1:
			return precpred(_ctx, 10);
		case 2:
			return precpred(_ctx, 9);
		case 3:
			return precpred(_ctx, 8);
		case 4:
			return precpred(_ctx, 7);
		case 5:
			return precpred(_ctx, 6);
		case 6:
			return precpred(_ctx, 5);
		case 7:
			return precpred(_ctx, 4);
		case 8:
			return precpred(_ctx, 3);
		case 9:
			return precpred(_ctx, 2);
		case 10:
			return precpred(_ctx, 1);
		case 11:
			return precpred(_ctx, 20);
		case 12:
			return precpred(_ctx, 19);
		case 13:
			return precpred(_ctx, 18);
		case 14:
			return precpred(_ctx, 15);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001;\u014a\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0002\u0015\u0007\u0015"+
		"\u0002\u0016\u0007\u0016\u0002\u0017\u0007\u0017\u0002\u0018\u0007\u0018"+
		"\u0002\u0019\u0007\u0019\u0001\u0000\u0001\u0000\u0001\u0000\u0005\u0000"+
		"8\b\u0000\n\u0000\f\u0000;\t\u0000\u0001\u0000\u0001\u0000\u0001\u0001"+
		"\u0001\u0001\u0001\u0002\u0001\u0002\u0003\u0002C\b\u0002\u0001\u0003"+
		"\u0001\u0003\u0001\u0003\u0005\u0003H\b\u0003\n\u0003\f\u0003K\t\u0003"+
		"\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0003\u0004Q\b\u0004"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0003\u0005W\b\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0003\u0005]\b\u0005"+
		"\u0005\u0005_\b\u0005\n\u0005\f\u0005b\t\u0005\u0001\u0006\u0001\u0006"+
		"\u0001\u0006\u0001\u0007\u0001\u0007\u0003\u0007i\b\u0007\u0001\b\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0005\ty\b\t\n\t\f\t|\t\t\u0003\t~\b\t\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0005\u000b\u0088\b\u000b\n\u000b\f\u000b\u008b\t\u000b\u0003\u000b\u008d"+
		"\b\u000b\u0001\u000b\u0001\u000b\u0001\f\u0001\f\u0001\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0003\f\u0098\b\f\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0005\r\u009f\b\r\n\r\f\r\u00a2\t\r\u0001\r\u0003\r\u00a5\b\r\u0001"+
		"\r\u0001\r\u0005\r\u00a9\b\r\n\r\f\r\u00ac\t\r\u0001\r\u0001\r\u0001\r"+
		"\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000f"+
		"\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f"+
		"\u0003\u000f\u00bd\b\u000f\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010"+
		"\u0001\u0010\u0001\u0010\u0001\u0011\u0001\u0011\u0001\u0011\u0003\u0011"+
		"\u00c8\b\u0011\u0001\u0011\u0001\u0011\u0003\u0011\u00cc\b\u0011\u0001"+
		"\u0011\u0001\u0011\u0003\u0011\u00d0\b\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0012\u0001\u0012\u0003\u0012\u00d7\b\u0012\u0001\u0013\u0001"+
		"\u0013\u0001\u0014\u0001\u0014\u0001\u0015\u0001\u0015\u0001\u0015\u0001"+
		"\u0015\u0003\u0015\u00e1\b\u0015\u0001\u0015\u0001\u0015\u0001\u0016\u0003"+
		"\u0016\u00e6\b\u0016\u0001\u0016\u0001\u0016\u0001\u0017\u0001\u0017\u0001"+
		"\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001"+
		"\u0017\u0003\u0017\u00f3\b\u0017\u0001\u0017\u0005\u0017\u00f6\b\u0017"+
		"\n\u0017\f\u0017\u00f9\t\u0017\u0001\u0017\u0001\u0017\u0003\u0017\u00fd"+
		"\b\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0003"+
		"\u0017\u0104\b\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001"+
		"\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0003"+
		"\u0017\u0110\b\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001"+
		"\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001"+
		"\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001"+
		"\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001"+
		"\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001"+
		"\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001"+
		"\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001"+
		"\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0005\u0017\u013f"+
		"\b\u0017\n\u0017\f\u0017\u0142\t\u0017\u0001\u0018\u0001\u0018\u0001\u0018"+
		"\u0001\u0018\u0001\u0019\u0001\u0019\u0001\u0019\u0000\u0001.\u001a\u0000"+
		"\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a\u001c"+
		"\u001e \"$&(*,.02\u0000\n\u0001\u0000\u0003\u0005\u0002\u0000\u0003\u0005"+
		"55\u0001\u0000()\u0001\u0000\u0013\u0014\u0002\u0000  $$\u0001\u0000\u0015"+
		"\u0017\u0001\u0000%&\u0001\u0000\u0018\u001b\u0001\u0000\u001c\u001d\u0002"+
		"\u0000\b\u000b57\u0169\u00009\u0001\u0000\u0000\u0000\u0002>\u0001\u0000"+
		"\u0000\u0000\u0004B\u0001\u0000\u0000\u0000\u0006D\u0001\u0000\u0000\u0000"+
		"\bL\u0001\u0000\u0000\u0000\nR\u0001\u0000\u0000\u0000\fc\u0001\u0000"+
		"\u0000\u0000\u000eh\u0001\u0000\u0000\u0000\u0010j\u0001\u0000\u0000\u0000"+
		"\u0012}\u0001\u0000\u0000\u0000\u0014\u007f\u0001\u0000\u0000\u0000\u0016"+
		"\u0083\u0001\u0000\u0000\u0000\u0018\u0097\u0001\u0000\u0000\u0000\u001a"+
		"\u0099\u0001\u0000\u0000\u0000\u001c\u00b0\u0001\u0000\u0000\u0000\u001e"+
		"\u00b5\u0001\u0000\u0000\u0000 \u00be\u0001\u0000\u0000\u0000\"\u00c4"+
		"\u0001\u0000\u0000\u0000$\u00d6\u0001\u0000\u0000\u0000&\u00d8\u0001\u0000"+
		"\u0000\u0000(\u00da\u0001\u0000\u0000\u0000*\u00e0\u0001\u0000\u0000\u0000"+
		",\u00e5\u0001\u0000\u0000\u0000.\u010f\u0001\u0000\u0000\u00000\u0143"+
		"\u0001\u0000\u0000\u00002\u0147\u0001\u0000\u0000\u000048\u0003\u001a"+
		"\r\u000058\u0003\u0010\b\u000068\u0003\f\u0006\u000074\u0001\u0000\u0000"+
		"\u000075\u0001\u0000\u0000\u000076\u0001\u0000\u0000\u00008;\u0001\u0000"+
		"\u0000\u000097\u0001\u0000\u0000\u00009:\u0001\u0000\u0000\u0000:<\u0001"+
		"\u0000\u0000\u0000;9\u0001\u0000\u0000\u0000<=\u0005\u0000\u0000\u0001"+
		"=\u0001\u0001\u0000\u0000\u0000>?\u0007\u0000\u0000\u0000?\u0003\u0001"+
		"\u0000\u0000\u0000@C\u0003\u0002\u0001\u0000AC\u0005\u0002\u0000\u0000"+
		"B@\u0001\u0000\u0000\u0000BA\u0001\u0000\u0000\u0000C\u0005\u0001\u0000"+
		"\u0000\u0000DI\u0007\u0001\u0000\u0000EF\u0005-\u0000\u0000FH\u0005.\u0000"+
		"\u0000GE\u0001\u0000\u0000\u0000HK\u0001\u0000\u0000\u0000IG\u0001\u0000"+
		"\u0000\u0000IJ\u0001\u0000\u0000\u0000J\u0007\u0001\u0000\u0000\u0000"+
		"KI\u0001\u0000\u0000\u0000LM\u0003\u0006\u0003\u0000MP\u00055\u0000\u0000"+
		"NO\u0005\'\u0000\u0000OQ\u0003.\u0017\u0000PN\u0001\u0000\u0000\u0000"+
		"PQ\u0001\u0000\u0000\u0000Q\t\u0001\u0000\u0000\u0000RS\u0003\u0006\u0003"+
		"\u0000SV\u00055\u0000\u0000TU\u0005\'\u0000\u0000UW\u0003.\u0017\u0000"+
		"VT\u0001\u0000\u0000\u0000VW\u0001\u0000\u0000\u0000W`\u0001\u0000\u0000"+
		"\u0000XY\u0005\u0001\u0000\u0000Y\\\u00055\u0000\u0000Z[\u0005\'\u0000"+
		"\u0000[]\u0003.\u0017\u0000\\Z\u0001\u0000\u0000\u0000\\]\u0001\u0000"+
		"\u0000\u0000]_\u0001\u0000\u0000\u0000^X\u0001\u0000\u0000\u0000_b\u0001"+
		"\u0000\u0000\u0000`^\u0001\u0000\u0000\u0000`a\u0001\u0000\u0000\u0000"+
		"a\u000b\u0001\u0000\u0000\u0000b`\u0001\u0000\u0000\u0000cd\u0003\n\u0005"+
		"\u0000de\u00053\u0000\u0000e\r\u0001\u0000\u0000\u0000fi\u0003\u0006\u0003"+
		"\u0000gi\u0005\u0002\u0000\u0000hf\u0001\u0000\u0000\u0000hg\u0001\u0000"+
		"\u0000\u0000i\u000f\u0001\u0000\u0000\u0000jk\u0003\u000e\u0007\u0000"+
		"kl\u00055\u0000\u0000lm\u0005+\u0000\u0000mn\u0003\u0012\t\u0000no\u0005"+
		",\u0000\u0000op\u0003\u0014\n\u0000p\u0011\u0001\u0000\u0000\u0000qr\u0003"+
		"\u0006\u0003\u0000rs\u00055\u0000\u0000sz\u0001\u0000\u0000\u0000tu\u0005"+
		"\u0001\u0000\u0000uv\u0003\u0006\u0003\u0000vw\u00055\u0000\u0000wy\u0001"+
		"\u0000\u0000\u0000xt\u0001\u0000\u0000\u0000y|\u0001\u0000\u0000\u0000"+
		"zx\u0001\u0000\u0000\u0000z{\u0001\u0000\u0000\u0000{~\u0001\u0000\u0000"+
		"\u0000|z\u0001\u0000\u0000\u0000}q\u0001\u0000\u0000\u0000}~\u0001\u0000"+
		"\u0000\u0000~\u0013\u0001\u0000\u0000\u0000\u007f\u0080\u0005/\u0000\u0000"+
		"\u0080\u0081\u0003\u0018\f\u0000\u0081\u0082\u00050\u0000\u0000\u0082"+
		"\u0015\u0001\u0000\u0000\u0000\u0083\u008c\u0005+\u0000\u0000\u0084\u0089"+
		"\u0003.\u0017\u0000\u0085\u0086\u0005\u0001\u0000\u0000\u0086\u0088\u0003"+
		".\u0017\u0000\u0087\u0085\u0001\u0000\u0000\u0000\u0088\u008b\u0001\u0000"+
		"\u0000\u0000\u0089\u0087\u0001\u0000\u0000\u0000\u0089\u008a\u0001\u0000"+
		"\u0000\u0000\u008a\u008d\u0001\u0000\u0000\u0000\u008b\u0089\u0001\u0000"+
		"\u0000\u0000\u008c\u0084\u0001\u0000\u0000\u0000\u008c\u008d\u0001\u0000"+
		"\u0000\u0000\u008d\u008e\u0001\u0000\u0000\u0000\u008e\u008f\u0005,\u0000"+
		"\u0000\u008f\u0017\u0001\u0000\u0000\u0000\u0090\u0098\u0003\u0014\n\u0000"+
		"\u0091\u0098\u0003\u001e\u000f\u0000\u0092\u0098\u0003 \u0010\u0000\u0093"+
		"\u0098\u0003\"\u0011\u0000\u0094\u0098\u0003*\u0015\u0000\u0095\u0098"+
		"\u0003\f\u0006\u0000\u0096\u0098\u0003,\u0016\u0000\u0097\u0090\u0001"+
		"\u0000\u0000\u0000\u0097\u0091\u0001\u0000\u0000\u0000\u0097\u0092\u0001"+
		"\u0000\u0000\u0000\u0097\u0093\u0001\u0000\u0000\u0000\u0097\u0094\u0001"+
		"\u0000\u0000\u0000\u0097\u0095\u0001\u0000\u0000\u0000\u0097\u0096\u0001"+
		"\u0000\u0000\u0000\u0098\u0019\u0001\u0000\u0000\u0000\u0099\u009a\u0005"+
		"\u0007\u0000\u0000\u009a\u009b\u00055\u0000\u0000\u009b\u00a0\u0005/\u0000"+
		"\u0000\u009c\u009f\u0003\u0010\b\u0000\u009d\u009f\u0003\f\u0006\u0000"+
		"\u009e\u009c\u0001\u0000\u0000\u0000\u009e\u009d\u0001\u0000\u0000\u0000"+
		"\u009f\u00a2\u0001\u0000\u0000\u0000\u00a0\u009e\u0001\u0000\u0000\u0000"+
		"\u00a0\u00a1\u0001\u0000\u0000\u0000\u00a1\u00a4\u0001\u0000\u0000\u0000"+
		"\u00a2\u00a0\u0001\u0000\u0000\u0000\u00a3\u00a5\u0003\u001c\u000e\u0000"+
		"\u00a4\u00a3\u0001\u0000\u0000\u0000\u00a4\u00a5\u0001\u0000\u0000\u0000"+
		"\u00a5\u00aa\u0001\u0000\u0000\u0000\u00a6\u00a9\u0003\u0010\b\u0000\u00a7"+
		"\u00a9\u0003\f\u0006\u0000\u00a8\u00a6\u0001\u0000\u0000\u0000\u00a8\u00a7"+
		"\u0001\u0000\u0000\u0000\u00a9\u00ac\u0001\u0000\u0000\u0000\u00aa\u00a8"+
		"\u0001\u0000\u0000\u0000\u00aa\u00ab\u0001\u0000\u0000\u0000\u00ab\u00ad"+
		"\u0001\u0000\u0000\u0000\u00ac\u00aa\u0001\u0000\u0000\u0000\u00ad\u00ae"+
		"\u00050\u0000\u0000\u00ae\u00af\u00053\u0000\u0000\u00af\u001b\u0001\u0000"+
		"\u0000\u0000\u00b0\u00b1\u00055\u0000\u0000\u00b1\u00b2\u0005+\u0000\u0000"+
		"\u00b2\u00b3\u0005,\u0000\u0000\u00b3\u00b4\u0003\u0014\n\u0000\u00b4"+
		"\u001d\u0001\u0000\u0000\u0000\u00b5\u00b6\u0005\f\u0000\u0000\u00b6\u00b7"+
		"\u0005+\u0000\u0000\u00b7\u00b8\u0003.\u0017\u0000\u00b8\u00b9\u0005,"+
		"\u0000\u0000\u00b9\u00bc\u0003\u0018\f\u0000\u00ba\u00bb\u0005\r\u0000"+
		"\u0000\u00bb\u00bd\u0003\u0018\f\u0000\u00bc\u00ba\u0001\u0000\u0000\u0000"+
		"\u00bc\u00bd\u0001\u0000\u0000\u0000\u00bd\u001f\u0001\u0000\u0000\u0000"+
		"\u00be\u00bf\u0005\u000f\u0000\u0000\u00bf\u00c0\u0005+\u0000\u0000\u00c0"+
		"\u00c1\u0003.\u0017\u0000\u00c1\u00c2\u0005,\u0000\u0000\u00c2\u00c3\u0003"+
		"\u0018\f\u0000\u00c3!\u0001\u0000\u0000\u0000\u00c4\u00c5\u0005\u000e"+
		"\u0000\u0000\u00c5\u00c7\u0005+\u0000\u0000\u00c6\u00c8\u0003$\u0012\u0000"+
		"\u00c7\u00c6\u0001\u0000\u0000\u0000\u00c7\u00c8\u0001\u0000\u0000\u0000"+
		"\u00c8\u00c9\u0001\u0000\u0000\u0000\u00c9\u00cb\u00053\u0000\u0000\u00ca"+
		"\u00cc\u0003&\u0013\u0000\u00cb\u00ca\u0001\u0000\u0000\u0000\u00cb\u00cc"+
		"\u0001\u0000\u0000\u0000\u00cc\u00cd\u0001\u0000\u0000\u0000\u00cd\u00cf"+
		"\u00053\u0000\u0000\u00ce\u00d0\u0003(\u0014\u0000\u00cf\u00ce\u0001\u0000"+
		"\u0000\u0000\u00cf\u00d0\u0001\u0000\u0000\u0000\u00d0\u00d1\u0001\u0000"+
		"\u0000\u0000\u00d1\u00d2\u0005,\u0000\u0000\u00d2\u00d3\u0003\u0018\f"+
		"\u0000\u00d3#\u0001\u0000\u0000\u0000\u00d4\u00d7\u0003\n\u0005\u0000"+
		"\u00d5\u00d7\u0003.\u0017\u0000\u00d6\u00d4\u0001\u0000\u0000\u0000\u00d6"+
		"\u00d5\u0001\u0000\u0000\u0000\u00d7%\u0001\u0000\u0000\u0000\u00d8\u00d9"+
		"\u0003.\u0017\u0000\u00d9\'\u0001\u0000\u0000\u0000\u00da\u00db\u0003"+
		".\u0017\u0000\u00db)\u0001\u0000\u0000\u0000\u00dc\u00dd\u0005\u0012\u0000"+
		"\u0000\u00dd\u00e1\u0003.\u0017\u0000\u00de\u00e1\u0005\u0011\u0000\u0000"+
		"\u00df\u00e1\u0005\u0010\u0000\u0000\u00e0\u00dc\u0001\u0000\u0000\u0000"+
		"\u00e0\u00de\u0001\u0000\u0000\u0000\u00e0\u00df\u0001\u0000\u0000\u0000"+
		"\u00e1\u00e2\u0001\u0000\u0000\u0000\u00e2\u00e3\u00053\u0000\u0000\u00e3"+
		"+\u0001\u0000\u0000\u0000\u00e4\u00e6\u0003.\u0017\u0000\u00e5\u00e4\u0001"+
		"\u0000\u0000\u0000\u00e5\u00e6\u0001\u0000\u0000\u0000\u00e6\u00e7\u0001"+
		"\u0000\u0000\u0000\u00e7\u00e8\u00053\u0000\u0000\u00e8-\u0001\u0000\u0000"+
		"\u0000\u00e9\u00ea\u0006\u0017\uffff\uffff\u0000\u00ea\u0110\u00032\u0019"+
		"\u0000\u00eb\u00ec\u0005/\u0000\u0000\u00ec\u00ed\u0003.\u0017\u0000\u00ed"+
		"\u00ee\u00050\u0000\u0000\u00ee\u0110\u0001\u0000\u0000\u0000\u00ef\u00f2"+
		"\u0005\u0006\u0000\u0000\u00f0\u00f3\u0003\u0002\u0001\u0000\u00f1\u00f3"+
		"\u00055\u0000\u0000\u00f2\u00f0\u0001\u0000\u0000\u0000\u00f2\u00f1\u0001"+
		"\u0000\u0000\u0000\u00f3\u00f7\u0001\u0000\u0000\u0000\u00f4\u00f6\u0003"+
		"0\u0018\u0000\u00f5\u00f4\u0001\u0000\u0000\u0000\u00f6\u00f9\u0001\u0000"+
		"\u0000\u0000\u00f7\u00f5\u0001\u0000\u0000\u0000\u00f7\u00f8\u0001\u0000"+
		"\u0000\u0000\u00f8\u0110\u0001\u0000\u0000\u0000\u00f9\u00f7\u0001\u0000"+
		"\u0000\u0000\u00fa\u00fc\u0005-\u0000\u0000\u00fb\u00fd\u0005\"\u0000"+
		"\u0000\u00fc\u00fb\u0001\u0000\u0000\u0000\u00fc\u00fd\u0001\u0000\u0000"+
		"\u0000\u00fd\u00fe\u0001\u0000\u0000\u0000\u00fe\u0103\u0005.\u0000\u0000"+
		"\u00ff\u0100\u0005+\u0000\u0000\u0100\u0101\u0003\u0012\t\u0000\u0101"+
		"\u0102\u0005,\u0000\u0000\u0102\u0104\u0001\u0000\u0000\u0000\u0103\u00ff"+
		"\u0001\u0000\u0000\u0000\u0103\u0104\u0001\u0000\u0000\u0000\u0104\u0105"+
		"\u0001\u0000\u0000\u0000\u0105\u0106\u00054\u0000\u0000\u0106\u0107\u0003"+
		"\u0014\n\u0000\u0107\u0108\u0003\u0016\u000b\u0000\u0108\u0110\u0001\u0000"+
		"\u0000\u0000\u0109\u010a\u0007\u0002\u0000\u0000\u010a\u0110\u0003.\u0017"+
		"\u000e\u010b\u010c\u0007\u0003\u0000\u0000\u010c\u0110\u0003.\u0017\r"+
		"\u010d\u010e\u0007\u0004\u0000\u0000\u010e\u0110\u0003.\u0017\f\u010f"+
		"\u00e9\u0001\u0000\u0000\u0000\u010f\u00eb\u0001\u0000\u0000\u0000\u010f"+
		"\u00ef\u0001\u0000\u0000\u0000\u010f\u00fa\u0001\u0000\u0000\u0000\u010f"+
		"\u0109\u0001\u0000\u0000\u0000\u010f\u010b\u0001\u0000\u0000\u0000\u010f"+
		"\u010d\u0001\u0000\u0000\u0000\u0110\u0140\u0001\u0000\u0000\u0000\u0111"+
		"\u0112\n\u000b\u0000\u0000\u0112\u0113\u0007\u0005\u0000\u0000\u0113\u013f"+
		"\u0003.\u0017\f\u0114\u0115\n\n\u0000\u0000\u0115\u0116\u0007\u0003\u0000"+
		"\u0000\u0116\u013f\u0003.\u0017\u000b\u0117\u0118\n\t\u0000\u0000\u0118"+
		"\u0119\u0007\u0006\u0000\u0000\u0119\u013f\u0003.\u0017\n\u011a\u011b"+
		"\n\b\u0000\u0000\u011b\u011c\u0007\u0007\u0000\u0000\u011c\u013f\u0003"+
		".\u0017\t\u011d\u011e\n\u0007\u0000\u0000\u011e\u011f\u0007\b\u0000\u0000"+
		"\u011f\u013f\u0003.\u0017\b\u0120\u0121\n\u0006\u0000\u0000\u0121\u0122"+
		"\u0005\"\u0000\u0000\u0122\u013f\u0003.\u0017\u0007\u0123\u0124\n\u0005"+
		"\u0000\u0000\u0124\u0125\u0005!\u0000\u0000\u0125\u013f\u0003.\u0017\u0006"+
		"\u0126\u0127\n\u0004\u0000\u0000\u0127\u0128\u0005#\u0000\u0000\u0128"+
		"\u013f\u0003.\u0017\u0005\u0129\u012a\n\u0003\u0000\u0000\u012a\u012b"+
		"\u0005\u001e\u0000\u0000\u012b\u013f\u0003.\u0017\u0004\u012c\u012d\n"+
		"\u0002\u0000\u0000\u012d\u012e\u0005\u001f\u0000\u0000\u012e\u013f\u0003"+
		".\u0017\u0003\u012f\u0130\n\u0001\u0000\u0000\u0130\u0131\u0005\'\u0000"+
		"\u0000\u0131\u013f\u0003.\u0017\u0001\u0132\u0133\n\u0014\u0000\u0000"+
		"\u0133\u013f\u0003\u0016\u000b\u0000\u0134\u0135\n\u0013\u0000\u0000\u0135"+
		"\u0136\u0005*\u0000\u0000\u0136\u013f\u00055\u0000\u0000\u0137\u0138\n"+
		"\u0012\u0000\u0000\u0138\u0139\u0005-\u0000\u0000\u0139\u013a\u0003.\u0017"+
		"\u0000\u013a\u013b\u0005.\u0000\u0000\u013b\u013f\u0001\u0000\u0000\u0000"+
		"\u013c\u013d\n\u000f\u0000\u0000\u013d\u013f\u0007\u0002\u0000\u0000\u013e"+
		"\u0111\u0001\u0000\u0000\u0000\u013e\u0114\u0001\u0000\u0000\u0000\u013e"+
		"\u0117\u0001\u0000\u0000\u0000\u013e\u011a\u0001\u0000\u0000\u0000\u013e"+
		"\u011d\u0001\u0000\u0000\u0000\u013e\u0120\u0001\u0000\u0000\u0000\u013e"+
		"\u0123\u0001\u0000\u0000\u0000\u013e\u0126\u0001\u0000\u0000\u0000\u013e"+
		"\u0129\u0001\u0000\u0000\u0000\u013e\u012c\u0001\u0000\u0000\u0000\u013e"+
		"\u012f\u0001\u0000\u0000\u0000\u013e\u0132\u0001\u0000\u0000\u0000\u013e"+
		"\u0134\u0001\u0000\u0000\u0000\u013e\u0137\u0001\u0000\u0000\u0000\u013e"+
		"\u013c\u0001\u0000\u0000\u0000\u013f\u0142\u0001\u0000\u0000\u0000\u0140"+
		"\u013e\u0001\u0000\u0000\u0000\u0140\u0141\u0001\u0000\u0000\u0000\u0141"+
		"/\u0001\u0000\u0000\u0000\u0142\u0140\u0001\u0000\u0000\u0000\u0143\u0144"+
		"\u0005.\u0000\u0000\u0144\u0145\u0003.\u0017\u0000\u0145\u0146\u0005."+
		"\u0000\u0000\u01461\u0001\u0000\u0000\u0000\u0147\u0148\u0007\t\u0000"+
		"\u0000\u01483\u0001\u0000\u0000\u0000!79BIPV\\`hz}\u0089\u008c\u0097\u009e"+
		"\u00a0\u00a4\u00a8\u00aa\u00bc\u00c7\u00cb\u00cf\u00d6\u00e0\u00e5\u00f2"+
		"\u00f7\u00fc\u0103\u010f\u013e\u0140";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}