lexer grammar LexerRules;

// void, bool, int, string, new, class, null, true, false, this, if, else, for, while, break, continue, return
Void: 'void';
Bool: 'bool';
Int: 'int';
String: 'string';
New: 'new';
Class: 'class';
Null: 'null';
True: 'true';
False: 'false';
This: 'this';
If: 'if';
Else: 'else';
For: 'for';
While: 'while';
Break: 'break';
Continue: 'continue';
Return: 'return';

//operator
Add: '+';
Sub: '-';
Mul: '*';
Div: '/';
Mod: '%';

Less: '<';
Greater: '>';
Leq: '<=';
Geq: '>=';
Equal: '==';
NotEqual: '!=';

And: '&&';
Or: '||';
Not: '!';

Xor: '^';
AndBit: '&';
OrBit: '|';
ReverseBit: '~';
LeftShift: '<<';
RightShift: '>>';

Assign: '=';

SelfAdd: '++';
SeflSub: '--';

Dot: '.';

//Parentheses, Brackets, Braces
LeftParen: '(';
Rightparen: ')';
LeftBracket: '[';
RightBracket: ']';
LeftBrace: '{';
RightBrace: '}';

Colon: ':';
Question: '?';
Semicolon: ';';

// Indentifier, Number and String
Identifier: [a-zA-Z][a-zA-Z_0-9]*;
IntConst: '0' | [1-9][0-9]*;
StringConst : '"' (ESC | .)*? '"';
fragment ESC : '\\"' | '\\\\';

// Comment
BlockComment : '/*' .*? '*/' -> skip;
LineComment : '//' .*? '\r'? '\n' -> skip;

// WhiteSpace and NewLine
WhiteSpace: [ \t] -> skip;
NewLine: ('\r\n' | '\n') -> skip;