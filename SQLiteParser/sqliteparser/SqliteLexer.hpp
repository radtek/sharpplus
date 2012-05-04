#ifndef INC_SqliteLexer_hpp_
#define INC_SqliteLexer_hpp_

#include <antlr/config.hpp>
/* $ANTLR 2.7.5 (20050201): "sqlite.g" -> "SqliteLexer.hpp"$ */
#include <antlr/CommonToken.hpp>
#include <antlr/InputBuffer.hpp>
#include <antlr/BitSet.hpp>
#include "SqliteLexTokenTypes.hpp"

// Include correct superclass header with a header statement for example:
// header "post_include_hpp" {
// #include "UnicodeCharScanner.hpp"
// }
// Or....
// header {
// #include "UnicodeCharScanner.hpp"
// }


#include "SqliteEntity.h"
#include <antlr/TokenStreamRewriteEngine.hpp>
#include <antlr/TokenStreamHiddenTokenFilter.hpp>
#include "UnicodeCharBuffer.hpp"
#include "UnicodeCharScanner.hpp"

ANTLR_USING_NAMESPACE(std)
ANTLR_USING_NAMESPACE(antlr)

class CUSTOM_API SqliteLexer : public UnicodeCharScanner, public SqliteLexTokenTypes
{

public:
	bool done;
	bool comment_valid;
	void uponEOF()
	{
		done = true;
	}	

    //note: set case_sensitive=false
	SqliteLexer( std::istream& in )
	: UnicodeCharScanner(new UnicodeCharBuffer(in),false)
	{
		initLiterals();
	}
	SqliteLexer( UnicodeCharBuffer& ib )
	: UnicodeCharScanner(ib,false)
	{
		initLiterals();
	}
	
    /**
     * State variable used to hold current lexer state.
     * In this case it's used for incomplete tokens only.
     */
    int state;

    int getState() {
        return state;
    }

    void resetState() {
        state = 0;
    }	
    
private:
	void initLiterals();
public:
	bool getCaseSensitiveLiterals() const
	{
		return false;
	}
public:
#if 0
// constructor creation turned of with 'noConstructor' option
	SqliteLexer(istream& in);
	SqliteLexer(InputBuffer& ib);
	SqliteLexer(const LexerSharedInputState& state);
// constructor creation turned of with 'noConstructor' option
#endif
	RefToken nextToken();
	public: void mSPACE(bool _createToken);
	public: void mNEW_LINE(bool _createToken);
	public: void mSL_COMMENT(bool _createToken);
	public: void mMINUS(bool _createToken);
	public: void mLP(bool _createToken);
	public: void mRP(bool _createToken);
	public: void mSEMI(bool _createToken);
	public: void mPLUS(bool _createToken);
	public: void mSTAR(bool _createToken);
	public: void mML_COMMENT(bool _createToken);
	public: void mSLASH(bool _createToken);
	public: void mREM(bool _createToken);
	public: void mEQ(bool _createToken);
	public: void mLE(bool _createToken);
	public: void mNE(bool _createToken);
	public: void mLSHIFT(bool _createToken);
	public: void mLESS_THAN(bool _createToken);
	public: void mGE(bool _createToken);
	public: void mRSHIFT(bool _createToken);
	public: void mGT(bool _createToken);
	public: void mNE_LEGAL(bool _createToken);
	public: void mBITOR(bool _createToken);
	public: void mCONCAT(bool _createToken);
	public: void mCOMMA(bool _createToken);
	public: void mBITAND(bool _createToken);
	public: void mBITNOT(bool _createToken);
	public: void mSTRING_LITERAL1(bool _createToken);
	public: void mSTRING_LITERAL2(bool _createToken);
	public: void mSTRING_LITERAL3(bool _createToken);
	public: void mNUMBERIC(bool _createToken);
	public: void mID_1(bool _createToken);
	public: void mVARIABLE_1(bool _createToken);
	public: void mVARIABLE_2(bool _createToken);
	protected: void mSIMPLE_LETTER(bool _createToken);
	public: void mBLOB(bool _createToken);
	public: void mID_2(bool _createToken);
	protected: void mANY(bool _createToken);
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
};

#endif /*INC_SqliteLexer_hpp_*/
