/* $ANTLR 2.7.5 (20050128): "sqlite_ansi.g" -> "SqliteLexer.cpp"$ */

  #include "StdAfx.h"


#include "SqliteLexer.hpp"
#include <antlr/CharBuffer.hpp>
#include <antlr/TokenStreamException.hpp>
#include <antlr/TokenStreamIOException.hpp>
#include <antlr/TokenStreamRecognitionException.hpp>
#include <antlr/CharStreamException.hpp>
#include <antlr/CharStreamIOException.hpp>
#include <antlr/NoViableAltForCharException.hpp>

SqliteLexer::SqliteLexer(istream& in)
	: CharScanner(new CharBuffer(in),true)
{
	initLiterals();
}

SqliteLexer::SqliteLexer(InputBuffer& ib)
	: CharScanner(ib,true)
{
	initLiterals();
}

SqliteLexer::SqliteLexer(const LexerSharedInputState& state)
	: CharScanner(state,true)
{
	initLiterals();
}

void SqliteLexer::initLiterals()
{
	literals["isnull"] = 132;
	literals["before"] = 50;
	literals["notnull"] = 172;
	literals["case"] = 61;
	literals["statement"] = 222;
	literals["delete"] = 84;
	literals["transaction"] = 235;
	literals["database"] = 80;
	literals["end"] = 90;
	literals["view"] = 252;
	literals["abort"] = 30;
	literals["ignore"] = 121;
	literals["initially"] = 125;
	literals["limit"] = 153;
	literals["insert"] = 127;
	literals["distinct"] = 87;
	literals["check"] = 63;
	literals["where"] = 261;
	literals["alter"] = 34;
	literals["then"] = 233;
	literals["match"] = 160;
	literals["analyze"] = 35;
	literals["raise"] = 210;
	literals["select"] = 220;
	literals["cascade"] = 60;
	literals["plan"] = 190;
	literals["to"] = 234;
	literals["regexp"] = 212;
	literals["conflict"] = 67;
	literals["and"] = 36;
	literals["outer"] = 185;
	literals["not"] = 171;
	literals["constraint"] = 68;
	literals["exclusive"] = 95;
	literals["using"] = 243;
	literals["key"] = 150;
	literals["offset"] = 181;
	literals["from"] = 103;
	literals["null"] = 173;
	literals["attach"] = 39;
	literals["temp"] = 231;
	literals["query"] = 200;
	literals["add"] = 31;
	literals["deferrable"] = 83;
	literals["like"] = 152;
	literals["natural"] = 170;
	literals["when"] = 260;
	literals["inner"] = 126;
	literals["except"] = 94;
	literals["detach"] = 86;
	literals["collate"] = 64;
	literals["each"] = 91;
	literals["set"] = 221;
	literals["current_time"] = 72;
	literals["escape"] = 93;
	literals["instead"] = 128;
	literals["foreign"] = 102;
	literals["intersect"] = 129;
	literals["join"] = 140;
	literals["rollback"] = 218;
	literals["commit"] = 66;
	literals["of"] = 180;
	literals["is"] = 131;
	literals["or"] = 183;
	literals["reindex"] = 213;
	literals["create"] = 69;
	literals["if"] = 120;
	literals["full"] = 104;
	literals["autoincrement"] = 40;
	literals["as"] = 37;
	literals["by"] = 53;
	literals["pragma"] = 191;
	literals["glob"] = 105;
	literals["all"] = 33;
	literals["union"] = 240;
	literals["drop"] = 88;
	literals["order"] = 184;
	literals["vaccum"] = 250;
	literals["primary"] = 192;
	literals["current_date"] = 71;
	literals["values"] = 251;
	literals["bewteen"] = 52;
	literals["for"] = 101;
	literals["cross"] = 70;
	literals["index"] = 124;
	literals["default"] = 81;
	literals["explain"] = 97;
	literals["fail"] = 100;
	literals["exists"] = 96;
	literals["table"] = 230;
	literals["asc"] = 38;
	literals["left"] = 151;
	literals["replace"] = 215;
	literals["desc"] = 85;
	literals["temporary"] = 232;
	literals["on"] = 182;
	literals["after"] = 32;
	literals["cast"] = 62;
	literals["begin"] = 51;
	literals["restrict"] = 216;
	literals["row"] = 219;
	literals["into"] = 130;
	literals["rename"] = 214;
	literals["else"] = 92;
	literals["right"] = 217;
	literals["in"] = 123;
	literals["update"] = 242;
	literals["group"] = 106;
	literals["immediate"] = 122;
	literals["trigger"] = 236;
	literals["having"] = 110;
	literals["column"] = 65;
	literals["virtual"] = 253;
	literals["unique"] = 241;
	literals["references"] = 211;
	literals["current_timestamp"] = 73;
	literals["deferred"] = 82;
}

RefToken SqliteLexer::nextToken()
{
	RefToken theRetToken;
	for (;;) {
		RefToken theRetToken;
		int _ttype = Token::INVALID_TYPE;
		setCommitToPath(false);
		int _m;
		_m = mark();
		resetText();
		try {   // for lexical and char stream error handling
			switch ( LA(1)) {
			case 0x9 /* '\t' */ :
			case 0xc /* '\14' */ :
			case 0xd /* '\r' */ :
			case 0x20 /* ' ' */ :
			{
				mSPACE(true);
				theRetToken=_returnToken;
				break;
			}
			case 0xa /* '\n' */ :
			{
				mNEW_LINE(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x28 /* '(' */ :
			{
				mLP(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x29 /* ')' */ :
			{
				mRP(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x3b /* ';' */ :
			{
				mSEMI(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x2b /* '+' */ :
			{
				mPLUS(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x2a /* '*' */ :
			{
				mSTAR(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x25 /* '%' */ :
			{
				mREM(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x3d /* '=' */ :
			{
				mEQ(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x21 /* '!' */ :
			{
				mNE_LEGAL(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x2c /* ',' */ :
			{
				mCOMMA(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x26 /* '&' */ :
			{
				mBITAND(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x7e /* '~' */ :
			{
				mBITNOT(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x60 /* '`' */ :
			{
				mSTRING_LITERAL1(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x27 /* '\'' */ :
			{
				mSTRING_LITERAL2(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x22 /* '\"' */ :
			{
				mSTRING_LITERAL3(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x2e /* '.' */ :
			case 0x30 /* '0' */ :
			case 0x31 /* '1' */ :
			case 0x32 /* '2' */ :
			case 0x33 /* '3' */ :
			case 0x34 /* '4' */ :
			case 0x35 /* '5' */ :
			case 0x36 /* '6' */ :
			case 0x37 /* '7' */ :
			case 0x38 /* '8' */ :
			case 0x39 /* '9' */ :
			{
				mNUMBER(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x5b /* '[' */ :
			{
				mID_1(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x3f /* '?' */ :
			{
				mVARIABLE_1(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x3a /* ':' */ :
			case 0x40 /* '@' */ :
			{
				mVARIABLE_2(true);
				theRetToken=_returnToken;
				break;
			}
			default:
				if ((LA(1) == 0x2d /* '-' */ ) && (LA(2) == 0x2d /* '-' */ )) {
					mSL_COMMENT(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x2f /* '/' */ ) && (LA(2) == 0x2a /* '*' */ )) {
					mML_COMMENT(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x3c /* '<' */ ) && (LA(2) == 0x3d /* '=' */ )) {
					mLE(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x3c /* '<' */ ) && (LA(2) == 0x3e /* '>' */ )) {
					mNE(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x3c /* '<' */ ) && (LA(2) == 0x3c /* '<' */ )) {
					mLSHIFT(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x3e /* '>' */ ) && (LA(2) == 0x3d /* '=' */ )) {
					mGE(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x3e /* '>' */ ) && (LA(2) == 0x3e /* '>' */ )) {
					mRSHIFT(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x7c /* '|' */ ) && (LA(2) == 0x7c /* '|' */ )) {
					mBITOR(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x58 /* 'X' */  || LA(1) == 0x78 /* 'x' */ ) && (LA(2) == 0x22 /* '\"' */  || LA(2) == 0x27 /* '\'' */ )) {
					mBLOB(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x2d /* '-' */ ) && (true)) {
					mMINUS(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x2f /* '/' */ ) && (true)) {
					mSLASH(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x3c /* '<' */ ) && (true)) {
					mLT(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x3e /* '>' */ ) && (true)) {
					mGT(true);
					theRetToken=_returnToken;
				}
				else if ((LA(1) == 0x7c /* '|' */ ) && (true)) {
					mCONCAT(true);
					theRetToken=_returnToken;
				}
				else if ((_tokenSet_0.member(LA(1))) && (true)) {
					mID_2(true);
					theRetToken=_returnToken;
				}
			else {
				if (LA(1)==EOF_CHAR)
				{
					uponEOF();
					_returnToken = makeToken(Token::EOF_TYPE);
				}
				else {
					commit();
					try {mANY_CHAR(false);}
					catch(RecognitionException& e) {
						// catastrophic failure
						reportError(e);
						consume();
					}
					goto tryAgain;
				}
			}
			}
			commit();
			if ( !_returnToken )
				goto tryAgain; // found SKIP token

			_ttype = _returnToken->getType();
			_returnToken->setType(_ttype);
			return _returnToken;
		}
		catch (RecognitionException& e) {
			if ( !getCommitToPath() ) {
				rewind(_m);
				resetText();
				try {mANY_CHAR(false);}
				catch(RecognitionException& ee) {
					// horrendous failure: error in filter rule
					reportError(ee);
					consume();
				}
			}
			else
				throw TokenStreamRecognitionException(e);
		}
		catch (CharStreamIOException& csie) {
			throw TokenStreamIOException(csie.io);
		}
		catch (CharStreamException& cse) {
			throw TokenStreamException(cse.getMessage());
		}
tryAgain:;
	}
}

void SqliteLexer::mSPACE(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = SPACE;
	string::size_type _saveIndex;
	
	{
	switch ( LA(1)) {
	case 0x20 /* ' ' */ :
	{
		match(' ' /* charlit */ );
		break;
	}
	case 0x9 /* '\t' */ :
	{
		match('\t' /* charlit */ );
		break;
	}
	case 0xc /* '\14' */ :
	{
		match('\14' /* charlit */ );
		break;
	}
	case 0xd /* '\r' */ :
	{
		match('\r' /* charlit */ );
		break;
	}
	default:
	{
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	}
	}
	_ttype = ANTLR_USE_NAMESPACE(antlr)Token::SKIP;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mNEW_LINE(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = NEW_LINE;
	string::size_type _saveIndex;
	
	match('\n' /* charlit */ );
	_ttype = ANTLR_USE_NAMESPACE(antlr)Token::SKIP;newline();
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSL_COMMENT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = SL_COMMENT;
	string::size_type _saveIndex;
	
	match('-' /* charlit */ );
	match('-' /* charlit */ );
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_1.member(LA(1)))) {
			{
			match(_tokenSet_1);
			}
		}
		else {
			goto _loop7;
		}
		
	}
	_loop7:;
	} // ( ... )*
	{
	if ((LA(1) == 0xa /* '\n' */ )) {
		mNEW_LINE(false);
	}
	else {
	}
	
	}
	_ttype = COMMENT;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mMINUS(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = MINUS;
	string::size_type _saveIndex;
	
	match('-' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mLP(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = LP;
	string::size_type _saveIndex;
	
	match('(' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mRP(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = RP;
	string::size_type _saveIndex;
	
	match(')' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSEMI(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = SEMI;
	string::size_type _saveIndex;
	
	match(';' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mPLUS(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = PLUS;
	string::size_type _saveIndex;
	
	match('+' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSTAR(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = STAR;
	string::size_type _saveIndex;
	
	match('*' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mML_COMMENT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = ML_COMMENT;
	string::size_type _saveIndex;
	
	match('/' /* charlit */ );
	match('*' /* charlit */ );
	{ // ( ... )*
	for (;;) {
		if (((LA(1) == 0x2a /* '*' */ ) && ((LA(2) >= 0x0 /* '\0' */  && LA(2) <= 0xff)))&&( LA(2)!='/' )) {
			match('*' /* charlit */ );
		}
		else if ((LA(1) == 0xa /* '\n' */ )) {
			match('\n' /* charlit */ );
			newline();
		}
		else if ((_tokenSet_2.member(LA(1)))) {
			{
			match(_tokenSet_2);
			}
		}
		else {
			goto _loop18;
		}
		
	}
	_loop18:;
	} // ( ... )*
	match('*' /* charlit */ );
	match('/' /* charlit */ );
	_ttype = COMMENT;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSLASH(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = SLASH;
	string::size_type _saveIndex;
	
	match('/' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mREM(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = REM;
	string::size_type _saveIndex;
	
	match('%' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mEQ(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = EQ;
	string::size_type _saveIndex;
	
	match('=' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mLE(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = LE;
	string::size_type _saveIndex;
	
	match('<' /* charlit */ );
	match('=' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mNE(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = NE;
	string::size_type _saveIndex;
	
	match('<' /* charlit */ );
	match('>' /* charlit */ );
	_ttype = NOT_EQ;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mLSHIFT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = LSHIFT;
	string::size_type _saveIndex;
	
	match('<' /* charlit */ );
	match('<' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mLT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = LT;
	string::size_type _saveIndex;
	
	match('<' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mGE(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = GE;
	string::size_type _saveIndex;
	
	match('>' /* charlit */ );
	match('=' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mRSHIFT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = RSHIFT;
	string::size_type _saveIndex;
	
	match('>' /* charlit */ );
	match('>' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mGT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = GT;
	string::size_type _saveIndex;
	
	match('>' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mNE_LEGAL(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = NE_LEGAL;
	string::size_type _saveIndex;
	
	match('!' /* charlit */ );
	match('=' /* charlit */ );
	_ttype = NOT_EQ;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mBITOR(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = BITOR;
	string::size_type _saveIndex;
	
	match('|' /* charlit */ );
	match('|' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mCONCAT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = CONCAT;
	string::size_type _saveIndex;
	
	match('|' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mCOMMA(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = COMMA;
	string::size_type _saveIndex;
	
	match(',' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mBITAND(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = BITAND;
	string::size_type _saveIndex;
	
	match('&' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mBITNOT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = BITNOT;
	string::size_type _saveIndex;
	
	match('~' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSTRING_LITERAL1(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = STRING_LITERAL1;
	string::size_type _saveIndex;
	
	match('`' /* charlit */ );
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == 0xa /* '\n' */ )) {
			mNEW_LINE(false);
		}
		else if ((_tokenSet_3.member(LA(1)))) {
			matchNot('`' /* charlit */ );
		}
		else {
			goto _loop37;
		}
		
	}
	_loop37:;
	} // ( ... )*
	match('`' /* charlit */ );
	_ttype = STRING;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSTRING_LITERAL2(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = STRING_LITERAL2;
	string::size_type _saveIndex;
	
	match('\'' /* charlit */ );
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == 0xa /* '\n' */ )) {
			mNEW_LINE(false);
		}
		else if ((_tokenSet_4.member(LA(1)))) {
			matchNot('\'' /* charlit */ );
		}
		else {
			goto _loop40;
		}
		
	}
	_loop40:;
	} // ( ... )*
	match('\'' /* charlit */ );
	_ttype = STRING;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSTRING_LITERAL3(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = STRING_LITERAL3;
	string::size_type _saveIndex;
	
	match('\"' /* charlit */ );
	{ // ( ... )*
	for (;;) {
		if ((LA(1) == 0xa /* '\n' */ )) {
			mNEW_LINE(false);
		}
		else if ((_tokenSet_5.member(LA(1)))) {
			matchNot('\"' /* charlit */ );
		}
		else {
			goto _loop43;
		}
		
	}
	_loop43:;
	} // ( ... )*
	match('\"' /* charlit */ );
	_ttype = STRING;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mNUMBER(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = NUMBER;
	string::size_type _saveIndex;
	
	switch ( LA(1)) {
	case 0x2e /* '.' */ :
	{
		match('.' /* charlit */ );
		_ttype = DOT;
		{
		if (((LA(1) >= 0x30 /* '0' */  && LA(1) <= 0x39 /* '9' */ ))) {
			{ // ( ... )+
			int _cnt47=0;
			for (;;) {
				if (((LA(1) >= 0x30 /* '0' */  && LA(1) <= 0x39 /* '9' */ ))) {
					matchRange('0','9');
				}
				else {
					if ( _cnt47>=1 ) { goto _loop47; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
				}
				
				_cnt47++;
			}
			_loop47:;
			}  // ( ... )+
			{
			if ((LA(1) == 0x45 /* 'E' */  || LA(1) == 0x65 /* 'e' */ )) {
				{
				switch ( LA(1)) {
				case 0x65 /* 'e' */ :
				{
					match('e' /* charlit */ );
					break;
				}
				case 0x45 /* 'E' */ :
				{
					match('E' /* charlit */ );
					break;
				}
				default:
				{
					throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
				}
				}
				}
				{
				switch ( LA(1)) {
				case 0x2b /* '+' */ :
				{
					match('+' /* charlit */ );
					break;
				}
				case 0x2d /* '-' */ :
				{
					match('-' /* charlit */ );
					break;
				}
				case 0x30 /* '0' */ :
				case 0x31 /* '1' */ :
				case 0x32 /* '2' */ :
				case 0x33 /* '3' */ :
				case 0x34 /* '4' */ :
				case 0x35 /* '5' */ :
				case 0x36 /* '6' */ :
				case 0x37 /* '7' */ :
				case 0x38 /* '8' */ :
				case 0x39 /* '9' */ :
				{
					break;
				}
				default:
				{
					throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
				}
				}
				}
				{ // ( ... )+
				int _cnt52=0;
				for (;;) {
					if (((LA(1) >= 0x30 /* '0' */  && LA(1) <= 0x39 /* '9' */ ))) {
						matchRange('0','9');
					}
					else {
						if ( _cnt52>=1 ) { goto _loop52; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
					}
					
					_cnt52++;
				}
				_loop52:;
				}  // ( ... )+
			}
			else {
			}
			
			}
			_ttype = FLOAT;
		}
		else {
		}
		
		}
		break;
	}
	case 0x30 /* '0' */ :
	case 0x31 /* '1' */ :
	case 0x32 /* '2' */ :
	case 0x33 /* '3' */ :
	case 0x34 /* '4' */ :
	case 0x35 /* '5' */ :
	case 0x36 /* '6' */ :
	case 0x37 /* '7' */ :
	case 0x38 /* '8' */ :
	case 0x39 /* '9' */ :
	{
		{
		{ // ( ... )+
		int _cnt55=0;
		for (;;) {
			if (((LA(1) >= 0x30 /* '0' */  && LA(1) <= 0x39 /* '9' */ ))) {
				matchRange('0','9');
			}
			else {
				if ( _cnt55>=1 ) { goto _loop55; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
			}
			
			_cnt55++;
		}
		_loop55:;
		}  // ( ... )+
		_ttype = INTEGER;
		}
		{
		if ((LA(1) == 0x2e /* '.' */ )) {
			match('.' /* charlit */ );
			{ // ( ... )*
			for (;;) {
				if (((LA(1) >= 0x30 /* '0' */  && LA(1) <= 0x39 /* '9' */ ))) {
					matchRange('0','9');
				}
				else {
					goto _loop58;
				}
				
			}
			_loop58:;
			} // ( ... )*
			_ttype = FLOAT;
		}
		else {
		}
		
		}
		{
		if ((LA(1) == 0x45 /* 'E' */  || LA(1) == 0x65 /* 'e' */ )) {
			{
			{
			switch ( LA(1)) {
			case 0x65 /* 'e' */ :
			{
				match('e' /* charlit */ );
				break;
			}
			case 0x45 /* 'E' */ :
			{
				match('E' /* charlit */ );
				break;
			}
			default:
			{
				throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
			}
			}
			}
			{
			switch ( LA(1)) {
			case 0x2b /* '+' */ :
			{
				match('+' /* charlit */ );
				break;
			}
			case 0x2d /* '-' */ :
			{
				match('-' /* charlit */ );
				break;
			}
			case 0x30 /* '0' */ :
			case 0x31 /* '1' */ :
			case 0x32 /* '2' */ :
			case 0x33 /* '3' */ :
			case 0x34 /* '4' */ :
			case 0x35 /* '5' */ :
			case 0x36 /* '6' */ :
			case 0x37 /* '7' */ :
			case 0x38 /* '8' */ :
			case 0x39 /* '9' */ :
			{
				break;
			}
			default:
			{
				throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
			}
			}
			}
			{ // ( ... )+
			int _cnt64=0;
			for (;;) {
				if (((LA(1) >= 0x30 /* '0' */  && LA(1) <= 0x39 /* '9' */ ))) {
					matchRange('0','9');
				}
				else {
					if ( _cnt64>=1 ) { goto _loop64; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
				}
				
				_cnt64++;
			}
			_loop64:;
			}  // ( ... )+
			}
			_ttype = FLOAT;
		}
		else {
		}
		
		}
		break;
	}
	default:
	{
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	}
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mID_1(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = ID_1;
	string::size_type _saveIndex;
	
	match('[' /* charlit */ );
	{ // ( ... )*
	for (;;) {
		if ((_tokenSet_6.member(LA(1)))) {
			matchNot(']' /* charlit */ );
		}
		else {
			goto _loop67;
		}
		
	}
	_loop67:;
	} // ( ... )*
	match(']' /* charlit */ );
	_ttype = ID;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mVARIABLE_1(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = VARIABLE_1;
	string::size_type _saveIndex;
	
	match('?' /* charlit */ );
	{ // ( ... )+
	int _cnt70=0;
	for (;;) {
		if (((LA(1) >= 0x30 /* '0' */  && LA(1) <= 0x39 /* '9' */ ))) {
			matchRange('0','9');
		}
		else {
			if ( _cnt70>=1 ) { goto _loop70; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
		}
		
		_cnt70++;
	}
	_loop70:;
	}  // ( ... )+
	_ttype = VARIABLE;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mVARIABLE_2(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = VARIABLE_2;
	string::size_type _saveIndex;
	
	{
	switch ( LA(1)) {
	case 0x40 /* '@' */ :
	{
		match('@' /* charlit */ );
		break;
	}
	case 0x3a /* ':' */ :
	{
		match(':' /* charlit */ );
		break;
	}
	default:
	{
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	}
	}
	{ // ( ... )+
	int _cnt74=0;
	for (;;) {
		switch ( LA(1)) {
		case 0x30 /* '0' */ :
		case 0x31 /* '1' */ :
		case 0x32 /* '2' */ :
		case 0x33 /* '3' */ :
		case 0x34 /* '4' */ :
		case 0x35 /* '5' */ :
		case 0x36 /* '6' */ :
		case 0x37 /* '7' */ :
		case 0x38 /* '8' */ :
		case 0x39 /* '9' */ :
		{
			matchRange('0','9');
			break;
		}
		case 0x61 /* 'a' */ :
		case 0x62 /* 'b' */ :
		case 0x63 /* 'c' */ :
		case 0x64 /* 'd' */ :
		case 0x65 /* 'e' */ :
		case 0x66 /* 'f' */ :
		case 0x67 /* 'g' */ :
		case 0x68 /* 'h' */ :
		case 0x69 /* 'i' */ :
		case 0x6a /* 'j' */ :
		case 0x6b /* 'k' */ :
		case 0x6c /* 'l' */ :
		case 0x6d /* 'm' */ :
		case 0x6e /* 'n' */ :
		case 0x6f /* 'o' */ :
		case 0x70 /* 'p' */ :
		case 0x71 /* 'q' */ :
		case 0x72 /* 'r' */ :
		case 0x73 /* 's' */ :
		case 0x74 /* 't' */ :
		case 0x75 /* 'u' */ :
		case 0x76 /* 'v' */ :
		case 0x77 /* 'w' */ :
		case 0x78 /* 'x' */ :
		case 0x79 /* 'y' */ :
		case 0x7a /* 'z' */ :
		{
			matchRange('a','z');
			break;
		}
		case 0x41 /* 'A' */ :
		case 0x42 /* 'B' */ :
		case 0x43 /* 'C' */ :
		case 0x44 /* 'D' */ :
		case 0x45 /* 'E' */ :
		case 0x46 /* 'F' */ :
		case 0x47 /* 'G' */ :
		case 0x48 /* 'H' */ :
		case 0x49 /* 'I' */ :
		case 0x4a /* 'J' */ :
		case 0x4b /* 'K' */ :
		case 0x4c /* 'L' */ :
		case 0x4d /* 'M' */ :
		case 0x4e /* 'N' */ :
		case 0x4f /* 'O' */ :
		case 0x50 /* 'P' */ :
		case 0x51 /* 'Q' */ :
		case 0x52 /* 'R' */ :
		case 0x53 /* 'S' */ :
		case 0x54 /* 'T' */ :
		case 0x55 /* 'U' */ :
		case 0x56 /* 'V' */ :
		case 0x57 /* 'W' */ :
		case 0x58 /* 'X' */ :
		case 0x59 /* 'Y' */ :
		case 0x5a /* 'Z' */ :
		{
			matchRange('A','Z');
			break;
		}
		case 0x24 /* '$' */ :
		{
			match('$' /* charlit */ );
			break;
		}
		default:
		{
			if ( _cnt74>=1 ) { goto _loop74; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
		}
		}
		_cnt74++;
	}
	_loop74:;
	}  // ( ... )+
	_ttype = VARIABLE;
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mBLOB(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = BLOB;
	string::size_type _saveIndex;
	
	{
	switch ( LA(1)) {
	case 0x78 /* 'x' */ :
	{
		match('x' /* charlit */ );
		break;
	}
	case 0x58 /* 'X' */ :
	{
		match('X' /* charlit */ );
		break;
	}
	default:
	{
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	}
	}
	{
	switch ( LA(1)) {
	case 0x27 /* '\'' */ :
	{
		match('\'' /* charlit */ );
		break;
	}
	case 0x22 /* '\"' */ :
	{
		match('\"' /* charlit */ );
		break;
	}
	default:
	{
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	}
	}
	{ // ( ... )+
	int _cnt79=0;
	for (;;) {
		switch ( LA(1)) {
		case 0x30 /* '0' */ :
		case 0x31 /* '1' */ :
		case 0x32 /* '2' */ :
		case 0x33 /* '3' */ :
		case 0x34 /* '4' */ :
		case 0x35 /* '5' */ :
		case 0x36 /* '6' */ :
		case 0x37 /* '7' */ :
		case 0x38 /* '8' */ :
		case 0x39 /* '9' */ :
		{
			matchRange('0','9');
			break;
		}
		case 0x41 /* 'A' */ :
		case 0x42 /* 'B' */ :
		case 0x43 /* 'C' */ :
		case 0x44 /* 'D' */ :
		case 0x45 /* 'E' */ :
		case 0x46 /* 'F' */ :
		{
			matchRange('A','F');
			break;
		}
		case 0x61 /* 'a' */ :
		case 0x62 /* 'b' */ :
		case 0x63 /* 'c' */ :
		case 0x64 /* 'd' */ :
		case 0x65 /* 'e' */ :
		case 0x66 /* 'f' */ :
		{
			matchRange('a','f');
			break;
		}
		default:
		{
			if ( _cnt79>=1 ) { goto _loop79; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
		}
		}
		_cnt79++;
	}
	_loop79:;
	}  // ( ... )+
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mID_2(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = ID_2;
	string::size_type _saveIndex;
	
	{
	switch ( LA(1)) {
	case 0x61 /* 'a' */ :
	case 0x62 /* 'b' */ :
	case 0x63 /* 'c' */ :
	case 0x64 /* 'd' */ :
	case 0x65 /* 'e' */ :
	case 0x66 /* 'f' */ :
	case 0x67 /* 'g' */ :
	case 0x68 /* 'h' */ :
	case 0x69 /* 'i' */ :
	case 0x6a /* 'j' */ :
	case 0x6b /* 'k' */ :
	case 0x6c /* 'l' */ :
	case 0x6d /* 'm' */ :
	case 0x6e /* 'n' */ :
	case 0x6f /* 'o' */ :
	case 0x70 /* 'p' */ :
	case 0x71 /* 'q' */ :
	case 0x72 /* 'r' */ :
	case 0x73 /* 's' */ :
	case 0x74 /* 't' */ :
	case 0x75 /* 'u' */ :
	case 0x76 /* 'v' */ :
	case 0x77 /* 'w' */ :
	case 0x78 /* 'x' */ :
	case 0x79 /* 'y' */ :
	case 0x7a /* 'z' */ :
	{
		matchRange('a','z');
		break;
	}
	case 0x41 /* 'A' */ :
	case 0x42 /* 'B' */ :
	case 0x43 /* 'C' */ :
	case 0x44 /* 'D' */ :
	case 0x45 /* 'E' */ :
	case 0x46 /* 'F' */ :
	case 0x47 /* 'G' */ :
	case 0x48 /* 'H' */ :
	case 0x49 /* 'I' */ :
	case 0x4a /* 'J' */ :
	case 0x4b /* 'K' */ :
	case 0x4c /* 'L' */ :
	case 0x4d /* 'M' */ :
	case 0x4e /* 'N' */ :
	case 0x4f /* 'O' */ :
	case 0x50 /* 'P' */ :
	case 0x51 /* 'Q' */ :
	case 0x52 /* 'R' */ :
	case 0x53 /* 'S' */ :
	case 0x54 /* 'T' */ :
	case 0x55 /* 'U' */ :
	case 0x56 /* 'V' */ :
	case 0x57 /* 'W' */ :
	case 0x58 /* 'X' */ :
	case 0x59 /* 'Y' */ :
	case 0x5a /* 'Z' */ :
	{
		matchRange('A','Z');
		break;
	}
	case 0x5f /* '_' */ :
	{
		match('_' /* charlit */ );
		break;
	}
	default:
	{
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	}
	}
	{ // ( ... )*
	for (;;) {
		switch ( LA(1)) {
		case 0x30 /* '0' */ :
		case 0x31 /* '1' */ :
		case 0x32 /* '2' */ :
		case 0x33 /* '3' */ :
		case 0x34 /* '4' */ :
		case 0x35 /* '5' */ :
		case 0x36 /* '6' */ :
		case 0x37 /* '7' */ :
		case 0x38 /* '8' */ :
		case 0x39 /* '9' */ :
		{
			matchRange('0','9');
			break;
		}
		case 0x61 /* 'a' */ :
		case 0x62 /* 'b' */ :
		case 0x63 /* 'c' */ :
		case 0x64 /* 'd' */ :
		case 0x65 /* 'e' */ :
		case 0x66 /* 'f' */ :
		case 0x67 /* 'g' */ :
		case 0x68 /* 'h' */ :
		case 0x69 /* 'i' */ :
		case 0x6a /* 'j' */ :
		case 0x6b /* 'k' */ :
		case 0x6c /* 'l' */ :
		case 0x6d /* 'm' */ :
		case 0x6e /* 'n' */ :
		case 0x6f /* 'o' */ :
		case 0x70 /* 'p' */ :
		case 0x71 /* 'q' */ :
		case 0x72 /* 'r' */ :
		case 0x73 /* 's' */ :
		case 0x74 /* 't' */ :
		case 0x75 /* 'u' */ :
		case 0x76 /* 'v' */ :
		case 0x77 /* 'w' */ :
		case 0x78 /* 'x' */ :
		case 0x79 /* 'y' */ :
		case 0x7a /* 'z' */ :
		{
			matchRange('a','z');
			break;
		}
		case 0x41 /* 'A' */ :
		case 0x42 /* 'B' */ :
		case 0x43 /* 'C' */ :
		case 0x44 /* 'D' */ :
		case 0x45 /* 'E' */ :
		case 0x46 /* 'F' */ :
		case 0x47 /* 'G' */ :
		case 0x48 /* 'H' */ :
		case 0x49 /* 'I' */ :
		case 0x4a /* 'J' */ :
		case 0x4b /* 'K' */ :
		case 0x4c /* 'L' */ :
		case 0x4d /* 'M' */ :
		case 0x4e /* 'N' */ :
		case 0x4f /* 'O' */ :
		case 0x50 /* 'P' */ :
		case 0x51 /* 'Q' */ :
		case 0x52 /* 'R' */ :
		case 0x53 /* 'S' */ :
		case 0x54 /* 'T' */ :
		case 0x55 /* 'U' */ :
		case 0x56 /* 'V' */ :
		case 0x57 /* 'W' */ :
		case 0x58 /* 'X' */ :
		case 0x59 /* 'Y' */ :
		case 0x5a /* 'Z' */ :
		{
			matchRange('A','Z');
			break;
		}
		case 0x5f /* '_' */ :
		{
			match('_' /* charlit */ );
			break;
		}
		case 0x24 /* '$' */ :
		{
			match('$' /* charlit */ );
			break;
		}
		default:
		{
			goto _loop83;
		}
		}
	}
	_loop83:;
	} // ( ... )*
	_ttype = testLiteralsTable(ID);
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mANY_CHAR(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = ANY_CHAR;
	string::size_type _saveIndex;
	
	matchNot(EOF/*_CHAR*/);
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}


const unsigned long SqliteLexer::_tokenSet_0_data_[] = { 0UL, 0UL, 2281701374UL, 134217726UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// A B C D E F G H I J K L M N O P Q R S T U V W X Y Z _ a b c d e f g 
// h i j k l m n o p q r s t u v w x y z 
const BitSet SqliteLexer::_tokenSet_0(_tokenSet_0_data_,10);
const unsigned long SqliteLexer::_tokenSet_1_data_[] = { 4294966271UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xb 0xc 0xd 0xe 0xf 0x10 0x11 
// 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f 
//   ! \" # $ % & \' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ 
// A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \\ ] ^ _ ` a b 
// c d e f g h i j k l m n o p q r s t u v w x y z { | } ~ 0x7f 0x80 0x81 
// 0x82 0x83 0x84 0x85 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 0x8d 0x8e 0x8f 
// 0x90 0x91 0x92 0x93 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 0x9b 0x9c 0x9d 
// 0x9e 0x9f 0xa0 0xa1 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 0xa9 0xaa 0xab 
// 0xac 0xad 0xae 0xaf 0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 0xb7 0xb8 0xb9 
// 0xba 0xbb 0xbc 0xbd 0xbe 0xbf 0xc0 0xc1 0xc2 0xc3 0xc4 0xc5 0xc6 0xc7 
// 0xc8 0xc9 0xca 0xcb 0xcc 0xcd 0xce 0xcf 0xd0 0xd1 0xd2 0xd3 0xd4 0xd5 
// 0xd6 0xd7 0xd8 0xd9 0xda 0xdb 0xdc 0xdd 0xde 0xdf 0xe0 0xe1 0xe2 0xe3 
// 0xe4 0xe5 0xe6 0xe7 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 0xef 0xf0 0xf1 
// 0xf2 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 0xff 
const BitSet SqliteLexer::_tokenSet_1(_tokenSet_1_data_,16);
const unsigned long SqliteLexer::_tokenSet_2_data_[] = { 4294966271UL, 4294966271UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xb 0xc 0xd 0xe 0xf 0x10 0x11 
// 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f 
//   ! \" # $ % & \' ( ) + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A 
// B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \\ ] ^ _ ` a b c 
// d e f g h i j k l m n o p q r s t u v w x y z { | } ~ 0x7f 0x80 0x81 
// 0x82 0x83 0x84 0x85 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 0x8d 0x8e 0x8f 
// 0x90 0x91 0x92 0x93 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 0x9b 0x9c 0x9d 
// 0x9e 0x9f 0xa0 0xa1 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 0xa9 0xaa 0xab 
// 0xac 0xad 0xae 0xaf 0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 0xb7 0xb8 0xb9 
// 0xba 0xbb 0xbc 0xbd 0xbe 0xbf 0xc0 0xc1 0xc2 0xc3 0xc4 0xc5 0xc6 0xc7 
// 0xc8 0xc9 0xca 0xcb 0xcc 0xcd 0xce 0xcf 0xd0 0xd1 0xd2 0xd3 0xd4 0xd5 
// 0xd6 0xd7 0xd8 0xd9 0xda 0xdb 0xdc 0xdd 0xde 0xdf 0xe0 0xe1 0xe2 0xe3 
// 0xe4 0xe5 0xe6 0xe7 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 0xef 0xf0 0xf1 
// 0xf2 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 0xff 
const BitSet SqliteLexer::_tokenSet_2(_tokenSet_2_data_,16);
const unsigned long SqliteLexer::_tokenSet_3_data_[] = { 4294966271UL, 4294967295UL, 4294967295UL, 4294967294UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xb 0xc 0xd 0xe 0xf 0x10 0x11 
// 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f 
//   ! \" # $ % & \' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ 
// A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \\ ] ^ _ a b c 
// d e f g h i j k l m n o p q r s t u v w x y z { | } ~ 0x7f 0x80 0x81 
// 0x82 0x83 0x84 0x85 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 0x8d 0x8e 0x8f 
// 0x90 0x91 0x92 0x93 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 0x9b 0x9c 0x9d 
// 0x9e 0x9f 0xa0 0xa1 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 0xa9 0xaa 0xab 
// 0xac 0xad 0xae 0xaf 0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 0xb7 0xb8 0xb9 
// 0xba 0xbb 0xbc 0xbd 0xbe 0xbf 0xc0 0xc1 0xc2 0xc3 0xc4 0xc5 0xc6 0xc7 
// 0xc8 0xc9 0xca 0xcb 0xcc 0xcd 0xce 0xcf 0xd0 0xd1 0xd2 0xd3 0xd4 0xd5 
// 0xd6 0xd7 0xd8 0xd9 0xda 0xdb 0xdc 0xdd 0xde 0xdf 0xe0 0xe1 0xe2 0xe3 
// 0xe4 0xe5 0xe6 0xe7 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 0xef 0xf0 0xf1 
// 0xf2 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 0xff 
const BitSet SqliteLexer::_tokenSet_3(_tokenSet_3_data_,16);
const unsigned long SqliteLexer::_tokenSet_4_data_[] = { 4294966271UL, 4294967167UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xb 0xc 0xd 0xe 0xf 0x10 0x11 
// 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f 
//   ! \" # $ % & ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B 
// C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \\ ] ^ _ ` a b c d 
// e f g h i j k l m n o p q r s t u v w x y z { | } ~ 0x7f 0x80 0x81 0x82 
// 0x83 0x84 0x85 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 0x8d 0x8e 0x8f 0x90 
// 0x91 0x92 0x93 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 0x9b 0x9c 0x9d 0x9e 
// 0x9f 0xa0 0xa1 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 0xa9 0xaa 0xab 0xac 
// 0xad 0xae 0xaf 0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 0xb7 0xb8 0xb9 0xba 
// 0xbb 0xbc 0xbd 0xbe 0xbf 0xc0 0xc1 0xc2 0xc3 0xc4 0xc5 0xc6 0xc7 0xc8 
// 0xc9 0xca 0xcb 0xcc 0xcd 0xce 0xcf 0xd0 0xd1 0xd2 0xd3 0xd4 0xd5 0xd6 
// 0xd7 0xd8 0xd9 0xda 0xdb 0xdc 0xdd 0xde 0xdf 0xe0 0xe1 0xe2 0xe3 0xe4 
// 0xe5 0xe6 0xe7 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 0xef 0xf0 0xf1 0xf2 
// 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 0xff 
const BitSet SqliteLexer::_tokenSet_4(_tokenSet_4_data_,16);
const unsigned long SqliteLexer::_tokenSet_5_data_[] = { 4294966271UL, 4294967291UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xb 0xc 0xd 0xe 0xf 0x10 0x11 
// 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f 
//   ! # $ % & \' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B 
// C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \\ ] ^ _ ` a b c d 
// e f g h i j k l m n o p q r s t u v w x y z { | } ~ 0x7f 0x80 0x81 0x82 
// 0x83 0x84 0x85 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 0x8d 0x8e 0x8f 0x90 
// 0x91 0x92 0x93 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 0x9b 0x9c 0x9d 0x9e 
// 0x9f 0xa0 0xa1 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 0xa9 0xaa 0xab 0xac 
// 0xad 0xae 0xaf 0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 0xb7 0xb8 0xb9 0xba 
// 0xbb 0xbc 0xbd 0xbe 0xbf 0xc0 0xc1 0xc2 0xc3 0xc4 0xc5 0xc6 0xc7 0xc8 
// 0xc9 0xca 0xcb 0xcc 0xcd 0xce 0xcf 0xd0 0xd1 0xd2 0xd3 0xd4 0xd5 0xd6 
// 0xd7 0xd8 0xd9 0xda 0xdb 0xdc 0xdd 0xde 0xdf 0xe0 0xe1 0xe2 0xe3 0xe4 
// 0xe5 0xe6 0xe7 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 0xef 0xf0 0xf1 0xf2 
// 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 0xff 
const BitSet SqliteLexer::_tokenSet_5(_tokenSet_5_data_,16);
const unsigned long SqliteLexer::_tokenSet_6_data_[] = { 4294967295UL, 4294967295UL, 3758096383UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10 
// 0x11 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 
// 0x1f   ! \" # $ % & \' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > 
// ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \\ ^ _ ` a 
// b c d e f g h i j k l m n o p q r s t u v w x y z { | } ~ 0x7f 0x80 
// 0x81 0x82 0x83 0x84 0x85 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 0x8d 0x8e 
// 0x8f 0x90 0x91 0x92 0x93 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 0x9b 0x9c 
// 0x9d 0x9e 0x9f 0xa0 0xa1 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 0xa9 0xaa 
// 0xab 0xac 0xad 0xae 0xaf 0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 0xb7 0xb8 
// 0xb9 0xba 0xbb 0xbc 0xbd 0xbe 0xbf 0xc0 0xc1 0xc2 0xc3 0xc4 0xc5 0xc6 
// 0xc7 0xc8 0xc9 0xca 0xcb 0xcc 0xcd 0xce 0xcf 0xd0 0xd1 0xd2 0xd3 0xd4 
// 0xd5 0xd6 0xd7 0xd8 0xd9 0xda 0xdb 0xdc 0xdd 0xde 0xdf 0xe0 0xe1 0xe2 
// 0xe3 0xe4 0xe5 0xe6 0xe7 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 0xef 0xf0 
// 0xf1 0xf2 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 
// 0xff 
const BitSet SqliteLexer::_tokenSet_6(_tokenSet_6_data_,16);

