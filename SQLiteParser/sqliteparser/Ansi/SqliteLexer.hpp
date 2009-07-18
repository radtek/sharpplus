#ifndef INC_SqliteLexer_hpp_
#define INC_SqliteLexer_hpp_

#include <antlr/config.hpp>
/* $ANTLR 2.7.5 (20050128): "Sqlite.g" -> "SqliteLexer.hpp"$ */
#include <antlr/CommonToken.hpp>
#include <antlr/InputBuffer.hpp>
#include <antlr/BitSet.hpp>
#include "SqliteLexTokenTypes.hpp"
#include <antlr/CharScanner.hpp>

#include "SqliteEntity.h"
#include <antlr/TokenStreamRewriteEngine.hpp>
//#include "UnicodeCharBuffer.hpp"
//#include "UnicodeCharScanner.hpp"

ANTLR_USING_NAMESPACE(std)
ANTLR_USING_NAMESPACE(antlr)

class CUSTOM_API SqliteLexer : public CharScanner, public SqliteLexTokenTypes
{

public:
	bool done;
	bool comment_valid;
	void uponEOF()
	{
		done = true;
	}	

/*	SqliteLexer( std::istream& in )
	: UnicodeCharScanner(new UnicodeCharBuffer(in),true)
	{
		initLiterals();
	}
	SqliteLexer( UnicodeCharBuffer& ib )
	: UnicodeCharScanner(ib,true)
	{
		initLiterals();
	}*/
private:
	void initLiterals();
public:
	bool getCaseSensitiveLiterals() const
	{
		return false;
	}
public:
	SqliteLexer(istream& in);
	SqliteLexer(InputBuffer& ib);
	SqliteLexer(const LexerSharedInputState& state);
	RefToken nextToken();
	public: void mREGULAR_ID(bool _createToken);
	protected: void mNATIONAL_CHAR_STRING_LIT(bool _createToken);
	protected: void mBIT_STRING_LIT(bool _createToken);
	protected: void mHEX_STRING_LIT(bool _createToken);
	protected: void mSIMPLE_LETTER(bool _createToken);
	public: void mEXACT_NUM_LIT(bool _createToken);
	protected: void mUNSIGNED_INTEGER(bool _createToken);
	protected: void mNEWLINE(bool _createToken);
	public: void mSEPARATOR(bool _createToken);
	public: void mCHAR_STRING(bool _createToken);
	public: void mBRACKET_STRING(bool _createToken);
	public: void mDELIMITED_ID(bool _createToken);
	public: void mPERCENT(bool _createToken);
	public: void mAMPERSAND(bool _createToken);
	public: void mLEFT_PAREN(bool _createToken);
	public: void mRIGHT_PAREN(bool _createToken);
	public: void mASTERISK(bool _createToken);
	public: void mPLUS_SIGN(bool _createToken);
	public: void mCOMMA(bool _createToken);
	public: void mCOLON(bool _createToken);
	public: void mSEMICOLON(bool _createToken);
	public: void mLESS_THAN_OP(bool _createToken);
	public: void mEQUALS_OP(bool _createToken);
	public: void mGREATER_THAN_OP(bool _createToken);
	public: void mQUESTION_MARK(bool _createToken);
	public: void mVERTICAL_BAR(bool _createToken);
	public: void mINTRODUCER(bool _createToken);
	protected: void mSL_COMMENT(bool _createToken);
	protected: void mML_COMMENT(bool _createToken);
	protected: void mSPACE(bool _createToken);
	protected: void mANY_CHAR(bool _createToken);
private:
	
	static const unsigned long _tokenSet_0_data_[];
	static const BitSet _tokenSet_0;
	static const unsigned long _tokenSet_1_data_[];
	static const BitSet _tokenSet_1;
	static const unsigned long _tokenSet_2_data_[];
	static const BitSet _tokenSet_2;
	static const unsigned long _tokenSet_3_data_[];
	static const BitSet _tokenSet_3;
	static const unsigned long _tokenSet_4_data_[];
	static const BitSet _tokenSet_4;
	static const unsigned long _tokenSet_5_data_[];
	static const BitSet _tokenSet_5;
	static const unsigned long _tokenSet_6_data_[];
	static const BitSet _tokenSet_6;
	static const unsigned long _tokenSet_7_data_[];
	static const BitSet _tokenSet_7;
	static const unsigned long _tokenSet_8_data_[];
	static const BitSet _tokenSet_8;
};

#endif /*INC_SqliteLexer_hpp_*/
