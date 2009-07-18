/* $ANTLR 2.7.5 (20050128): "Sqlite.g" -> "SqliteLexer.cpp"$ */

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
	literals["upper"] = 265;
	literals["full"] = 146;
	literals["update"] = 264;
	literals["avg"] = 69;
	literals["auto_vacuum"] = 68;
	literals["statement"] = 239;
	literals["escape"] = 130;
	literals["with"] = 277;
	literals["count"] = 99;
	literals["precision"] = 211;
	literals["conflict"] = 89;
	literals["table_info"] = 242;
	literals["temp"] = 241;
	literals["having"] = 153;
	literals["current"] = 102;
	literals["day"] = 109;
	literals["current_time"] = 104;
	literals["smallint"] = 237;
	literals["current_user"] = 106;
	literals["varying"] = 272;
	literals["count_changes"] = 30;
	literals["timezone_minute"] = 253;
	literals["user_version"] = 6;
	literals["at"] = 67;
	literals["outer"] = 205;
	literals["for"] = 142;
	literals["bit_length"] = 73;
	literals["check"] = 85;
	literals["else"] = 127;
	literals["time"] = 250;
	literals["current_date"] = 103;
	literals["is"] = 169;
	literals["insert"] = 163;
	literals["of"] = 198;
	literals["after"] = 41;
	literals["and"] = 61;
	literals["overlaps"] = 207;
	literals["user"] = 267;
	literals["temp_store"] = 248;
	literals["begin"] = 66;
	literals["some"] = 238;
	literals["as"] = 64;
	literals["nullif"] = 195;
	literals["convert"] = 97;
	literals["key"] = 172;
	literals["current_timestamp"] = 105;
	literals["desc"] = 118;
	literals["vdbe_trace"] = 273;
	literals["exists"] = 135;
	literals["indicator"] = 158;
	literals["like"] = 178;
	literals["page_size"] = 149;
	literals["left"] = 176;
	literals["unique"] = 262;
	literals["pragma"] = 208;
	literals["parser_trace"] = 206;
	literals["octet_length"] = 197;
	literals["trim"] = 259;
	literals["between"] = 71;
	literals["abort"] = 42;
	literals["national"] = 188;
	literals["intersect"] = 166;
	literals["view"] = 278;
	literals["schema_version"] = 226;
	literals["any"] = 62;
	literals["each"] = 124;
	literals["char_length"] = 83;
	literals["not"] = 193;
	literals["natural"] = 189;
	literals["all"] = 58;
	literals["in"] = 157;
	literals["except"] = 131;
	literals["global"] = 148;
	literals["hour"] = 154;
	literals["system_user"] = 246;
	literals["character"] = 82;
	literals["zone"] = 281;
	literals["delete"] = 117;
	literals["index_info"] = 156;
	literals["when"] = 274;
	literals["join"] = 171;
	literals["null"] = 194;
	literals["unknown"] = 263;
	literals["empty_result_callbacks"] = 129;
	literals["explain"] = 136;
	literals["lower"] = 180;
	literals["both"] = 74;
	literals["before"] = 70;
	literals["month"] = 186;
	literals["distinct"] = 123;
	literals["autoincrement"] = 77;
	literals["character_length"] = 84;
	literals["false"] = 138;
	literals["inner"] = 160;
	literals["default_cache_size"] = 115;
	literals["local"] = 179;
	literals["to"] = 254;
	literals["into"] = 168;
	literals["instead"] = 162;
	literals["case"] = 78;
	literals["timezone_hour"] = 252;
	literals["max"] = 182;
	literals["vaccum"] = 325;
	literals["true"] = 260;
	literals["primary"] = 212;
	literals["corresponding"] = 98;
	literals["rename"] = 221;
	literals["fail"] = 140;
	literals["foreign_key_list"] = 139;
	literals["values"] = 270;
	literals["collate"] = 88;
	literals["interval"] = 167;
	literals["right"] = 225;
	literals["coalesce"] = 87;
	literals["union"] = 261;
	literals["then"] = 249;
	literals["synchronous"] = 243;
	literals["set"] = 235;
	literals["cross"] = 101;
	literals["or"] = 203;
	literals["partial"] = 209;
	literals["year"] = 280;
	literals["by"] = 75;
	literals["index"] = 159;
	literals["ignore"] = 155;
	literals["add"] = 40;
	literals["table"] = 247;
	literals["module"] = 185;
	literals["match"] = 181;
	literals["group"] = 152;
	literals["from"] = 145;
	literals["rollback"] = 223;
	literals["replace"] = 222;
	literals["read"] = 219;
	literals["value"] = 269;
	literals["only"] = 200;
	literals["default"] = 114;
	literals["drop"] = 126;
	literals["extract"] = 137;
	literals["alter"] = 59;
	literals["where"] = 276;
	literals["int"] = 164;
	literals["constraint"] = 90;
	literals["order"] = 204;
	literals["end"] = 128;
	literals["commit"] = 86;
	literals["encoding"] = 4;
	literals["ada"] = 5;
	literals["translate"] = 257;
	literals["temporary"] = 256;
	literals["cache_size"] = 76;
	literals["on"] = 199;
	literals["minute"] = 184;
	literals["using"] = 268;
	literals["create"] = 100;
	literals["row"] = 224;
	literals["vdbe_listing"] = 275;
	literals["temp_store_directory"] = 240;
	literals["short_column_names"] = 236;
	literals["select"] = 232;
	literals["session_user"] = 234;
	literals["sum"] = 245;
	literals["substring"] = 244;
	literals["full_column_names"] = 147;
	literals["cast"] = 79;
	literals["min"] = 183;
	literals["asc"] = 65;
	literals["bit"] = 72;
	literals["case_sensitive_like"] = 80;
	literals["second"] = 230;
	literals["position"] = 210;
	literals["index_list"] = 151;
	literals["leading"] = 175;
	literals["trigger"] = 258;
	literals["dec"] = 111;
	literals["database_list"] = 107;
	literals["trailing"] = 255;
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
				mEXACT_NUM_LIT(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x9 /* '\t' */ :
			case 0xa /* '\n' */ :
			case 0xd /* '\r' */ :
			case 0x20 /* ' ' */ :
			case 0x2d /* '-' */ :
			case 0x2f /* '/' */ :
			{
				mSEPARATOR(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x27 /* '\'' */ :
			{
				mCHAR_STRING(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x5b /* '[' */ :
			{
				mBRACKET_STRING(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x22 /* '\"' */ :
			{
				mDELIMITED_ID(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x25 /* '%' */ :
			{
				mPERCENT(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x26 /* '&' */ :
			{
				mAMPERSAND(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x28 /* '(' */ :
			{
				mLEFT_PAREN(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x29 /* ')' */ :
			{
				mRIGHT_PAREN(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x2a /* '*' */ :
			{
				mASTERISK(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x2b /* '+' */ :
			{
				mPLUS_SIGN(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x2c /* ',' */ :
			{
				mCOMMA(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x3a /* ':' */ :
			{
				mCOLON(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x3b /* ';' */ :
			{
				mSEMICOLON(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x3c /* '<' */ :
			{
				mLESS_THAN_OP(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x3d /* '=' */ :
			{
				mEQUALS_OP(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x3e /* '>' */ :
			{
				mGREATER_THAN_OP(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x3f /* '?' */ :
			{
				mQUESTION_MARK(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x7c /* '|' */ :
			{
				mVERTICAL_BAR(true);
				theRetToken=_returnToken;
				break;
			}
			case 0x5f /* '_' */ :
			{
				mINTRODUCER(true);
				theRetToken=_returnToken;
				break;
			}
			default:
				if ((_tokenSet_0.member(LA(1)))) {
					mREGULAR_ID(true);
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

void SqliteLexer::mREGULAR_ID(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = REGULAR_ID;
	string::size_type _saveIndex;
	
	if ((_tokenSet_1.member(LA(1))) && (LA(2) == 0x27 /* '\'' */ )) {
		{
		switch ( LA(1)) {
		case 0x4e /* 'N' */ :
		case 0x6e /* 'n' */ :
		{
			mNATIONAL_CHAR_STRING_LIT(false);
			_ttype = NATIONAL_CHAR_STRING_LIT;
			break;
		}
		case 0x42 /* 'B' */ :
		case 0x62 /* 'b' */ :
		{
			mBIT_STRING_LIT(false);
			_ttype = BIT_STRING_LIT;
			break;
		}
		case 0x58 /* 'X' */ :
		case 0x78 /* 'x' */ :
		{
			mHEX_STRING_LIT(false);
			_ttype = HEX_STRING_LIT;
			break;
		}
		default:
		{
			throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
		}
		}
		}
	}
	else if ((_tokenSet_0.member(LA(1))) && (true)) {
		{
		mSIMPLE_LETTER(false);
		}
		{ // ( ... )*
		for (;;) {
			switch ( LA(1)) {
			case 0x5f /* '_' */ :
			{
				match('_' /* charlit */ );
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
				matchRange('0','9');
				break;
			}
			default:
				if ((_tokenSet_0.member(LA(1)))) {
					mSIMPLE_LETTER(false);
				}
			else {
				goto _loop5;
			}
			}
		}
		_loop5:;
		} // ( ... )*
		_ttype = testLiteralsTable(REGULAR_ID);
	}
	else {
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mNATIONAL_CHAR_STRING_LIT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = NATIONAL_CHAR_STRING_LIT;
	string::size_type _saveIndex;
	
	{
	switch ( LA(1)) {
	case 0x4e /* 'N' */ :
	{
		match('N' /* charlit */ );
		break;
	}
	case 0x6e /* 'n' */ :
	{
		match('n' /* charlit */ );
		break;
	}
	default:
	{
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	}
	}
	{ // ( ... )+
	int _cnt25=0;
	for (;;) {
		if ((LA(1) == 0x27 /* '\'' */ )) {
			match('\'' /* charlit */ );
			{ // ( ... )*
			for (;;) {
				if ((LA(1) == 0x27 /* '\'' */ ) && (LA(2) == 0x27 /* '\'' */ )) {
					match('\'' /* charlit */ );
					match('\'' /* charlit */ );
				}
				else if ((_tokenSet_2.member(LA(1)))) {
					{
					match(_tokenSet_2);
					}
				}
				else if ((LA(1) == 0xa /* '\n' */  || LA(1) == 0xd /* '\r' */ )) {
					mNEWLINE(false);
				}
				else {
					goto _loop23;
				}
				
			}
			_loop23:;
			} // ( ... )*
			match('\'' /* charlit */ );
			{
			if ((_tokenSet_3.member(LA(1)))) {
				mSEPARATOR(false);
			}
			else {
			}
			
			}
		}
		else {
			if ( _cnt25>=1 ) { goto _loop25; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
		}
		
		_cnt25++;
	}
	_loop25:;
	}  // ( ... )+
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mBIT_STRING_LIT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = BIT_STRING_LIT;
	string::size_type _saveIndex;
	
	{
	switch ( LA(1)) {
	case 0x42 /* 'B' */ :
	{
		match('B' /* charlit */ );
		break;
	}
	case 0x62 /* 'b' */ :
	{
		match('b' /* charlit */ );
		break;
	}
	default:
	{
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	}
	}
	{ // ( ... )+
	int _cnt32=0;
	for (;;) {
		if ((LA(1) == 0x27 /* '\'' */ )) {
			match('\'' /* charlit */ );
			{ // ( ... )*
			for (;;) {
				switch ( LA(1)) {
				case 0x30 /* '0' */ :
				{
					match('0' /* charlit */ );
					break;
				}
				case 0x31 /* '1' */ :
				{
					match('1' /* charlit */ );
					break;
				}
				default:
				{
					goto _loop30;
				}
				}
			}
			_loop30:;
			} // ( ... )*
			match('\'' /* charlit */ );
			{
			if ((_tokenSet_3.member(LA(1)))) {
				mSEPARATOR(false);
			}
			else {
			}
			
			}
		}
		else {
			if ( _cnt32>=1 ) { goto _loop32; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
		}
		
		_cnt32++;
	}
	_loop32:;
	}  // ( ... )+
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mHEX_STRING_LIT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = HEX_STRING_LIT;
	string::size_type _saveIndex;
	
	{
	switch ( LA(1)) {
	case 0x58 /* 'X' */ :
	{
		match('X' /* charlit */ );
		break;
	}
	case 0x78 /* 'x' */ :
	{
		match('x' /* charlit */ );
		break;
	}
	default:
	{
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	}
	}
	{ // ( ... )+
	int _cnt39=0;
	for (;;) {
		if ((LA(1) == 0x27 /* '\'' */ )) {
			match('\'' /* charlit */ );
			{ // ( ... )*
			for (;;) {
				switch ( LA(1)) {
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
				default:
				{
					goto _loop37;
				}
				}
			}
			_loop37:;
			} // ( ... )*
			match('\'' /* charlit */ );
			{
			if ((_tokenSet_3.member(LA(1)))) {
				mSEPARATOR(false);
			}
			else {
			}
			
			}
		}
		else {
			if ( _cnt39>=1 ) { goto _loop39; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
		}
		
		_cnt39++;
	}
	_loop39:;
	}  // ( ... )+
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSIMPLE_LETTER(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = SIMPLE_LETTER;
	string::size_type _saveIndex;
	
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
	default:
		if (((LA(1) >= 0x7f && LA(1) <= 0xff))) {
			matchRange('\177',static_cast<unsigned char>('\377'));
		}
	else {
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

void SqliteLexer::mEXACT_NUM_LIT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = EXACT_NUM_LIT;
	string::size_type _saveIndex;
	
	if ((LA(1) == 0x2e /* '.' */ ) && ((LA(2) >= 0x30 /* '0' */  && LA(2) <= 0x39 /* '9' */ ))) {
		match('.' /* charlit */ );
		mUNSIGNED_INTEGER(false);
		{
		if ((LA(1) == 0x45 /* 'E' */  || LA(1) == 0x65 /* 'e' */ )) {
			{
			switch ( LA(1)) {
			case 0x45 /* 'E' */ :
			{
				match('E' /* charlit */ );
				break;
			}
			case 0x65 /* 'e' */ :
			{
				match('e' /* charlit */ );
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
			mUNSIGNED_INTEGER(false);
			_ttype = APPROXIMATE_NUM_LIT;
		}
		else {
		}
		
		}
	}
	else if ((LA(1) == 0x2e /* '.' */ ) && (LA(2) == 0x2e /* '.' */ )) {
		match('.' /* charlit */ );
		match('.' /* charlit */ );
		_ttype = DOUBLE_PERIOD;
	}
	else if (((LA(1) >= 0x30 /* '0' */  && LA(1) <= 0x39 /* '9' */ ))) {
		mUNSIGNED_INTEGER(false);
		{
		if ((LA(1) == 0x2e /* '.' */ )) {
			match('.' /* charlit */ );
			{
			if (((LA(1) >= 0x30 /* '0' */  && LA(1) <= 0x39 /* '9' */ ))) {
				mUNSIGNED_INTEGER(false);
			}
			else {
			}
			
			}
		}
		else {
			_ttype = UNSIGNED_INTEGER;
		}
		
		}
		{
		if ((LA(1) == 0x45 /* 'E' */  || LA(1) == 0x65 /* 'e' */ )) {
			{
			switch ( LA(1)) {
			case 0x45 /* 'E' */ :
			{
				match('E' /* charlit */ );
				break;
			}
			case 0x65 /* 'e' */ :
			{
				match('e' /* charlit */ );
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
			mUNSIGNED_INTEGER(false);
			_ttype = APPROXIMATE_NUM_LIT;
		}
		else {
		}
		
		}
	}
	else if ((LA(1) == 0x2e /* '.' */ ) && (true)) {
		match('.' /* charlit */ );
		_ttype = PERIOD;
	}
	else {
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mUNSIGNED_INTEGER(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = UNSIGNED_INTEGER;
	string::size_type _saveIndex;
	
	{ // ( ... )+
	int _cnt17=0;
	for (;;) {
		if (((LA(1) >= 0x30 /* '0' */  && LA(1) <= 0x39 /* '9' */ ))) {
			matchRange('0','9');
		}
		else {
			if ( _cnt17>=1 ) { goto _loop17; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
		}
		
		_cnt17++;
	}
	_loop17:;
	}  // ( ... )+
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mNEWLINE(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = NEWLINE;
	string::size_type _saveIndex;
	
	{
	switch ( LA(1)) {
	case 0xd /* '\r' */ :
	{
		match('\r' /* charlit */ );
		{
		if ((LA(1) == 0xa /* '\n' */ ) && (true)) {
			match('\n' /* charlit */ );
		}
		else {
		}
		
		}
		break;
	}
	case 0xa /* '\n' */ :
	{
		match('\n' /* charlit */ );
		break;
	}
	default:
	{
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	}
	}
	newline();
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSEPARATOR(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = SEPARATOR;
	string::size_type _saveIndex;
	
	switch ( LA(1)) {
	case 0x2f /* '/' */ :
	{
		mML_COMMENT(false);
			  
		if (comment_valid)
			             _ttype = COMMENT;
			          else
			             _ttype = ANTLR_USE_NAMESPACE(antlr)Token::SKIP; 
			
		break;
	}
	case 0x9 /* '\t' */ :
	case 0xa /* '\n' */ :
	case 0xd /* '\r' */ :
	case 0x20 /* ' ' */ :
	{
		{ // ( ... )+
		int _cnt82=0;
		for (;;) {
			switch ( LA(1)) {
			case 0x9 /* '\t' */ :
			case 0x20 /* ' ' */ :
			{
				mSPACE(false);
				break;
			}
			case 0xa /* '\n' */ :
			case 0xd /* '\r' */ :
			{
				mNEWLINE(false);
				break;
			}
			default:
			{
				if ( _cnt82>=1 ) { goto _loop82; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
			}
			}
			_cnt82++;
		}
		_loop82:;
		}  // ( ... )+
		
			   //$setType(ANTLR_USE_NAMESPACE(antlr)Token::SKIP); 
			   _ttype = SPACE; 	   
			
		break;
	}
	default:
		if ((LA(1) == 0x2d /* '-' */ ) && (LA(2) == 0x2d /* '-' */ )) {
			mSL_COMMENT(false);
			
				  if (comment_valid)
				    _ttype = COMMENT;
				  else
				    _ttype = ANTLR_USE_NAMESPACE(antlr)Token::SKIP; 	  
				
		}
		else if ((LA(1) == 0x2d /* '-' */ ) && (true)) {
			match('-' /* charlit */ );
			_ttype = MINUS_SIGN;
		}
	else {
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

void SqliteLexer::mCHAR_STRING(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = CHAR_STRING;
	string::size_type _saveIndex;
	
	if ((LA(1) == 0x27 /* '\'' */ ) && ((LA(2) >= 0x0 /* '\0' */  && LA(2) <= 0xff))) {
		{ // ( ... )+
		int _cnt46=0;
		for (;;) {
			if ((LA(1) == 0x27 /* '\'' */ )) {
				match('\'' /* charlit */ );
				{ // ( ... )*
				for (;;) {
					if ((LA(1) == 0x27 /* '\'' */ ) && (LA(2) == 0x27 /* '\'' */ )) {
						match('\'' /* charlit */ );
						match('\'' /* charlit */ );
					}
					else if ((_tokenSet_2.member(LA(1)))) {
						{
						match(_tokenSet_2);
						}
					}
					else if ((LA(1) == 0xa /* '\n' */  || LA(1) == 0xd /* '\r' */ )) {
						mNEWLINE(false);
					}
					else {
						goto _loop44;
					}
					
				}
				_loop44:;
				} // ( ... )*
				match('\'' /* charlit */ );
				{
				if ((_tokenSet_3.member(LA(1)))) {
					mSEPARATOR(false);
				}
				else {
				}
				
				}
			}
			else {
				if ( _cnt46>=1 ) { goto _loop46; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
			}
			
			_cnt46++;
		}
		_loop46:;
		}  // ( ... )+
	}
	else if ((LA(1) == 0x27 /* '\'' */ ) && (true)) {
		match('\'' /* charlit */ );
		_ttype = QUOTE;
	}
	else {
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mBRACKET_STRING(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = BRACKET_STRING;
	string::size_type _saveIndex;
	
	if ((LA(1) == 0x5b /* '[' */ ) && ((LA(2) >= 0x0 /* '\0' */  && LA(2) <= 0xff))) {
		{ // ( ... )+
		int _cnt53=0;
		for (;;) {
			if ((LA(1) == 0x5b /* '[' */ )) {
				match('[' /* charlit */ );
				{ // ( ... )*
				for (;;) {
					if ((_tokenSet_4.member(LA(1)))) {
						{
						match(_tokenSet_4);
						}
					}
					else if ((LA(1) == 0xa /* '\n' */  || LA(1) == 0xd /* '\r' */ )) {
						mNEWLINE(false);
					}
					else {
						goto _loop51;
					}
					
				}
				_loop51:;
				} // ( ... )*
				match(']' /* charlit */ );
				{
				if ((_tokenSet_3.member(LA(1)))) {
					mSEPARATOR(false);
				}
				else {
				}
				
				}
			}
			else {
				if ( _cnt53>=1 ) { goto _loop53; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
			}
			
			_cnt53++;
		}
		_loop53:;
		}  // ( ... )+
	}
	else if ((LA(1) == 0x5b /* '[' */ ) && (true)) {
		match('[' /* charlit */ );
		_ttype = QUOTE;
	}
	else {
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mDELIMITED_ID(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = DELIMITED_ID;
	string::size_type _saveIndex;
	
	match('\"' /* charlit */ );
	{ // ( ... )+
	int _cnt57=0;
	for (;;) {
		if ((LA(1) == 0x22 /* '\"' */ ) && (LA(2) == 0x22 /* '\"' */ )) {
			match('\"' /* charlit */ );
			match('\"' /* charlit */ );
		}
		else if ((_tokenSet_5.member(LA(1)))) {
			{
			match(_tokenSet_5);
			}
		}
		else {
			if ( _cnt57>=1 ) { goto _loop57; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
		}
		
		_cnt57++;
	}
	_loop57:;
	}  // ( ... )+
	match('\"' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mPERCENT(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = PERCENT;
	string::size_type _saveIndex;
	
	match('%' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mAMPERSAND(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = AMPERSAND;
	string::size_type _saveIndex;
	
	match('&' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mLEFT_PAREN(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = LEFT_PAREN;
	string::size_type _saveIndex;
	
	match('(' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mRIGHT_PAREN(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = RIGHT_PAREN;
	string::size_type _saveIndex;
	
	match(')' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mASTERISK(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = ASTERISK;
	string::size_type _saveIndex;
	
	match('*' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mPLUS_SIGN(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = PLUS_SIGN;
	string::size_type _saveIndex;
	
	match('+' /* charlit */ );
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

void SqliteLexer::mCOLON(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = COLON;
	string::size_type _saveIndex;
	
	if ((LA(1) == 0x3a /* ':' */ ) && (_tokenSet_6.member(LA(2)))) {
		match(':' /* charlit */ );
		{ // ( ... )+
		int _cnt67=0;
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
			case 0x2e /* '.' */ :
			{
				match('.' /* charlit */ );
				break;
			}
			case 0x5f /* '_' */ :
			{
				match('_' /* charlit */ );
				break;
			}
			case 0x23 /* '#' */ :
			{
				match('#' /* charlit */ );
				break;
			}
			case 0x24 /* '$' */ :
			{
				match('$' /* charlit */ );
				break;
			}
			case 0x26 /* '&' */ :
			{
				match('&' /* charlit */ );
				break;
			}
			case 0x25 /* '%' */ :
			{
				match('%' /* charlit */ );
				break;
			}
			case 0x40 /* '@' */ :
			{
				match('@' /* charlit */ );
				break;
			}
			default:
				if ((_tokenSet_0.member(LA(1)))) {
					mSIMPLE_LETTER(false);
				}
			else {
				if ( _cnt67>=1 ) { goto _loop67; } else {throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());}
			}
			}
			_cnt67++;
		}
		_loop67:;
		}  // ( ... )+
		_ttype = EMBDD_VARIABLE_NAME;
	}
	else if ((LA(1) == 0x3a /* ':' */ ) && (true)) {
		match(':' /* charlit */ );
	}
	else {
		throw NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
	}
	
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSEMICOLON(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = SEMICOLON;
	string::size_type _saveIndex;
	
	match(';' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mLESS_THAN_OP(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = LESS_THAN_OP;
	string::size_type _saveIndex;
	
	match('<' /* charlit */ );
	{
	switch ( LA(1)) {
	case 0x3e /* '>' */ :
	{
		match('>' /* charlit */ );
		_ttype = NOT_EQUALS_OP;
		break;
	}
	case 0x3d /* '=' */ :
	{
		match('=' /* charlit */ );
		_ttype = LESS_THAN_OR_EQUALS_OP;
		break;
	}
	default:
		{
		}
	}
	}
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mEQUALS_OP(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = EQUALS_OP;
	string::size_type _saveIndex;
	
	match('=' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mGREATER_THAN_OP(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = GREATER_THAN_OP;
	string::size_type _saveIndex;
	
	match('>' /* charlit */ );
	{
	if ((LA(1) == 0x3d /* '=' */ )) {
		match('=' /* charlit */ );
		_ttype = GREATER_THAN_OR_EQUALS_OP;
	}
	else {
	}
	
	}
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mQUESTION_MARK(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = QUESTION_MARK;
	string::size_type _saveIndex;
	
	match('?' /* charlit */ );
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mVERTICAL_BAR(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = VERTICAL_BAR;
	string::size_type _saveIndex;
	
	match('|' /* charlit */ );
	{
	if ((LA(1) == 0x7c /* '|' */ )) {
		match('|' /* charlit */ );
		_ttype = CONCATENATION_OP;
	}
	else {
	}
	
	}
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mINTRODUCER(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = INTRODUCER;
	string::size_type _saveIndex;
	
	match('_' /* charlit */ );
	{
	if ((_tokenSet_3.member(LA(1)))) {
		mSEPARATOR(false);
		_ttype = UNDERSCORE;
	}
	else {
	}
	
	}
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
		if ((_tokenSet_7.member(LA(1)))) {
			{
			match(_tokenSet_7);
			}
		}
		else {
			goto _loop86;
		}
		
	}
	_loop86:;
	} // ( ... )*
	mNEWLINE(false);
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
	
	match("/*");
	{ // ( ... )*
	for (;;) {
		if (((LA(1) == 0x2a /* '*' */ ) && ((LA(2) >= 0x0 /* '\0' */  && LA(2) <= 0xff)))&&( LA(2)!='/' )) {
			match('*' /* charlit */ );
		}
		else if ((LA(1) == 0xd /* '\r' */ ) && (LA(2) == 0xa /* '\n' */ )) {
			match('\r' /* charlit */ );
			match('\n' /* charlit */ );
			newline();
		}
		else if ((LA(1) == 0xd /* '\r' */ ) && ((LA(2) >= 0x0 /* '\0' */  && LA(2) <= 0xff))) {
			match('\r' /* charlit */ );
			newline();
		}
		else if ((LA(1) == 0xa /* '\n' */ )) {
			match('\n' /* charlit */ );
			newline();
		}
		else if ((_tokenSet_8.member(LA(1)))) {
			{
			match(_tokenSet_8);
			}
		}
		else {
			goto _loop90;
		}
		
	}
	_loop90:;
	} // ( ... )*
	match("*/");
	if ( _createToken && _token==nullToken && _ttype!=Token::SKIP ) {
	   _token = makeToken(_ttype);
	   _token->setText(text.substr(_begin, text.length()-_begin));
	}
	_returnToken = _token;
	_saveIndex=0;
}

void SqliteLexer::mSPACE(bool _createToken) {
	int _ttype; RefToken _token; string::size_type _begin = text.length();
	_ttype = SPACE;
	string::size_type _saveIndex;
	
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


const unsigned long SqliteLexer::_tokenSet_0_data_[] = { 0UL, 0UL, 134217726UL, 2281701374UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h 
// i j k l m n o p q r s t u v w x y z 0x7f 0x80 0x81 0x82 0x83 0x84 0x85 
// 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 0x8d 0x8e 0x8f 0x90 0x91 0x92 0x93 
// 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 0x9b 0x9c 0x9d 0x9e 0x9f 0xa0 0xa1 
// 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 0xa9 0xaa 0xab 0xac 0xad 0xae 0xaf 
// 0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 0xb7 0xb8 0xb9 0xba 0xbb 0xbc 0xbd 
// 0xbe 0xbf 0xc0 0xc1 0xc2 0xc3 0xc4 0xc5 0xc6 0xc7 0xc8 0xc9 0xca 0xcb 
// 0xcc 0xcd 0xce 0xcf 0xd0 0xd1 0xd2 0xd3 0xd4 0xd5 0xd6 0xd7 0xd8 0xd9 
// 0xda 0xdb 0xdc 0xdd 0xde 0xdf 0xe0 0xe1 0xe2 0xe3 0xe4 0xe5 0xe6 0xe7 
// 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 0xef 0xf0 0xf1 0xf2 0xf3 0xf4 0xf5 
// 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 0xff 
const BitSet SqliteLexer::_tokenSet_0(_tokenSet_0_data_,16);
const unsigned long SqliteLexer::_tokenSet_1_data_[] = { 0UL, 0UL, 16793604UL, 16793604UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// B N X b n x 
const BitSet SqliteLexer::_tokenSet_1(_tokenSet_1_data_,10);
const unsigned long SqliteLexer::_tokenSet_2_data_[] = { 4294958079UL, 4294967167UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xb 0xc 0xe 0xf 0x10 0x11 0x12 
// 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f   ! 
// \" # $ % & ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D 
// E F G H I J K L M N O P Q R S T U V W X Y Z [ \\ ] ^ _ ` a b c d e f 
// g h i j k l m n o p q r s t u v w x y z { | } ~ 0x7f 0x80 0x81 0x82 
// 0x83 0x84 0x85 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 0x8d 0x8e 0x8f 0x90 
// 0x91 0x92 0x93 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 0x9b 0x9c 0x9d 0x9e 
// 0x9f 0xa0 0xa1 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 0xa9 0xaa 0xab 0xac 
// 0xad 0xae 0xaf 0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 0xb7 0xb8 0xb9 0xba 
// 0xbb 0xbc 0xbd 0xbe 0xbf 0xc0 0xc1 0xc2 0xc3 0xc4 0xc5 0xc6 0xc7 0xc8 
// 0xc9 0xca 0xcb 0xcc 0xcd 0xce 0xcf 0xd0 0xd1 0xd2 0xd3 0xd4 0xd5 0xd6 
// 0xd7 0xd8 0xd9 0xda 0xdb 0xdc 0xdd 0xde 0xdf 0xe0 0xe1 0xe2 0xe3 0xe4 
// 0xe5 0xe6 0xe7 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 0xef 0xf0 0xf1 0xf2 
// 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 0xff 
const BitSet SqliteLexer::_tokenSet_2(_tokenSet_2_data_,16);
const unsigned long SqliteLexer::_tokenSet_3_data_[] = { 9728UL, 40961UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x9 0xa 0xd   - / 
const BitSet SqliteLexer::_tokenSet_3(_tokenSet_3_data_,10);
const unsigned long SqliteLexer::_tokenSet_4_data_[] = { 4294958079UL, 4294967295UL, 3758096383UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xb 0xc 0xe 0xf 0x10 0x11 0x12 
// 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f   ! 
// \" # $ % & \' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B 
// C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \\ ^ _ ` a b c d e 
// f g h i j k l m n o p q r s t u v w x y z { | } ~ 0x7f 0x80 0x81 0x82 
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
const unsigned long SqliteLexer::_tokenSet_5_data_[] = { 4294958079UL, 4294967291UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xb 0xc 0xe 0xf 0x10 0x11 0x12 
// 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f   ! 
// # $ % & \' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D 
// E F G H I J K L M N O P Q R S T U V W X Y Z [ \\ ] ^ _ ` a b c d e f 
// g h i j k l m n o p q r s t u v w x y z { | } ~ 0x7f 0x80 0x81 0x82 
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
const unsigned long SqliteLexer::_tokenSet_6_data_[] = { 0UL, 67059832UL, 2281701375UL, 2281701374UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// # $ % & . 0 1 2 3 4 5 6 7 8 9 @ A B C D E F G H I J K L M N O P Q R 
// S T U V W X Y Z _ a b c d e f g h i j k l m n o p q r s t u v w x y 
// z 0x7f 0x80 0x81 0x82 0x83 0x84 0x85 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 
// 0x8d 0x8e 0x8f 0x90 0x91 0x92 0x93 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 
// 0x9b 0x9c 0x9d 0x9e 0x9f 0xa0 0xa1 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 
// 0xa9 0xaa 0xab 0xac 0xad 0xae 0xaf 0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 
// 0xb7 0xb8 0xb9 0xba 0xbb 0xbc 0xbd 0xbe 0xbf 0xc0 0xc1 0xc2 0xc3 0xc4 
// 0xc5 0xc6 0xc7 0xc8 0xc9 0xca 0xcb 0xcc 0xcd 0xce 0xcf 0xd0 0xd1 0xd2 
// 0xd3 0xd4 0xd5 0xd6 0xd7 0xd8 0xd9 0xda 0xdb 0xdc 0xdd 0xde 0xdf 0xe0 
// 0xe1 0xe2 0xe3 0xe4 0xe5 0xe6 0xe7 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 
// 0xef 0xf0 0xf1 0xf2 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 
// 0xfd 0xfe 0xff 
const BitSet SqliteLexer::_tokenSet_6(_tokenSet_6_data_,16);
const unsigned long SqliteLexer::_tokenSet_7_data_[] = { 4294958079UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xb 0xc 0xe 0xf 0x10 0x11 0x12 
// 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f   ! 
// \" # $ % & \' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B 
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
const BitSet SqliteLexer::_tokenSet_7(_tokenSet_7_data_,16);
const unsigned long SqliteLexer::_tokenSet_8_data_[] = { 4294958079UL, 4294966271UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL };
// 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xb 0xc 0xe 0xf 0x10 0x11 0x12 
// 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f   ! 
// \" # $ % & \' ( ) + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C 
// D E F G H I J K L M N O P Q R S T U V W X Y Z [ \\ ] ^ _ ` a b c d e 
// f g h i j k l m n o p q r s t u v w x y z { | } ~ 0x7f 0x80 0x81 0x82 
// 0x83 0x84 0x85 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 0x8d 0x8e 0x8f 0x90 
// 0x91 0x92 0x93 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 0x9b 0x9c 0x9d 0x9e 
// 0x9f 0xa0 0xa1 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 0xa9 0xaa 0xab 0xac 
// 0xad 0xae 0xaf 0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 0xb7 0xb8 0xb9 0xba 
// 0xbb 0xbc 0xbd 0xbe 0xbf 0xc0 0xc1 0xc2 0xc3 0xc4 0xc5 0xc6 0xc7 0xc8 
// 0xc9 0xca 0xcb 0xcc 0xcd 0xce 0xcf 0xd0 0xd1 0xd2 0xd3 0xd4 0xd5 0xd6 
// 0xd7 0xd8 0xd9 0xda 0xdb 0xdc 0xdd 0xde 0xdf 0xe0 0xe1 0xe2 0xe3 0xe4 
// 0xe5 0xe6 0xe7 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 0xef 0xf0 0xf1 0xf2 
// 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 0xff 
const BitSet SqliteLexer::_tokenSet_8(_tokenSet_8_data_,16);

