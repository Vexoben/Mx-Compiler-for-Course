// Generated from F:/github/Mx-Compiler-for-Course/src/grammar/src\MxStar.g4 by ANTLR 4.10.1
package Frontend.parser;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxStarLexer extends Lexer {
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
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "Void", "Bool", "Int", "String", "New", "Class", "Null", "True", 
			"False", "This", "If", "Else", "For", "While", "Break", "Continue", "Return", 
			"Add", "Sub", "Mul", "Div", "Mod", "Less", "Greater", "Leq", "Geq", "Equal", 
			"NotEqual", "And", "Or", "Not", "Xor", "AndBit", "OrBit", "ReverseBit", 
			"LeftShift", "RightShift", "Assign", "SelfAdd", "SeflSub", "Dot", "LeftParen", 
			"Rightparen", "LeftBracket", "RightBracket", "LeftBrace", "RightBrace", 
			"Colon", "Question", "Semicolon", "Arrow", "Identifier", "IntConst", 
			"StringConst", "ESC", "BlockComment", "LineComment", "WhiteSpace", "NewLine"
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


	public MxStarLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "MxStar.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\u0004\u0000;\u0170\u0006\uffff\uffff\u0002\u0000\u0007\u0000\u0002\u0001"+
		"\u0007\u0001\u0002\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004"+
		"\u0007\u0004\u0002\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007"+
		"\u0007\u0007\u0002\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b"+
		"\u0007\u000b\u0002\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002"+
		"\u000f\u0007\u000f\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002"+
		"\u0012\u0007\u0012\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0002"+
		"\u0015\u0007\u0015\u0002\u0016\u0007\u0016\u0002\u0017\u0007\u0017\u0002"+
		"\u0018\u0007\u0018\u0002\u0019\u0007\u0019\u0002\u001a\u0007\u001a\u0002"+
		"\u001b\u0007\u001b\u0002\u001c\u0007\u001c\u0002\u001d\u0007\u001d\u0002"+
		"\u001e\u0007\u001e\u0002\u001f\u0007\u001f\u0002 \u0007 \u0002!\u0007"+
		"!\u0002\"\u0007\"\u0002#\u0007#\u0002$\u0007$\u0002%\u0007%\u0002&\u0007"+
		"&\u0002\'\u0007\'\u0002(\u0007(\u0002)\u0007)\u0002*\u0007*\u0002+\u0007"+
		"+\u0002,\u0007,\u0002-\u0007-\u0002.\u0007.\u0002/\u0007/\u00020\u0007"+
		"0\u00021\u00071\u00022\u00072\u00023\u00073\u00024\u00074\u00025\u0007"+
		"5\u00026\u00076\u00027\u00077\u00028\u00078\u00029\u00079\u0002:\u0007"+
		":\u0002;\u0007;\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0002\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0001\b\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\u000b\u0001\u000b\u0001\u000b\u0001\f"+
		"\u0001\f\u0001\f\u0001\f\u0001\f\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001"+
		"\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001"+
		"\u0010\u0001\u0010\u0001\u0010\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0012\u0001\u0012\u0001"+
		"\u0013\u0001\u0013\u0001\u0014\u0001\u0014\u0001\u0015\u0001\u0015\u0001"+
		"\u0016\u0001\u0016\u0001\u0017\u0001\u0017\u0001\u0018\u0001\u0018\u0001"+
		"\u0019\u0001\u0019\u0001\u0019\u0001\u001a\u0001\u001a\u0001\u001a\u0001"+
		"\u001b\u0001\u001b\u0001\u001b\u0001\u001c\u0001\u001c\u0001\u001c\u0001"+
		"\u001d\u0001\u001d\u0001\u001d\u0001\u001e\u0001\u001e\u0001\u001e\u0001"+
		"\u001f\u0001\u001f\u0001 \u0001 \u0001!\u0001!\u0001\"\u0001\"\u0001#"+
		"\u0001#\u0001$\u0001$\u0001$\u0001%\u0001%\u0001%\u0001&\u0001&\u0001"+
		"\'\u0001\'\u0001\'\u0001(\u0001(\u0001(\u0001)\u0001)\u0001*\u0001*\u0001"+
		"+\u0001+\u0001,\u0001,\u0001-\u0001-\u0001.\u0001.\u0001/\u0001/\u0001"+
		"0\u00010\u00011\u00011\u00012\u00012\u00013\u00013\u00013\u00014\u0001"+
		"4\u00054\u0129\b4\n4\f4\u012c\t4\u00015\u00015\u00015\u00055\u0131\b5"+
		"\n5\f5\u0134\t5\u00035\u0136\b5\u00016\u00016\u00016\u00056\u013b\b6\n"+
		"6\f6\u013e\t6\u00016\u00016\u00017\u00017\u00017\u00017\u00037\u0146\b"+
		"7\u00018\u00018\u00018\u00018\u00058\u014c\b8\n8\f8\u014f\t8\u00018\u0001"+
		"8\u00018\u00018\u00018\u00019\u00019\u00019\u00019\u00059\u015a\b9\n9"+
		"\f9\u015d\t9\u00019\u00039\u0160\b9\u00019\u00019\u00019\u00019\u0001"+
		":\u0001:\u0001:\u0001:\u0001;\u0001;\u0001;\u0003;\u016d\b;\u0001;\u0001"+
		";\u0003\u013c\u014d\u015b\u0000<\u0001\u0001\u0003\u0002\u0005\u0003\u0007"+
		"\u0004\t\u0005\u000b\u0006\r\u0007\u000f\b\u0011\t\u0013\n\u0015\u000b"+
		"\u0017\f\u0019\r\u001b\u000e\u001d\u000f\u001f\u0010!\u0011#\u0012%\u0013"+
		"\'\u0014)\u0015+\u0016-\u0017/\u00181\u00193\u001a5\u001b7\u001c9\u001d"+
		";\u001e=\u001f? A!C\"E#G$I%K&M\'O(Q)S*U+W,Y-[.]/_0a1c2e3g4i5k6m7o\u0000"+
		"q8s9u:w;\u0001\u0000\u0005\u0002\u0000AZaz\u0004\u000009AZ__az\u0001\u0000"+
		"19\u0001\u000009\u0002\u0000\t\t  \u0178\u0000\u0001\u0001\u0000\u0000"+
		"\u0000\u0000\u0003\u0001\u0000\u0000\u0000\u0000\u0005\u0001\u0000\u0000"+
		"\u0000\u0000\u0007\u0001\u0000\u0000\u0000\u0000\t\u0001\u0000\u0000\u0000"+
		"\u0000\u000b\u0001\u0000\u0000\u0000\u0000\r\u0001\u0000\u0000\u0000\u0000"+
		"\u000f\u0001\u0000\u0000\u0000\u0000\u0011\u0001\u0000\u0000\u0000\u0000"+
		"\u0013\u0001\u0000\u0000\u0000\u0000\u0015\u0001\u0000\u0000\u0000\u0000"+
		"\u0017\u0001\u0000\u0000\u0000\u0000\u0019\u0001\u0000\u0000\u0000\u0000"+
		"\u001b\u0001\u0000\u0000\u0000\u0000\u001d\u0001\u0000\u0000\u0000\u0000"+
		"\u001f\u0001\u0000\u0000\u0000\u0000!\u0001\u0000\u0000\u0000\u0000#\u0001"+
		"\u0000\u0000\u0000\u0000%\u0001\u0000\u0000\u0000\u0000\'\u0001\u0000"+
		"\u0000\u0000\u0000)\u0001\u0000\u0000\u0000\u0000+\u0001\u0000\u0000\u0000"+
		"\u0000-\u0001\u0000\u0000\u0000\u0000/\u0001\u0000\u0000\u0000\u00001"+
		"\u0001\u0000\u0000\u0000\u00003\u0001\u0000\u0000\u0000\u00005\u0001\u0000"+
		"\u0000\u0000\u00007\u0001\u0000\u0000\u0000\u00009\u0001\u0000\u0000\u0000"+
		"\u0000;\u0001\u0000\u0000\u0000\u0000=\u0001\u0000\u0000\u0000\u0000?"+
		"\u0001\u0000\u0000\u0000\u0000A\u0001\u0000\u0000\u0000\u0000C\u0001\u0000"+
		"\u0000\u0000\u0000E\u0001\u0000\u0000\u0000\u0000G\u0001\u0000\u0000\u0000"+
		"\u0000I\u0001\u0000\u0000\u0000\u0000K\u0001\u0000\u0000\u0000\u0000M"+
		"\u0001\u0000\u0000\u0000\u0000O\u0001\u0000\u0000\u0000\u0000Q\u0001\u0000"+
		"\u0000\u0000\u0000S\u0001\u0000\u0000\u0000\u0000U\u0001\u0000\u0000\u0000"+
		"\u0000W\u0001\u0000\u0000\u0000\u0000Y\u0001\u0000\u0000\u0000\u0000["+
		"\u0001\u0000\u0000\u0000\u0000]\u0001\u0000\u0000\u0000\u0000_\u0001\u0000"+
		"\u0000\u0000\u0000a\u0001\u0000\u0000\u0000\u0000c\u0001\u0000\u0000\u0000"+
		"\u0000e\u0001\u0000\u0000\u0000\u0000g\u0001\u0000\u0000\u0000\u0000i"+
		"\u0001\u0000\u0000\u0000\u0000k\u0001\u0000\u0000\u0000\u0000m\u0001\u0000"+
		"\u0000\u0000\u0000q\u0001\u0000\u0000\u0000\u0000s\u0001\u0000\u0000\u0000"+
		"\u0000u\u0001\u0000\u0000\u0000\u0000w\u0001\u0000\u0000\u0000\u0001y"+
		"\u0001\u0000\u0000\u0000\u0003{\u0001\u0000\u0000\u0000\u0005\u0080\u0001"+
		"\u0000\u0000\u0000\u0007\u0085\u0001\u0000\u0000\u0000\t\u0089\u0001\u0000"+
		"\u0000\u0000\u000b\u0090\u0001\u0000\u0000\u0000\r\u0094\u0001\u0000\u0000"+
		"\u0000\u000f\u009a\u0001\u0000\u0000\u0000\u0011\u009f\u0001\u0000\u0000"+
		"\u0000\u0013\u00a4\u0001\u0000\u0000\u0000\u0015\u00aa\u0001\u0000\u0000"+
		"\u0000\u0017\u00af\u0001\u0000\u0000\u0000\u0019\u00b2\u0001\u0000\u0000"+
		"\u0000\u001b\u00b7\u0001\u0000\u0000\u0000\u001d\u00bb\u0001\u0000\u0000"+
		"\u0000\u001f\u00c1\u0001\u0000\u0000\u0000!\u00c7\u0001\u0000\u0000\u0000"+
		"#\u00d0\u0001\u0000\u0000\u0000%\u00d7\u0001\u0000\u0000\u0000\'\u00d9"+
		"\u0001\u0000\u0000\u0000)\u00db\u0001\u0000\u0000\u0000+\u00dd\u0001\u0000"+
		"\u0000\u0000-\u00df\u0001\u0000\u0000\u0000/\u00e1\u0001\u0000\u0000\u0000"+
		"1\u00e3\u0001\u0000\u0000\u00003\u00e5\u0001\u0000\u0000\u00005\u00e8"+
		"\u0001\u0000\u0000\u00007\u00eb\u0001\u0000\u0000\u00009\u00ee\u0001\u0000"+
		"\u0000\u0000;\u00f1\u0001\u0000\u0000\u0000=\u00f4\u0001\u0000\u0000\u0000"+
		"?\u00f7\u0001\u0000\u0000\u0000A\u00f9\u0001\u0000\u0000\u0000C\u00fb"+
		"\u0001\u0000\u0000\u0000E\u00fd\u0001\u0000\u0000\u0000G\u00ff\u0001\u0000"+
		"\u0000\u0000I\u0101\u0001\u0000\u0000\u0000K\u0104\u0001\u0000\u0000\u0000"+
		"M\u0107\u0001\u0000\u0000\u0000O\u0109\u0001\u0000\u0000\u0000Q\u010c"+
		"\u0001\u0000\u0000\u0000S\u010f\u0001\u0000\u0000\u0000U\u0111\u0001\u0000"+
		"\u0000\u0000W\u0113\u0001\u0000\u0000\u0000Y\u0115\u0001\u0000\u0000\u0000"+
		"[\u0117\u0001\u0000\u0000\u0000]\u0119\u0001\u0000\u0000\u0000_\u011b"+
		"\u0001\u0000\u0000\u0000a\u011d\u0001\u0000\u0000\u0000c\u011f\u0001\u0000"+
		"\u0000\u0000e\u0121\u0001\u0000\u0000\u0000g\u0123\u0001\u0000\u0000\u0000"+
		"i\u0126\u0001\u0000\u0000\u0000k\u0135\u0001\u0000\u0000\u0000m\u0137"+
		"\u0001\u0000\u0000\u0000o\u0145\u0001\u0000\u0000\u0000q\u0147\u0001\u0000"+
		"\u0000\u0000s\u0155\u0001\u0000\u0000\u0000u\u0165\u0001\u0000\u0000\u0000"+
		"w\u016c\u0001\u0000\u0000\u0000yz\u0005,\u0000\u0000z\u0002\u0001\u0000"+
		"\u0000\u0000{|\u0005v\u0000\u0000|}\u0005o\u0000\u0000}~\u0005i\u0000"+
		"\u0000~\u007f\u0005d\u0000\u0000\u007f\u0004\u0001\u0000\u0000\u0000\u0080"+
		"\u0081\u0005b\u0000\u0000\u0081\u0082\u0005o\u0000\u0000\u0082\u0083\u0005"+
		"o\u0000\u0000\u0083\u0084\u0005l\u0000\u0000\u0084\u0006\u0001\u0000\u0000"+
		"\u0000\u0085\u0086\u0005i\u0000\u0000\u0086\u0087\u0005n\u0000\u0000\u0087"+
		"\u0088\u0005t\u0000\u0000\u0088\b\u0001\u0000\u0000\u0000\u0089\u008a"+
		"\u0005s\u0000\u0000\u008a\u008b\u0005t\u0000\u0000\u008b\u008c\u0005r"+
		"\u0000\u0000\u008c\u008d\u0005i\u0000\u0000\u008d\u008e\u0005n\u0000\u0000"+
		"\u008e\u008f\u0005g\u0000\u0000\u008f\n\u0001\u0000\u0000\u0000\u0090"+
		"\u0091\u0005n\u0000\u0000\u0091\u0092\u0005e\u0000\u0000\u0092\u0093\u0005"+
		"w\u0000\u0000\u0093\f\u0001\u0000\u0000\u0000\u0094\u0095\u0005c\u0000"+
		"\u0000\u0095\u0096\u0005l\u0000\u0000\u0096\u0097\u0005a\u0000\u0000\u0097"+
		"\u0098\u0005s\u0000\u0000\u0098\u0099\u0005s\u0000\u0000\u0099\u000e\u0001"+
		"\u0000\u0000\u0000\u009a\u009b\u0005n\u0000\u0000\u009b\u009c\u0005u\u0000"+
		"\u0000\u009c\u009d\u0005l\u0000\u0000\u009d\u009e\u0005l\u0000\u0000\u009e"+
		"\u0010\u0001\u0000\u0000\u0000\u009f\u00a0\u0005t\u0000\u0000\u00a0\u00a1"+
		"\u0005r\u0000\u0000\u00a1\u00a2\u0005u\u0000\u0000\u00a2\u00a3\u0005e"+
		"\u0000\u0000\u00a3\u0012\u0001\u0000\u0000\u0000\u00a4\u00a5\u0005f\u0000"+
		"\u0000\u00a5\u00a6\u0005a\u0000\u0000\u00a6\u00a7\u0005l\u0000\u0000\u00a7"+
		"\u00a8\u0005s\u0000\u0000\u00a8\u00a9\u0005e\u0000\u0000\u00a9\u0014\u0001"+
		"\u0000\u0000\u0000\u00aa\u00ab\u0005t\u0000\u0000\u00ab\u00ac\u0005h\u0000"+
		"\u0000\u00ac\u00ad\u0005i\u0000\u0000\u00ad\u00ae\u0005s\u0000\u0000\u00ae"+
		"\u0016\u0001\u0000\u0000\u0000\u00af\u00b0\u0005i\u0000\u0000\u00b0\u00b1"+
		"\u0005f\u0000\u0000\u00b1\u0018\u0001\u0000\u0000\u0000\u00b2\u00b3\u0005"+
		"e\u0000\u0000\u00b3\u00b4\u0005l\u0000\u0000\u00b4\u00b5\u0005s\u0000"+
		"\u0000\u00b5\u00b6\u0005e\u0000\u0000\u00b6\u001a\u0001\u0000\u0000\u0000"+
		"\u00b7\u00b8\u0005f\u0000\u0000\u00b8\u00b9\u0005o\u0000\u0000\u00b9\u00ba"+
		"\u0005r\u0000\u0000\u00ba\u001c\u0001\u0000\u0000\u0000\u00bb\u00bc\u0005"+
		"w\u0000\u0000\u00bc\u00bd\u0005h\u0000\u0000\u00bd\u00be\u0005i\u0000"+
		"\u0000\u00be\u00bf\u0005l\u0000\u0000\u00bf\u00c0\u0005e\u0000\u0000\u00c0"+
		"\u001e\u0001\u0000\u0000\u0000\u00c1\u00c2\u0005b\u0000\u0000\u00c2\u00c3"+
		"\u0005r\u0000\u0000\u00c3\u00c4\u0005e\u0000\u0000\u00c4\u00c5\u0005a"+
		"\u0000\u0000\u00c5\u00c6\u0005k\u0000\u0000\u00c6 \u0001\u0000\u0000\u0000"+
		"\u00c7\u00c8\u0005c\u0000\u0000\u00c8\u00c9\u0005o\u0000\u0000\u00c9\u00ca"+
		"\u0005n\u0000\u0000\u00ca\u00cb\u0005t\u0000\u0000\u00cb\u00cc\u0005i"+
		"\u0000\u0000\u00cc\u00cd\u0005n\u0000\u0000\u00cd\u00ce\u0005u\u0000\u0000"+
		"\u00ce\u00cf\u0005e\u0000\u0000\u00cf\"\u0001\u0000\u0000\u0000\u00d0"+
		"\u00d1\u0005r\u0000\u0000\u00d1\u00d2\u0005e\u0000\u0000\u00d2\u00d3\u0005"+
		"t\u0000\u0000\u00d3\u00d4\u0005u\u0000\u0000\u00d4\u00d5\u0005r\u0000"+
		"\u0000\u00d5\u00d6\u0005n\u0000\u0000\u00d6$\u0001\u0000\u0000\u0000\u00d7"+
		"\u00d8\u0005+\u0000\u0000\u00d8&\u0001\u0000\u0000\u0000\u00d9\u00da\u0005"+
		"-\u0000\u0000\u00da(\u0001\u0000\u0000\u0000\u00db\u00dc\u0005*\u0000"+
		"\u0000\u00dc*\u0001\u0000\u0000\u0000\u00dd\u00de\u0005/\u0000\u0000\u00de"+
		",\u0001\u0000\u0000\u0000\u00df\u00e0\u0005%\u0000\u0000\u00e0.\u0001"+
		"\u0000\u0000\u0000\u00e1\u00e2\u0005<\u0000\u0000\u00e20\u0001\u0000\u0000"+
		"\u0000\u00e3\u00e4\u0005>\u0000\u0000\u00e42\u0001\u0000\u0000\u0000\u00e5"+
		"\u00e6\u0005<\u0000\u0000\u00e6\u00e7\u0005=\u0000\u0000\u00e74\u0001"+
		"\u0000\u0000\u0000\u00e8\u00e9\u0005>\u0000\u0000\u00e9\u00ea\u0005=\u0000"+
		"\u0000\u00ea6\u0001\u0000\u0000\u0000\u00eb\u00ec\u0005=\u0000\u0000\u00ec"+
		"\u00ed\u0005=\u0000\u0000\u00ed8\u0001\u0000\u0000\u0000\u00ee\u00ef\u0005"+
		"!\u0000\u0000\u00ef\u00f0\u0005=\u0000\u0000\u00f0:\u0001\u0000\u0000"+
		"\u0000\u00f1\u00f2\u0005&\u0000\u0000\u00f2\u00f3\u0005&\u0000\u0000\u00f3"+
		"<\u0001\u0000\u0000\u0000\u00f4\u00f5\u0005|\u0000\u0000\u00f5\u00f6\u0005"+
		"|\u0000\u0000\u00f6>\u0001\u0000\u0000\u0000\u00f7\u00f8\u0005!\u0000"+
		"\u0000\u00f8@\u0001\u0000\u0000\u0000\u00f9\u00fa\u0005^\u0000\u0000\u00fa"+
		"B\u0001\u0000\u0000\u0000\u00fb\u00fc\u0005&\u0000\u0000\u00fcD\u0001"+
		"\u0000\u0000\u0000\u00fd\u00fe\u0005|\u0000\u0000\u00feF\u0001\u0000\u0000"+
		"\u0000\u00ff\u0100\u0005~\u0000\u0000\u0100H\u0001\u0000\u0000\u0000\u0101"+
		"\u0102\u0005<\u0000\u0000\u0102\u0103\u0005<\u0000\u0000\u0103J\u0001"+
		"\u0000\u0000\u0000\u0104\u0105\u0005>\u0000\u0000\u0105\u0106\u0005>\u0000"+
		"\u0000\u0106L\u0001\u0000\u0000\u0000\u0107\u0108\u0005=\u0000\u0000\u0108"+
		"N\u0001\u0000\u0000\u0000\u0109\u010a\u0005+\u0000\u0000\u010a\u010b\u0005"+
		"+\u0000\u0000\u010bP\u0001\u0000\u0000\u0000\u010c\u010d\u0005-\u0000"+
		"\u0000\u010d\u010e\u0005-\u0000\u0000\u010eR\u0001\u0000\u0000\u0000\u010f"+
		"\u0110\u0005.\u0000\u0000\u0110T\u0001\u0000\u0000\u0000\u0111\u0112\u0005"+
		"(\u0000\u0000\u0112V\u0001\u0000\u0000\u0000\u0113\u0114\u0005)\u0000"+
		"\u0000\u0114X\u0001\u0000\u0000\u0000\u0115\u0116\u0005[\u0000\u0000\u0116"+
		"Z\u0001\u0000\u0000\u0000\u0117\u0118\u0005]\u0000\u0000\u0118\\\u0001"+
		"\u0000\u0000\u0000\u0119\u011a\u0005{\u0000\u0000\u011a^\u0001\u0000\u0000"+
		"\u0000\u011b\u011c\u0005}\u0000\u0000\u011c`\u0001\u0000\u0000\u0000\u011d"+
		"\u011e\u0005:\u0000\u0000\u011eb\u0001\u0000\u0000\u0000\u011f\u0120\u0005"+
		"?\u0000\u0000\u0120d\u0001\u0000\u0000\u0000\u0121\u0122\u0005;\u0000"+
		"\u0000\u0122f\u0001\u0000\u0000\u0000\u0123\u0124\u0005-\u0000\u0000\u0124"+
		"\u0125\u0005>\u0000\u0000\u0125h\u0001\u0000\u0000\u0000\u0126\u012a\u0007"+
		"\u0000\u0000\u0000\u0127\u0129\u0007\u0001\u0000\u0000\u0128\u0127\u0001"+
		"\u0000\u0000\u0000\u0129\u012c\u0001\u0000\u0000\u0000\u012a\u0128\u0001"+
		"\u0000\u0000\u0000\u012a\u012b\u0001\u0000\u0000\u0000\u012bj\u0001\u0000"+
		"\u0000\u0000\u012c\u012a\u0001\u0000\u0000\u0000\u012d\u0136\u00050\u0000"+
		"\u0000\u012e\u0132\u0007\u0002\u0000\u0000\u012f\u0131\u0007\u0003\u0000"+
		"\u0000\u0130\u012f\u0001\u0000\u0000\u0000\u0131\u0134\u0001\u0000\u0000"+
		"\u0000\u0132\u0130\u0001\u0000\u0000\u0000\u0132\u0133\u0001\u0000\u0000"+
		"\u0000\u0133\u0136\u0001\u0000\u0000\u0000\u0134\u0132\u0001\u0000\u0000"+
		"\u0000\u0135\u012d\u0001\u0000\u0000\u0000\u0135\u012e\u0001\u0000\u0000"+
		"\u0000\u0136l\u0001\u0000\u0000\u0000\u0137\u013c\u0005\"\u0000\u0000"+
		"\u0138\u013b\u0003o7\u0000\u0139\u013b\t\u0000\u0000\u0000\u013a\u0138"+
		"\u0001\u0000\u0000\u0000\u013a\u0139\u0001\u0000\u0000\u0000\u013b\u013e"+
		"\u0001\u0000\u0000\u0000\u013c\u013d\u0001\u0000\u0000\u0000\u013c\u013a"+
		"\u0001\u0000\u0000\u0000\u013d\u013f\u0001\u0000\u0000\u0000\u013e\u013c"+
		"\u0001\u0000\u0000\u0000\u013f\u0140\u0005\"\u0000\u0000\u0140n\u0001"+
		"\u0000\u0000\u0000\u0141\u0142\u0005\\\u0000\u0000\u0142\u0146\u0005\""+
		"\u0000\u0000\u0143\u0144\u0005\\\u0000\u0000\u0144\u0146\u0005\\\u0000"+
		"\u0000\u0145\u0141\u0001\u0000\u0000\u0000\u0145\u0143\u0001\u0000\u0000"+
		"\u0000\u0146p\u0001\u0000\u0000\u0000\u0147\u0148\u0005/\u0000\u0000\u0148"+
		"\u0149\u0005*\u0000\u0000\u0149\u014d\u0001\u0000\u0000\u0000\u014a\u014c"+
		"\t\u0000\u0000\u0000\u014b\u014a\u0001\u0000\u0000\u0000\u014c\u014f\u0001"+
		"\u0000\u0000\u0000\u014d\u014e\u0001\u0000\u0000\u0000\u014d\u014b\u0001"+
		"\u0000\u0000\u0000\u014e\u0150\u0001\u0000\u0000\u0000\u014f\u014d\u0001"+
		"\u0000\u0000\u0000\u0150\u0151\u0005*\u0000\u0000\u0151\u0152\u0005/\u0000"+
		"\u0000\u0152\u0153\u0001\u0000\u0000\u0000\u0153\u0154\u00068\u0000\u0000"+
		"\u0154r\u0001\u0000\u0000\u0000\u0155\u0156\u0005/\u0000\u0000\u0156\u0157"+
		"\u0005/\u0000\u0000\u0157\u015b\u0001\u0000\u0000\u0000\u0158\u015a\t"+
		"\u0000\u0000\u0000\u0159\u0158\u0001\u0000\u0000\u0000\u015a\u015d\u0001"+
		"\u0000\u0000\u0000\u015b\u015c\u0001\u0000\u0000\u0000\u015b\u0159\u0001"+
		"\u0000\u0000\u0000\u015c\u015f\u0001\u0000\u0000\u0000\u015d\u015b\u0001"+
		"\u0000\u0000\u0000\u015e\u0160\u0005\r\u0000\u0000\u015f\u015e\u0001\u0000"+
		"\u0000\u0000\u015f\u0160\u0001\u0000\u0000\u0000\u0160\u0161\u0001\u0000"+
		"\u0000\u0000\u0161\u0162\u0005\n\u0000\u0000\u0162\u0163\u0001\u0000\u0000"+
		"\u0000\u0163\u0164\u00069\u0000\u0000\u0164t\u0001\u0000\u0000\u0000\u0165"+
		"\u0166\u0007\u0004\u0000\u0000\u0166\u0167\u0001\u0000\u0000\u0000\u0167"+
		"\u0168\u0006:\u0000\u0000\u0168v\u0001\u0000\u0000\u0000\u0169\u016a\u0005"+
		"\r\u0000\u0000\u016a\u016d\u0005\n\u0000\u0000\u016b\u016d\u0005\n\u0000"+
		"\u0000\u016c\u0169\u0001\u0000\u0000\u0000\u016c\u016b\u0001\u0000\u0000"+
		"\u0000\u016d\u016e\u0001\u0000\u0000\u0000\u016e\u016f\u0006;\u0000\u0000"+
		"\u016fx\u0001\u0000\u0000\u0000\u000b\u0000\u012a\u0132\u0135\u013a\u013c"+
		"\u0145\u014d\u015b\u015f\u016c\u0001\u0006\u0000\u0000";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}