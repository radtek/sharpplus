/***** This file contains automatically generated code ******
**
** The code in this file has been automatically generated by
**
**     $Header: /sqlite/sqlite/tool/mkkeywordhash.c,v 1.38 2009/06/09 14:27:41 drh Exp $
**
** The code in this file implements a function that determines whether
** or not a given identifier is really an SQL keyword.  The same thing
** might be implemented more directly using a hand-written hash table.
** But by using this automatically generated code, the size of the code
** is substantially reduced.  This is important for embedded applications
** on platforms with limited memory.
*/
/* Hash score: 171 */
static int keywordCode(const char *z, int n){
  /* zText[] encodes 801 bytes of keywords in 541 bytes */
  /*   REINDEXEDESCAPEACHECKEYBEFOREIGNOREGEXPLAINSTEADDATABASELECT       */
  /*   ABLEFTHENDEFERRABLELSEXCEPTRANSACTIONATURALTERAISEXCLUSIVE         */
  /*   XISTSAVEPOINTERSECTRIGGEREFERENCESCONSTRAINTOFFSETEMPORARY         */
  /*   UNIQUERYATTACHAVINGROUPDATEBEGINNERELEASEBETWEENOTNULLIKE          */
  /*   CASCADELETECASECOLLATECREATECURRENT_DATEDETACHIMMEDIATEJOIN        */
  /*   SERTMATCHPLANALYZEPRAGMABORTVALUESVIRTUALIMITWHENWHERENAME         */
  /*   AFTEREPLACEANDEFAULTAUTOINCREMENTCASTCOLUMNCOMMITCONFLICTCROSS     */
  /*   CURRENT_TIMESTAMPRIMARYDEFERREDISTINCTDROPFAILFROMFULLGLOBYIF      */
  /*   ISNULLORDERESTRICTOUTERIGHTROLLBACKROWUNIONUSINGVACUUMVIEW         */
  /*   INITIALLY                                                          */
  static const char zText[540] = {
    'R','E','I','N','D','E','X','E','D','E','S','C','A','P','E','A','C','H',
    'E','C','K','E','Y','B','E','F','O','R','E','I','G','N','O','R','E','G',
    'E','X','P','L','A','I','N','S','T','E','A','D','D','A','T','A','B','A',
    'S','E','L','E','C','T','A','B','L','E','F','T','H','E','N','D','E','F',
    'E','R','R','A','B','L','E','L','S','E','X','C','E','P','T','R','A','N',
    'S','A','C','T','I','O','N','A','T','U','R','A','L','T','E','R','A','I',
    'S','E','X','C','L','U','S','I','V','E','X','I','S','T','S','A','V','E',
    'P','O','I','N','T','E','R','S','E','C','T','R','I','G','G','E','R','E',
    'F','E','R','E','N','C','E','S','C','O','N','S','T','R','A','I','N','T',
    'O','F','F','S','E','T','E','M','P','O','R','A','R','Y','U','N','I','Q',
    'U','E','R','Y','A','T','T','A','C','H','A','V','I','N','G','R','O','U',
    'P','D','A','T','E','B','E','G','I','N','N','E','R','E','L','E','A','S',
    'E','B','E','T','W','E','E','N','O','T','N','U','L','L','I','K','E','C',
    'A','S','C','A','D','E','L','E','T','E','C','A','S','E','C','O','L','L',
    'A','T','E','C','R','E','A','T','E','C','U','R','R','E','N','T','_','D',
    'A','T','E','D','E','T','A','C','H','I','M','M','E','D','I','A','T','E',
    'J','O','I','N','S','E','R','T','M','A','T','C','H','P','L','A','N','A',
    'L','Y','Z','E','P','R','A','G','M','A','B','O','R','T','V','A','L','U',
    'E','S','V','I','R','T','U','A','L','I','M','I','T','W','H','E','N','W',
    'H','E','R','E','N','A','M','E','A','F','T','E','R','E','P','L','A','C',
    'E','A','N','D','E','F','A','U','L','T','A','U','T','O','I','N','C','R',
    'E','M','E','N','T','C','A','S','T','C','O','L','U','M','N','C','O','M',
    'M','I','T','C','O','N','F','L','I','C','T','C','R','O','S','S','C','U',
    'R','R','E','N','T','_','T','I','M','E','S','T','A','M','P','R','I','M',
    'A','R','Y','D','E','F','E','R','R','E','D','I','S','T','I','N','C','T',
    'D','R','O','P','F','A','I','L','F','R','O','M','F','U','L','L','G','L',
    'O','B','Y','I','F','I','S','N','U','L','L','O','R','D','E','R','E','S',
    'T','R','I','C','T','O','U','T','E','R','I','G','H','T','R','O','L','L',
    'B','A','C','K','R','O','W','U','N','I','O','N','U','S','I','N','G','V',
    'A','C','U','U','M','V','I','E','W','I','N','I','T','I','A','L','L','Y',
  };
  static const unsigned char aHash[127] = {
      70,  99, 112,  68,   0,  43,   0,   0,  76,   0,  71,   0,   0,
      41,  12,  72,  15,   0, 111,  79,  49, 106,   0,  19,   0,   0,
     116,   0, 114, 109,   0,  22,  87,   0,   9,   0,   0,  64,  65,
       0,  63,   6,   0,  47,  84,  96,   0, 113,  95,   0,   0,  44,
       0,  97,  24,   0,  17,   0, 117,  48,  23,   0,   5, 104,  25,
      90,   0,   0, 119, 100,  55, 118,  52,   7,  50,   0,  85,   0,
      94,  26,   0,  93,   0,   0,   0,  89,  86,  91,  82, 103,  14,
      38, 102,   0,  75,   0,  18,  83, 105,  31,   0, 115,  74, 107,
      57,  45,  78,   0,   0,  88,  39,   0, 110,   0,  35,   0,   0,
      28,   0,  80,  53,  58,   0,  20,  56,   0,  51,
  };
  static const unsigned char aNext[119] = {
       0,   0,   0,   0,   4,   0,   0,   0,   0,   0,   0,   0,   0,
       0,   2,   0,   0,   0,   0,   0,   0,  13,   0,   0,   0,   0,
       0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
       0,   0,   0,   0,  32,  21,   0,   0,   0,  42,   3,  46,   0,
       0,   0,   0,  29,   0,   0,  37,   0,   0,   0,   1,  60,   0,
       0,  61,   0,  40,   0,   0,   0,   0,   0,   0,   0,  59,   0,
       0,   0,   0,  30,  54,  16,  33,  10,   0,   0,   0,   0,   0,
       0,   0,  11,  66,  73,   0,   8,   0,  98,  92,   0, 101,   0,
      81,   0,  69,   0,   0, 108,  27,  36,  67,  77,   0,  34,  62,
       0,   0,
  };
  static const unsigned char aLen[119] = {
       7,   7,   5,   4,   6,   4,   5,   3,   6,   7,   3,   6,   6,
       7,   7,   3,   8,   2,   6,   5,   4,   4,   3,  10,   4,   6,
      11,   2,   7,   5,   5,   9,   6,   9,   9,   7,  10,  10,   4,
       6,   2,   3,   4,   9,   2,   6,   5,   6,   6,   5,   6,   5,
       5,   7,   7,   7,   3,   4,   4,   7,   3,   6,   4,   7,   6,
      12,   6,   9,   4,   6,   5,   4,   7,   6,   5,   6,   7,   5,
       4,   5,   6,   5,   7,   3,   7,  13,   2,   2,   4,   6,   6,
       8,   5,  17,  12,   7,   8,   8,   2,   4,   4,   4,   4,   4,
       2,   2,   6,   5,   8,   5,   5,   8,   3,   5,   5,   6,   4,
       9,   3,
  };
  static const unsigned short int aOffset[119] = {
       0,   2,   2,   8,   9,  14,  16,  20,  23,  25,  25,  29,  33,
      36,  41,  46,  48,  53,  54,  59,  62,  65,  67,  69,  78,  81,
      86,  95,  96, 101, 105, 109, 117, 122, 128, 136, 142, 152, 159,
     162, 162, 165, 167, 167, 171, 176, 179, 184, 189, 194, 197, 203,
     206, 210, 217, 223, 223, 226, 229, 233, 234, 238, 244, 248, 255,
     261, 273, 279, 288, 290, 296, 301, 303, 310, 315, 320, 326, 332,
     337, 341, 344, 350, 354, 361, 363, 370, 372, 374, 383, 387, 393,
     399, 407, 412, 412, 428, 435, 442, 443, 450, 454, 458, 462, 466,
     469, 471, 473, 479, 483, 491, 495, 500, 508, 511, 516, 521, 527,
     531, 536,
  };
  static const unsigned char aCode[119] = {
    TK_REINDEX,    TK_INDEXED,    TK_INDEX,      TK_DESC,       TK_ESCAPE,     
    TK_EACH,       TK_CHECK,      TK_KEY,        TK_BEFORE,     TK_FOREIGN,    
    TK_FOR,        TK_IGNORE,     TK_LIKE_KW,    TK_EXPLAIN,    TK_INSTEAD,    
    TK_ADD,        TK_DATABASE,   TK_AS,         TK_SELECT,     TK_TABLE,      
    TK_JOIN_KW,    TK_THEN,       TK_END,        TK_DEFERRABLE, TK_ELSE,       
    TK_EXCEPT,     TK_TRANSACTION,TK_ON,         TK_JOIN_KW,    TK_ALTER,      
    TK_RAISE,      TK_EXCLUSIVE,  TK_EXISTS,     TK_SAVEPOINT,  TK_INTERSECT,  
    TK_TRIGGER,    TK_REFERENCES, TK_CONSTRAINT, TK_INTO,       TK_OFFSET,     
    TK_OF,         TK_SET,        TK_TEMP,       TK_TEMP,       TK_OR,         
    TK_UNIQUE,     TK_QUERY,      TK_ATTACH,     TK_HAVING,     TK_GROUP,      
    TK_UPDATE,     TK_BEGIN,      TK_JOIN_KW,    TK_RELEASE,    TK_BETWEEN,    
    TK_NOTNULL,    TK_NOT,        TK_NULL,       TK_LIKE_KW,    TK_CASCADE,    
    TK_ASC,        TK_DELETE,     TK_CASE,       TK_COLLATE,    TK_CREATE,     
    TK_CTIME_KW,   TK_DETACH,     TK_IMMEDIATE,  TK_JOIN,       TK_INSERT,     
    TK_MATCH,      TK_PLAN,       TK_ANALYZE,    TK_PRAGMA,     TK_ABORT,      
    TK_VALUES,     TK_VIRTUAL,    TK_LIMIT,      TK_WHEN,       TK_WHERE,      
    TK_RENAME,     TK_AFTER,      TK_REPLACE,    TK_AND,        TK_DEFAULT,    
    TK_AUTOINCR,   TK_TO,         TK_IN,         TK_CAST,       TK_COLUMNKW,   
    TK_COMMIT,     TK_CONFLICT,   TK_JOIN_KW,    TK_CTIME_KW,   TK_CTIME_KW,   
    TK_PRIMARY,    TK_DEFERRED,   TK_DISTINCT,   TK_IS,         TK_DROP,       
    TK_FAIL,       TK_FROM,       TK_JOIN_KW,    TK_LIKE_KW,    TK_BY,         
    TK_IF,         TK_ISNULL,     TK_ORDER,      TK_RESTRICT,   TK_JOIN_KW,    
    TK_JOIN_KW,    TK_ROLLBACK,   TK_ROW,        TK_UNION,      TK_USING,      
    TK_VACUUM,     TK_VIEW,       TK_INITIALLY,  TK_ALL,        
  };
  int h, i;
  if( n<2 ) return TK_ID;
  h = ((charMap(z[0])*4) ^
      (charMap(z[n-1])*3) ^
      n) % 127;
  for(i=((int)aHash[h])-1; i>=0; i=((int)aNext[i])-1){
    if( aLen[i]==n && sqlite3StrNICmp(&zText[aOffset[i]],z,n)==0 ){
      testcase( i==0 ); /* REINDEX */
      testcase( i==1 ); /* INDEXED */
      testcase( i==2 ); /* INDEX */
      testcase( i==3 ); /* DESC */
      testcase( i==4 ); /* ESCAPE */
      testcase( i==5 ); /* EACH */
      testcase( i==6 ); /* CHECK */
      testcase( i==7 ); /* KEY */
      testcase( i==8 ); /* BEFORE */
      testcase( i==9 ); /* FOREIGN */
      testcase( i==10 ); /* FOR */
      testcase( i==11 ); /* IGNORE */
      testcase( i==12 ); /* REGEXP */
      testcase( i==13 ); /* EXPLAIN */
      testcase( i==14 ); /* INSTEAD */
      testcase( i==15 ); /* ADD */
      testcase( i==16 ); /* DATABASE */
      testcase( i==17 ); /* AS */
      testcase( i==18 ); /* SELECT */
      testcase( i==19 ); /* TABLE */
      testcase( i==20 ); /* LEFT */
      testcase( i==21 ); /* THEN */
      testcase( i==22 ); /* END */
      testcase( i==23 ); /* DEFERRABLE */
      testcase( i==24 ); /* ELSE */
      testcase( i==25 ); /* EXCEPT */
      testcase( i==26 ); /* TRANSACTION */
      testcase( i==27 ); /* ON */
      testcase( i==28 ); /* NATURAL */
      testcase( i==29 ); /* ALTER */
      testcase( i==30 ); /* RAISE */
      testcase( i==31 ); /* EXCLUSIVE */
      testcase( i==32 ); /* EXISTS */
      testcase( i==33 ); /* SAVEPOINT */
      testcase( i==34 ); /* INTERSECT */
      testcase( i==35 ); /* TRIGGER */
      testcase( i==36 ); /* REFERENCES */
      testcase( i==37 ); /* CONSTRAINT */
      testcase( i==38 ); /* INTO */
      testcase( i==39 ); /* OFFSET */
      testcase( i==40 ); /* OF */
      testcase( i==41 ); /* SET */
      testcase( i==42 ); /* TEMP */
      testcase( i==43 ); /* TEMPORARY */
      testcase( i==44 ); /* OR */
      testcase( i==45 ); /* UNIQUE */
      testcase( i==46 ); /* QUERY */
      testcase( i==47 ); /* ATTACH */
      testcase( i==48 ); /* HAVING */
      testcase( i==49 ); /* GROUP */
      testcase( i==50 ); /* UPDATE */
      testcase( i==51 ); /* BEGIN */
      testcase( i==52 ); /* INNER */
      testcase( i==53 ); /* RELEASE */
      testcase( i==54 ); /* BETWEEN */
      testcase( i==55 ); /* NOTNULL */
      testcase( i==56 ); /* NOT */
      testcase( i==57 ); /* NULL */
      testcase( i==58 ); /* LIKE */
      testcase( i==59 ); /* CASCADE */
      testcase( i==60 ); /* ASC */
      testcase( i==61 ); /* DELETE */
      testcase( i==62 ); /* CASE */
      testcase( i==63 ); /* COLLATE */
      testcase( i==64 ); /* CREATE */
      testcase( i==65 ); /* CURRENT_DATE */
      testcase( i==66 ); /* DETACH */
      testcase( i==67 ); /* IMMEDIATE */
      testcase( i==68 ); /* JOIN */
      testcase( i==69 ); /* INSERT */
      testcase( i==70 ); /* MATCH */
      testcase( i==71 ); /* PLAN */
      testcase( i==72 ); /* ANALYZE */
      testcase( i==73 ); /* PRAGMA */
      testcase( i==74 ); /* ABORT */
      testcase( i==75 ); /* VALUES */
      testcase( i==76 ); /* VIRTUAL */
      testcase( i==77 ); /* LIMIT */
      testcase( i==78 ); /* WHEN */
      testcase( i==79 ); /* WHERE */
      testcase( i==80 ); /* RENAME */
      testcase( i==81 ); /* AFTER */
      testcase( i==82 ); /* REPLACE */
      testcase( i==83 ); /* AND */
      testcase( i==84 ); /* DEFAULT */
      testcase( i==85 ); /* AUTOINCREMENT */
      testcase( i==86 ); /* TO */
      testcase( i==87 ); /* IN */
      testcase( i==88 ); /* CAST */
      testcase( i==89 ); /* COLUMN */
      testcase( i==90 ); /* COMMIT */
      testcase( i==91 ); /* CONFLICT */
      testcase( i==92 ); /* CROSS */
      testcase( i==93 ); /* CURRENT_TIMESTAMP */
      testcase( i==94 ); /* CURRENT_TIME */
      testcase( i==95 ); /* PRIMARY */
      testcase( i==96 ); /* DEFERRED */
      testcase( i==97 ); /* DISTINCT */
      testcase( i==98 ); /* IS */
      testcase( i==99 ); /* DROP */
      testcase( i==100 ); /* FAIL */
      testcase( i==101 ); /* FROM */
      testcase( i==102 ); /* FULL */
      testcase( i==103 ); /* GLOB */
      testcase( i==104 ); /* BY */
      testcase( i==105 ); /* IF */
      testcase( i==106 ); /* ISNULL */
      testcase( i==107 ); /* ORDER */
      testcase( i==108 ); /* RESTRICT */
      testcase( i==109 ); /* OUTER */
      testcase( i==110 ); /* RIGHT */
      testcase( i==111 ); /* ROLLBACK */
      testcase( i==112 ); /* ROW */
      testcase( i==113 ); /* UNION */
      testcase( i==114 ); /* USING */
      testcase( i==115 ); /* VACUUM */
      testcase( i==116 ); /* VIEW */
      testcase( i==117 ); /* INITIALLY */
      testcase( i==118 ); /* ALL */
      return aCode[i];
    }
  }
  return TK_ID;
}
int sqlite3KeywordCode(const unsigned char *z, int n){
  return keywordCode((char*)z, n);
}
