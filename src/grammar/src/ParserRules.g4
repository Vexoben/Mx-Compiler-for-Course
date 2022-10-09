grammar ParserRules;

// parser

mxstarcode: (classDef | funcDef | varDefBlock) * EOF;

normalBlock: '{' (normalstatement)* '}';

normalstatement: Int; //todo

// type define
buildinType_without_void: Int | Bool | String;

buildinType_with_void: buildinType_without_void | Void;


// varible define
varTypeDef: (Int | Bool | String | Identifier)('[' ']')*;

varDefSingle: varTypeDef Identifier ('=' expression)?;

varDefAnyNumber: varTypeDef Identifier ('=' expression)? (',' Identifier ('=' expression)?)*;

varDefBlock: varDefAnyNumber ';';


// function define
funcTypeDef: varTypeDef | Void;

funcDef: funcTypeDef Identifier '(' funcArgs ')' funcBlock;

funcArgs: ((varTypeDef Identifier) (',' varTypeDef Identifier)*)?;

funcBlock: '{' funcStatement '}'; // you can't define a function or class in funcBlock

funcCallArgs: '(' (expression (',' expression)*)? ')';

funcStatement : // you can't define a function or class in funcStatement
    funcBlock |
    ifBlock |
    whileBlock |
    forBlock |
    jumpBlock |
    varDefBlock |
    atomicBlock
;

// class define
classDef: Class Identifier '{' (funcDef | varDefBlock)* classConstructor? (funcDef | varDefBlock)* '}' ';';

classConstructor: Identifier '(' ')' funcBlock;

// blocks(if, while, for, jump, other)
ifBlock: If '(' expression ')' funcStatement (Else funcStatement)?;

whileBlock: While '(' expression ')' funcStatement;

forBlock: For '(' initializationStatement? ';' forConditionExpression? ';' stepExpression?')' funcStatement;

initializationStatement: varDefAnyNumber | expression;

forConditionExpression: expression;

stepExpression: expression;

jumpBlock: (Return expression | Continue | Break) ';';

atomicBlock: expression? ';';

// expression
expression:
    atom |
    '{' expression '}' |
    funcCallExpr |
    memberVisitExpr |


;

funcCallExpr:

atom:
    Identifier |
    IntConst |
    StringConst |
    False |
    True |
    Null |
    This
;

















// lexer

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