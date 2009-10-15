/* Automatically generated.  Do not edit */
/* See the mkopcodeh.awk script for details */
#define OP_VNext                                1
#define OP_Affinity                             2
#define OP_Column                               3
#define OP_SetCookie                            4
#define OP_Seek                                 5
#define OP_Real                               130   /* same as TK_FLOAT    */
#define OP_Sequence                             6
#define OP_Savepoint                            7
#define OP_Ge                                  80   /* same as TK_GE       */
#define OP_RowKey                               8
#define OP_SCopy                                9
#define OP_Eq                                  76   /* same as TK_EQ       */
#define OP_OpenWrite                           10
#define OP_NotNull                             74   /* same as TK_NOTNULL  */
#define OP_If                                  11
#define OP_ToInt                              144   /* same as TK_TO_INT   */
#define OP_String8                             94   /* same as TK_STRING   */
#define OP_CollSeq                             12
#define OP_OpenRead                            13
#define OP_Expire                              14
#define OP_AutoCommit                          15
#define OP_Gt                                  77   /* same as TK_GT       */
#define OP_Pagecount                           16
#define OP_IntegrityCk                         17
#define OP_Sort                                18
#define OP_Copy                                20
#define OP_Trace                               21
#define OP_Function                            22
#define OP_IfNeg                               23
#define OP_And                                 69   /* same as TK_AND      */
#define OP_Subtract                            87   /* same as TK_MINUS    */
#define OP_Noop                                24
#define OP_Program                             25
#define OP_Return                              26
#define OP_Remainder                           90   /* same as TK_REM      */
#define OP_NewRowid                            27
#define OP_Multiply                            88   /* same as TK_STAR     */
#define OP_FkCounter                           28
#define OP_Variable                            29
#define OP_String                              30
#define OP_RealAffinity                        31
#define OP_VRename                             32
#define OP_ParseSchema                         33
#define OP_VOpen                               34
#define OP_Close                               35
#define OP_CreateIndex                         36
#define OP_IsUnique                            37
#define OP_NotFound                            38
#define OP_Int64                               39
#define OP_MustBeInt                           40
#define OP_Halt                                41
#define OP_Rowid                               42
#define OP_IdxLT                               43
#define OP_AddImm                              44
#define OP_RowData                             45
#define OP_MemMax                              46
#define OP_Or                                  68   /* same as TK_OR       */
#define OP_NotExists                           47
#define OP_Gosub                               48
#define OP_Divide                              89   /* same as TK_SLASH    */
#define OP_Integer                             49
#define OP_ToNumeric                          143   /* same as TK_TO_NUMERIC*/
#define OP_Prev                                50
#define OP_RowSetRead                          51
#define OP_Concat                              91   /* same as TK_CONCAT   */
#define OP_RowSetAdd                           52
#define OP_BitAnd                              82   /* same as TK_BITAND   */
#define OP_VColumn                             53
#define OP_CreateTable                         54
#define OP_Last                                55
#define OP_SeekLe                              56
#define OP_IsNull                              73   /* same as TK_ISNULL   */
#define OP_IncrVacuum                          57
#define OP_IdxRowid                            58
#define OP_ShiftRight                          85   /* same as TK_RSHIFT   */
#define OP_ResetCount                          59
#define OP_Yield                               60
#define OP_DropTrigger                         61
#define OP_DropIndex                           62
#define OP_Param                               63
#define OP_IdxGE                               64
#define OP_IdxDelete                           65
#define OP_Vacuum                              66
#define OP_IfNot                               67
#define OP_DropTable                           70
#define OP_SeekLt                              71
#define OP_MakeRecord                          72
#define OP_ToBlob                             142   /* same as TK_TO_BLOB  */
#define OP_ResultRow                           81
#define OP_Delete                              92
#define OP_AggFinal                            95
#define OP_Compare                             96
#define OP_ShiftLeft                           84   /* same as TK_LSHIFT   */
#define OP_Goto                                97
#define OP_TableLock                           98
#define OP_Clear                               99
#define OP_Le                                  78   /* same as TK_LE       */
#define OP_VerifyCookie                       100
#define OP_AggStep                            101
#define OP_ToText                             141   /* same as TK_TO_TEXT  */
#define OP_Not                                 19   /* same as TK_NOT      */
#define OP_ToReal                             145   /* same as TK_TO_REAL  */
#define OP_Transaction                        102
#define OP_VFilter                            103
#define OP_Ne                                  75   /* same as TK_NE       */
#define OP_VDestroy                           104
#define OP_BitOr                               83   /* same as TK_BITOR    */
#define OP_Next                               105
#define OP_Count                              106
#define OP_IdxInsert                          107
#define OP_Lt                                  79   /* same as TK_LT       */
#define OP_FkIfZero                           108
#define OP_SeekGe                             109
#define OP_Insert                             110
#define OP_Destroy                            111
#define OP_ReadCookie                         112
#define OP_RowSetTest                         113
#define OP_LoadAnalysis                       114
#define OP_Explain                            115
#define OP_HaltIfNull                         116
#define OP_OpenPseudo                         117
#define OP_OpenEphemeral                      118
#define OP_Null                               119
#define OP_Move                               120
#define OP_Blob                               121
#define OP_Add                                 86   /* same as TK_PLUS     */
#define OP_Rewind                             122
#define OP_SeekGt                             123
#define OP_VBegin                             124
#define OP_VUpdate                            125
#define OP_IfZero                             126
#define OP_BitNot                              93   /* same as TK_BITNOT   */
#define OP_VCreate                            127
#define OP_Found                              128
#define OP_IfPos                              129
#define OP_NullRow                            131
#define OP_Jump                               132
#define OP_Permutation                        133

/* The following opcode values are never used */
#define OP_NotUsed_134                        134
#define OP_NotUsed_135                        135
#define OP_NotUsed_136                        136
#define OP_NotUsed_137                        137
#define OP_NotUsed_138                        138
#define OP_NotUsed_139                        139
#define OP_NotUsed_140                        140


/* Properties such as "out2" or "jump" that are specified in
** comments following the "case" for each opcode in the vdbe.c
** are encoded into bitvectors as follows:
*/
#define OPFLG_JUMP            0x0001  /* jump:  P2 holds jmp target */
#define OPFLG_OUT2_PRERELEASE 0x0002  /* out2-prerelease: */
#define OPFLG_IN1             0x0004  /* in1:   P1 is an input */
#define OPFLG_IN2             0x0008  /* in2:   P2 is an input */
#define OPFLG_IN3             0x0010  /* in3:   P3 is an input */
#define OPFLG_OUT3            0x0020  /* out3:  P3 is an output */
#define OPFLG_INITIALIZER {\
/*   0 */ 0x00, 0x01, 0x00, 0x00, 0x10, 0x08, 0x02, 0x00,\
/*   8 */ 0x00, 0x04, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,\
/*  16 */ 0x02, 0x00, 0x01, 0x04, 0x04, 0x00, 0x00, 0x05,\
/*  24 */ 0x00, 0x01, 0x04, 0x02, 0x00, 0x00, 0x02, 0x04,\
/*  32 */ 0x00, 0x00, 0x00, 0x00, 0x02, 0x11, 0x11, 0x02,\
/*  40 */ 0x05, 0x00, 0x02, 0x11, 0x04, 0x00, 0x08, 0x11,\
/*  48 */ 0x01, 0x02, 0x01, 0x21, 0x08, 0x00, 0x02, 0x01,\
/*  56 */ 0x11, 0x01, 0x02, 0x00, 0x04, 0x00, 0x00, 0x02,\
/*  64 */ 0x11, 0x00, 0x00, 0x05, 0x2c, 0x2c, 0x00, 0x11,\
/*  72 */ 0x00, 0x05, 0x05, 0x15, 0x15, 0x15, 0x15, 0x15,\
/*  80 */ 0x15, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c,\
/*  88 */ 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x04, 0x02, 0x00,\
/*  96 */ 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,\
/* 104 */ 0x00, 0x01, 0x02, 0x08, 0x01, 0x11, 0x00, 0x02,\
/* 112 */ 0x02, 0x15, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02,\
/* 120 */ 0x00, 0x02, 0x01, 0x11, 0x00, 0x00, 0x05, 0x00,\
/* 128 */ 0x11, 0x05, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00,\
/* 136 */ 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x04,\
/* 144 */ 0x04, 0x04,}
