// Lexer.cpp : コンソール アプリケーションのエントリ ポイントを定義します。
//

#include "stdafx.h"
#include "SqliteLexTokenTypes.hpp"
#include "SqliteLexer.hpp"
#include <iostream>

#define InitParser(Sql)  \
	istringstream ss(Sql); \
	SqliteLexer lexer(ss); \
	
void OutputTokens(SqliteLexer& lexer)
{
	unsigned int pos=lexer.mark();
	for(;;)
	{
		RefToken t = lexer.nextToken();

		if ( t->getType() == Token::EOF_TYPE )
			break;

		cout << "Token: " << t->toString() << endl;
	}
	cout << "done lexing..." << endl;

	lexer.rewind(pos);
}


int _tmain(int argc, _TCHAR* argv[])
{

	//InitParser("/*abc\naa*/select a-2/3, 1.01e-1,2.34  from abc;\n --abc");
	//InitParser(" 2.123 2 203 2.1e12 2.1e+1 .23 .23e-12 ");
	//InitParser(" a<>b c!=b !d c||e k|d a&c ~p ");
	//InitParser(" t<<3 b>>2 c=4 t>7 7<8 a/5 b%6 ");
	//InitParser(" ?123 @12z$3 :$21 x'01234ABCDEF X\"1232CEF [13ea$e] a$2sa ");
	InitParser("pragma test.schema_version=1");

	//InitParser(" \"/*abc*/\" [ttt] '--ccc' `\"'`  ");

	OutputTokens(lexer);

	
	
}

