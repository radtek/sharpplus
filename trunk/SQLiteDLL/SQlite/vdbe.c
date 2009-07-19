/*
** 2001 September 15
**
** The author disclaims copyright to this source code.  In place of
** a legal notice, here is a blessing:
**
**    May you do good and not evil.
**    May you find forgiveness for yourself and forgive others.
**    May you share freely, never taking more than you give.
**
*************************************************************************
** The code in this file implements execution method of the 
** Virtual Database Engine (VDBE).  A separate file ("vdbeaux.c")
** handles housekeeping details such as creating and deleting
** VDBE instances.  This file is solely interested in executing
** the VDBE program.
**
** In the external interface, an "sqlite3_stmt*" is an opaque pointer
** to a VDBE.
**
** The SQL parser generates a program which is then executed by
** the VDBE to do the work of the SQL statement.  VDBE programs are 
** similar in form to assembly language.  The program consists of
** a linear sequence of operations.  Each operation has an opcode 
** and 5 operands.  Operands P1, P2, and P3 are integers.  Operand P4 
** is a null-terminated string.  Operand P5 is an unsigned character.
** Few opcodes use all 5 operands.
**
** Computation results are stored on a set of registers numbered beginning
** with 1 and going up to Vdbe.nMem.  Each register can store
** either an integer, a null-terminated string, a floating point
** number, or the SQL "NULL" value.  An implicit conversion from one
** type to the other occurs as necessary.
** 
** Most of the code in this file is taken up by the sqlite3VdbeExec()
** function which does the work of interpreting a VDBE program.
** But other routines are also provided to help in building up
** a program instruction by instruction.
**
** Various scripts scan this source file in order to generate HTML
** documentation, headers files, or other derived files.  The formatting
** of the code in this file is, therefore, important.  See other comments
** in this file for details.  If in doubt, do not deviate from existing
** commenting and indentation practices when changing or adding code.
**
** $Id: vdbe.c,v 1.866 2009/06/26 16:32:13 shane Exp $
*/
#include "sqliteInt.h"
#include "vdbeInt.h"

/*
** The following global variable is incremented every time a cursor
** moves, either by the OP_SeekXX, OP_Next, or OP_Prev opcodes.  The test
** procedures use this information to make sure that indices are
** working correctly.  This variable has no function other than to
** help verify the correct operation of the library.
*/
#ifdef SQLITE_TEST
int sqlite3_search_count = 0;
#endif

/*
** When this global variable is positive, it gets decremented once before
** each instruction in the VDBE.  When reaches zero, the u1.isInterrupted
** field of the sqlite3 structure is set in order to simulate and interrupt.
**
** This facility is used for testing purposes only.  It does not function
** in an ordinary build.
*/
#ifdef SQLITE_TEST
int sqlite3_interrupt_count = 0;
#endif

/*
** The next global variable is incremented each type the OP_Sort opcode
** is executed.  The test procedures use this information to make sure that
** sorting is occurring or not occurring at appropriate times.   This variable
** has no function other than to help verify the correct operation of the
** library.
*/
#ifdef SQLITE_TEST
int sqlite3_sort_count = 0;
#endif

/*
** The next global variable records the size of the largest MEM_Blob
** or MEM_Str that has been used by a VDBE opcode.  The test procedures
** use this information to make sure that the zero-blob functionality
** is working correctly.   This variable has no function other than to
** help verify the correct operation of the library.
*/
#ifdef SQLITE_TEST
int sqlite3_max_blobsize = 0;
static void updateMaxBlobsize(Mem *p){
  if( (p->flags & (MEM_Str|MEM_Blob))!=0 && p->n>sqlite3_max_blobsize ){
    sqlite3_max_blobsize = p->n;
  }
}
#endif

/*
** Test a register to see if it exceeds the current maximum blob size.
** If it does, record the new maximum blob size.
*/
#if defined(SQLITE_TEST) && !defined(SQLITE_OMIT_BUILTIN_TEST)
# define UPDATE_MAX_BLOBSIZE(P)  updateMaxBlobsize(P)
#else
# define UPDATE_MAX_BLOBSIZE(P)
#endif

/*
** Convert the given register into a string if it isn't one
** already. Return non-zero if a malloc() fails.
*/
#define Stringify(P, enc) \
   if(((P)->flags&(MEM_Str|MEM_Blob))==0 && sqlite3VdbeMemStringify(P,enc)) \
     { goto no_mem; }

/*
** An ephemeral string value (signified by the MEM_Ephem flag) contains
** a pointer to a dynamically allocated string where some other entity
** is responsible for deallocating that string.  Because the register
** does not control the string, it might be deleted without the register
** knowing it.
**
** This routine converts an ephemeral string into a dynamically allocated
** string that the register itself controls.  In other words, it
** converts an MEM_Ephem string into an MEM_Dyn string.
*/
#define Deephemeralize(P) \
   if( ((P)->flags&MEM_Ephem)!=0 \
       && sqlite3VdbeMemMakeWriteable(P) ){ goto no_mem;}

/*
** Call sqlite3VdbeMemExpandBlob() on the supplied value (type Mem*)
** P if required.
*/
#define ExpandBlob(P) (((P)->flags&MEM_Zero)?sqlite3VdbeMemExpandBlob(P):0)

/*
** Argument pMem points at a register that will be passed to a
** user-defined function or returned to the user as the result of a query.
** The second argument, 'db_enc' is the text encoding used by the vdbe for
** register variables.  This routine sets the pMem->enc and pMem->type
** variables used by the sqlite3_value_*() routines.
*/
#define storeTypeInfo(A,B) _storeTypeInfo(A)
static void _storeTypeInfo(Mem *pMem){
  int flags = pMem->flags;
  if( flags & MEM_Null ){
    pMem->type = SQLITE_NULL;
  }
  else if( flags & MEM_Int ){
    pMem->type = SQLITE_INTEGER;
  }
  else if( flags & MEM_Real ){
    pMem->type = SQLITE_FLOAT;
  }
  else if( flags & MEM_Str ){
    pMem->type = SQLITE_TEXT;
  }else{
    pMem->type = SQLITE_BLOB;
  }
}

/*
** Properties of opcodes.  The OPFLG_INITIALIZER macro is
** created by mkopcodeh.awk during compilation.  Data is obtained
** from the comments following the "case OP_xxxx:" statements in
** this file.  
*/
static const unsigned char opcodeProperty[] = OPFLG_INITIALIZER;

/*
** Return true if an opcode has any of the OPFLG_xxx properties
** specified by mask.
*/
int sqlite3VdbeOpcodeHasProperty(int opcode, int mask){
  assert( opcode>0 && opcode<(int)sizeof(opcodeProperty) );
  return (opcodeProperty[opcode]&mask)!=0;
}

/*
** Allocate VdbeCursor number iCur.  Return a pointer to it.  Return NULL
** if we run out of memory.
*/
static VdbeCursor *allocateCursor(
  Vdbe *p,              /* The virtual machine */
  int iCur,             /* Index of the new VdbeCursor */
  int nField,           /* Number of fields in the table or index */
  int iDb,              /* When database the cursor belongs to, or -1 */
  int isBtreeCursor     /* True for B-Tree vs. pseudo-table or vtab */
){
  /* Find the memory cell that will be used to store the blob of memory
  ** required for this VdbeCursor structure. It is convenient to use a 
  ** vdbe memory cell to manage the memory allocation required for a
  ** VdbeCursor structure for the following reasons:
  **
  **   * Sometimes cursor numbers are used for a couple of different
  **     purposes in a vdbe program. The different uses might require
  **     different sized allocations. Memory cells provide growable
  **     allocations.
  **
  **   * When using ENABLE_MEMORY_MANAGEMENT, memory cell buffers can
  **     be freed lazily via the sqlite3_release_memory() API. This
  **     minimizes the number of malloc calls made by the system.
  **
  ** Memory cells for cursors are allocated at the top of the address
  ** space. Memory cell (p->nMem) corresponds to cursor 0. Space for
  ** cursor 1 is managed by memory cell (p->nMem-1), etc.
  */
  Mem *pMem = &p->aMem[p->nMem-iCur];

  int nByte;
  VdbeCursor *pCx = 0;
  nByte = 
      sizeof(VdbeCursor) + 
      (isBtreeCursor?sqlite3BtreeCursorSize():0) + 
      2*nField*sizeof(u32);

  assert( iCur<p->nCursor );
  if( p->apCsr[iCur] ){
    sqlite3VdbeFreeCursor(p, p->apCsr[iCur]);
    p->apCsr[iCur] = 0;
  }
  if( SQLITE_OK==sqlite3VdbeMemGrow(pMem, nByte, 0) ){
    p->apCsr[iCur] = pCx = (VdbeCursor*)pMem->z;
    memset(pMem->z, 0, nByte);
    pCx->iDb = iDb;
    pCx->nField = nField;
    if( nField ){
      pCx->aType = (u32 *)&pMem->z[sizeof(VdbeCursor)];
    }
    if( isBtreeCursor ){
      pCx->pCursor = (BtCursor*)
          &pMem->z[sizeof(VdbeCursor)+2*nField*sizeof(u32)];
    }
  }
  return pCx;
}

/*
** Try to convert a value into a numeric representation if we can
** do so without loss of information.  In other words, if the string
** looks like a number, convert it into a number.  If it does not
** look like a number, leave it alone.
*/
static void applyNumericAffinity(Mem *pRec){
  if( (pRec->flags & (MEM_Real|MEM_Int))==0 ){
    int realnum;
    sqlite3VdbeMemNulTerminate(pRec);
    if( (pRec->flags&MEM_Str)
         && sqlite3IsNumber(pRec->z, &realnum, pRec->enc) ){
      i64 value;
      sqlite3VdbeChangeEncoding(pRec, SQLITE_UTF8);
      if( !realnum && sqlite3Atoi64(pRec->z, &value) ){
        pRec->u.i = value;
        MemSetTypeFlag(pRec, MEM_Int);
      }else{
        sqlite3VdbeMemRealify(pRec);
      }
    }
  }
}

/*
** Processing is determine by the affinity parameter:
**
** SQLITE_AFF_INTEGER:
** SQLITE_AFF_REAL:
** SQLITE_AFF_NUMERIC:
**    Try to convert pRec to an integer representation or a 
**    floating-point representation if an integer representation
**    is not possible.  Note that the integer representation is
**    always preferred, even if the affinity is REAL, because
**    an integer representation is more space efficient on disk.
**
** SQLITE_AFF_TEXT:
**    Convert pRec to a text representation.
**
** SQLITE_AFF_NONE:
**    No-op.  pRec is unchanged.
*/
static void applyAffinity(
  Mem *pRec,          /* The value to apply affinity to */
  char affinity,      /* The affinity to be applied */
  u8 enc              /* Use this text encoding */
){
  if( affinity==SQLITE_AFF_TEXT ){
    /* Only attempt the conversion to TEXT if there is an integer or real
    ** representation (blob and NULL do not get converted) but no string
    ** representation.
    */
    if( 0==(pRec->flags&MEM_Str) && (pRec->flags&(MEM_Real|MEM_Int)) ){
      sqlite3VdbeMemStringify(pRec, enc);
    }
    pRec->flags &= ~(MEM_Real|MEM_Int);
  }else if( affinity!=SQLITE_AFF_NONE ){
    assert( affinity==SQLITE_AFF_INTEGER || affinity==SQLITE_AFF_REAL
             || affinity==SQLITE_AFF_NUMERIC );
    applyNumericAffinity(pRec);
    if( pRec->flags & MEM_Real ){
      sqlite3VdbeIntegerAffinity(pRec);
    }
  }
}

/*
** Try to convert the type of a function argument or a result column
** into a numeric representation.  Use either INTEGER or REAL whichever
** is appropriate.  But only do the conversion if it is possible without
** loss of information and return the revised type of the argument.
**
** This is an EXPERIMENTAL api and is subject to change or removal.
*/
int sqlite3_value_numeric_type(sqlite3_value *pVal){
  Mem *pMem = (Mem*)pVal;
  applyNumericAffinity(pMem);
  storeTypeInfo(pMem, 0);
  return pMem->type;
}

/*
** Exported version of applyAffinity(). This one works on sqlite3_value*, 
** not the internal Mem* type.
*/
void sqlite3ValueApplyAffinity(
  sqlite3_value *pVal, 
  u8 affinity, 
  u8 enc
){
  applyAffinity((Mem *)pVal, affinity, enc);
}

#ifdef SQLITE_DEBUG
/*
** Write a nice string representation of the contents of cell pMem
** into buffer zBuf, length nBuf.
*/
void sqlite3VdbeMemPrettyPrint(Mem *pMem, char *zBuf){
  char *zCsr = zBuf;
  int f = pMem->flags;

  static const char *const encnames[] = {"(X)", "(8)", "(16LE)", "(16BE)"};

  if( f&MEM_Blob ){
    int i;
    char c;
    if( f & MEM_Dyn ){
      c = 'z';
      assert( (f & (MEM_Static|MEM_Ephem))==0 );
    }else if( f & MEM_Static ){
      c = 't';
      assert( (f & (MEM_Dyn|MEM_Ephem))==0 );
    }else if( f & MEM_Ephem ){
      c = 'e';
      assert( (f & (MEM_Static|MEM_Dyn))==0 );
    }else{
      c = 's';
    }

    sqlite3_snprintf(100, zCsr, "%c", c);
    zCsr += sqlite3Strlen30(zCsr);
    sqlite3_snprintf(100, zCsr, "%d[", pMem->n);
    zCsr += sqlite3Strlen30(zCsr);
    for(i=0; i<16 && i<pMem->n; i++){
      sqlite3_snprintf(100, zCsr, "%02X", ((int)pMem->z[i] & 0xFF));
      zCsr += sqlite3Strlen30(zCsr);
    }
    for(i=0; i<16 && i<pMem->n; i++){
      char z = pMem->z[i];
      if( z<32 || z>126 ) *zCsr++ = '.';
      else *zCsr++ = z;
    }

    sqlite3_snprintf(100, zCsr, "]%s", encnames[pMem->enc]);
    zCsr += sqlite3Strlen30(zCsr);
    if( f & MEM_Zero ){
      sqlite3_snprintf(100, zCsr,"+%dz",pMem->u.nZero);
      zCsr += sqlite3Strlen30(zCsr);
    }
    *zCsr = '\0';
  }else if( f & MEM_Str ){
    int j, k;
    zBuf[0] = ' ';
    if( f & MEM_Dyn ){
      zBuf[1] = 'z';
      assert( (f & (MEM_Static|MEM_Ephem))==0 );
    }else if( f & MEM_Static ){
      zBuf[1] = 't';
      assert( (f & (MEM_Dyn|MEM_Ephem))==0 );
    }else if( f & MEM_Ephem ){
      zBuf[1] = 'e';
      assert( (f & (MEM_Static|MEM_Dyn))==0 );
    }else{
      zBuf[1] = 's';
    }
    k = 2;
    sqlite3_snprintf(100, &zBuf[k], "%d", pMem->n);
    k += sqlite3Strlen30(&zBuf[k]);
    zBuf[k++] = '[';
    for(j=0; j<15 && j<pMem->n; j++){
      u8 c = pMem->z[j];
      if( c>=0x20 && c<0x7f ){
        zBuf[k++] = c;
      }else{
        zBuf[k++] = '.';
      }
    }
    zBuf[k++] = ']';
    sqlite3_snprintf(100,&zBuf[k], encnames[pMem->enc]);
    k += sqlite3Strlen30(&zBuf[k]);
    zBuf[k++] = 0;
  }
}
#endif

#ifdef SQLITE_DEBUG
/*
** Print the value of a register for tracing purposes:
*/
static void memTracePrint(FILE *out, Mem *p){
  if( p->flags & MEM_Null ){
    fprintf(out, " NULL");
  }else if( (p->flags & (MEM_Int|MEM_Str))==(MEM_Int|MEM_Str) ){
    fprintf(out, " si:%lld", p->u.i);
  }else if( p->flags & MEM_Int ){
    fprintf(out, " i:%lld", p->u.i);
#ifndef SQLITE_OMIT_FLOATING_POINT
  }else if( p->flags & MEM_Real ){
    fprintf(out, " r:%g", p->r);
#endif
  }else if( p->flags & MEM_RowSet ){
    fprintf(out, " (rowset)");
  }else{
    char zBuf[200];
    sqlite3VdbeMemPrettyPrint(p, zBuf);
    fprintf(out, " ");
    fprintf(out, "%s", zBuf);
  }
}
static void registerTrace(FILE *out, int iReg, Mem *p){
  fprintf(out, "REG[%d] = ", iReg);
  memTracePrint(out, p);
  fprintf(out, "\n");
}
#endif

#ifdef SQLITE_DEBUG
#  define REGISTER_TRACE(R,M) if(p->trace)registerTrace(p->trace,R,M)
#else
#  define REGISTER_TRACE(R,M)
#endif


#ifdef VDBE_PROFILE

/* 
** hwtime.h contains inline assembler code for implementing 
** high-performance timing routines.
*/
#include "hwtime.h"

#endif

/*
** The CHECK_FOR_INTERRUPT macro defined here looks to see if the
** sqlite3_interrupt() routine has been called.  If it has been, then
** processing of the VDBE program is interrupted.
**
** This macro added to every instruction that does a jump in order to
** implement a loop.  This test used to be on every single instruction,
** but that meant we more testing that we needed.  By only testing the
** flag on jump instructions, we get a (small) speed improvement.
*/
#define CHECK_FOR_INTERRUPT \
   if( db->u1.isInterrupted ) goto abort_due_to_interrupt;

#ifdef SQLITE_DEBUG
static int fileExists(sqlite3 *db, const char *zFile){
  int res = 0;
  int rc = SQLITE_OK;
#ifdef SQLITE_TEST
  /* If we are currently testing IO errors, then do not call OsAccess() to
  ** test for the presence of zFile. This is because any IO error that
  ** occurs here will not be reported, causing the test to fail.
  */
  extern int sqlite3_io_error_pending;
  if( sqlite3_io_error_pending<=0 )
#endif
    rc = sqlite3OsAccess(db->pVfs, zFile, SQLITE_ACCESS_EXISTS, &res);
  return (res && rc==SQLITE_OK);
}
#endif

#ifndef NDEBUG
/*
** This function is only called from within an assert() expression. It
** checks that the sqlite3.nTransaction variable is correctly set to
** the number of non-transaction savepoints currently in the 
** linked list starting at sqlite3.pSavepoint.
** 
** Usage:
**
**     assert( checkSavepointCount(db) );
*/
static int checkSavepointCount(sqlite3 *db){
  int n = 0;
  Savepoint *p;
  for(p=db->pSavepoint; p; p=p->pNext) n++;
  assert( n==(db->nSavepoint + db->isTransactionSavepoint) );
  return 1;
}
#endif

/*
** Execute as much of a VDBE program as we can then return.
**
** sqlite3VdbeMakeReady() must be called before this routine in order to
** close the program with a final OP_Halt and to set up the callbacks
** and the error message pointer.
**
** Whenever a row or result data is available, this routine will either
** invoke the result callback (if there is one) or return with
** SQLITE_ROW.
**
** If an attempt is made to open a locked database, then this routine
** will either invoke the busy callback (if there is one) or it will
** return SQLITE_BUSY.
**
** If an error occurs, an error message is written to memory obtained
** from sqlite3_malloc() and p->zErrMsg is made to point to that memory.
** The error code is stored in p->rc and this routine returns SQLITE_ERROR.
**
** If the callback ever returns non-zero, then the program exits
** immediately.  There will be no error message but the p->rc field is
** set to SQLITE_ABORT and this routine will return SQLITE_ERROR.
**
** A memory allocation error causes p->rc to be set to SQLITE_NOMEM and this
** routine to return SQLITE_ERROR.
**
** Other fatal errors return SQLITE_ERROR.
**
** After this routine has finished, sqlite3VdbeFinalize() should be
** used to clean up the mess that was left behind.
*/
int sqlite3VdbeExec(
  Vdbe *p                    /* The VDBE */
){
  int pc;                    /* The program counter */
  Op *pOp;                   /* Current operation */
  int rc = SQLITE_OK;        /* Value to return */
  sqlite3 *db = p->db;       /* The database */
  u8 encoding = ENC(db);     /* The database encoding */
  Mem *pIn1 = 0;             /* 1st input operand */
  Mem *pIn2 = 0;             /* 2nd input operand */
  Mem *pIn3 = 0;             /* 3rd input operand */
  Mem *pOut = 0;             /* Output operand */
  u8 opProperty;
  int iCompare = 0;          /* Result of last OP_Compare operation */
  int *aPermute = 0;         /* Permutation of columns for OP_Compare */
#ifdef VDBE_PROFILE
  u64 start;                 /* CPU clock count at start of opcode */
  int origPc;                /* Program counter at start of opcode */
#endif
#ifndef SQLITE_OMIT_PROGRESS_CALLBACK
  int nProgressOps = 0;      /* Opcodes executed since progress callback. */
#endif
  /********************************************************************
  ** Automatically generated code
  **
  ** The following union is automatically generated by the
  ** vdbe-compress.tcl script.  The purpose of this union is to
  ** reduce the amount of stack space required by this function.
  ** See comments in the vdbe-compress.tcl script for details.
  */
  union vdbeExecUnion {
    struct OP_Yield_stack_vars {
      int pcDest;
    } aa;
    struct OP_Variable_stack_vars {
      int p1;          /* Variable to copy from */
      int p2;          /* Register to copy to */
      int n;           /* Number of values left to copy */
      Mem *pVar;       /* Value being transferred */
    } ab;
    struct OP_Move_stack_vars {
      char *zMalloc;   /* Holding variable for allocated memory */
      int n;           /* Number of registers left to copy */
      int p1;          /* Register to copy from */
      int p2;          /* Register to copy to */
    } ac;
    struct OP_ResultRow_stack_vars {
      Mem *pMem;
      int i;
    } ad;
    struct OP_Concat_stack_vars {
      i64 nByte;
    } ae;
    struct OP_Remainder_stack_vars {
      int flags;      /* Combined MEM_* flags from both inputs */
      i64 iA;         /* Integer value of left operand */
      i64 iB;         /* Integer value of right operand */
      double rA;      /* Real value of left operand */
      double rB;      /* Real value of right operand */
    } af;
    struct OP_Function_stack_vars {
      int i;
      Mem *pArg;
      sqlite3_context ctx;
      sqlite3_value **apVal;
      int n;
    } ag;
    struct OP_ShiftRight_stack_vars {
      i64 a;
      i64 b;
    } ah;
    struct OP_Ge_stack_vars {
      int flags;
      int res;
      char affinity;
    } ai;
    struct OP_Compare_stack_vars {
      int n;
      int i;
      int p1;
      int p2;
      const KeyInfo *pKeyInfo;
      int idx;
      CollSeq *pColl;    /* Collating sequence to use on this term */
      int bRev;          /* True for DESCENDING sort order */
    } aj;
    struct OP_Or_stack_vars {
      int v1;    /* Left operand:  0==FALSE, 1==TRUE, 2==UNKNOWN or NULL */
      int v2;    /* Right operand: 0==FALSE, 1==TRUE, 2==UNKNOWN or NULL */
    } ak;
    struct OP_IfNot_stack_vars {
      int c;
    } al;
    struct OP_Column_stack_vars {
      u32 payloadSize;   /* Number of bytes in the record */
      i64 payloadSize64; /* Number of bytes in the record */
      int p1;            /* P1 value of the opcode */
      int p2;            /* column number to retrieve */
      VdbeCursor *pC;    /* The VDBE cursor */
      char *zRec;        /* Pointer to complete record-data */
      BtCursor *pCrsr;   /* The BTree cursor */
      u32 *aType;        /* aType[i] holds the numeric type of the i-th column */
      u32 *aOffset;      /* aOffset[i] is offset to start of data for i-th column */
      int nField;        /* number of fields in the record */
      int len;           /* The length of the serialized data for the column */
      int i;             /* Loop counter */
      char *zData;       /* Part of the record being decoded */
      Mem *pDest;        /* Where to write the extracted value */
      Mem sMem;          /* For storing the record being decoded */
      u8 *zIdx;          /* Index into header */
      u8 *zEndHdr;       /* Pointer to first byte after the header */
      u32 offset;        /* Offset into the data */
      u64 offset64;      /* 64-bit offset.  64 bits needed to catch overflow */
      int szHdr;         /* Size of the header size field at start of record */
      int avail;         /* Number of bytes of available data */
    } am;
    struct OP_Affinity_stack_vars {
      char *zAffinity;   /* The affinity to be applied */
      Mem *pData0;       /* First register to which to apply affinity */
      Mem *pLast;        /* Last register to which to apply affinity */
      Mem *pRec;         /* Current register */
    } an;
    struct OP_MakeRecord_stack_vars {
      u8 *zNewRecord;        /* A buffer to hold the data for the new record */
      Mem *pRec;             /* The new record */
      u64 nData;             /* Number of bytes of data space */
      int nHdr;              /* Number of bytes of header space */
      i64 nByte;             /* Data space required for this record */
      int nZero;             /* Number of zero bytes at the end of the record */
      int nVarint;           /* Number of bytes in a varint */
      u32 serial_type;       /* Type field */
      Mem *pData0;           /* First field to be combined into the record */
      Mem *pLast;            /* Last field of the record */
      int nField;            /* Number of fields in the record */
      char *zAffinity;       /* The affinity string for the record */
      int file_format;       /* File format to use for encoding */
      int i;                 /* Space used in zNewRecord[] */
      int len;               /* Length of a field */
    } ao;
    struct OP_Count_stack_vars {
      i64 nEntry;
      BtCursor *pCrsr;
    } ap;
    struct OP_Statement_stack_vars {
      Btree *pBt;
    } aq;
    struct OP_Savepoint_stack_vars {
      int p1;                         /* Value of P1 operand */
      char *zName;                    /* Name of savepoint */
      int nName;
      Savepoint *pNew;
      Savepoint *pSavepoint;
      Savepoint *pTmp;
      int iSavepoint;
      int ii;
    } ar;
    struct OP_AutoCommit_stack_vars {
      int desiredAutoCommit;
      int iRollback;
      int turnOnAC;
    } as;
    struct OP_Transaction_stack_vars {
      Btree *pBt;
    } at;
    struct OP_ReadCookie_stack_vars {
      int iMeta;
      int iDb;
      int iCookie;
    } au;
    struct OP_SetCookie_stack_vars {
      Db *pDb;
    } av;
    struct OP_VerifyCookie_stack_vars {
      int iMeta;
      Btree *pBt;
    } aw;
    struct OP_OpenWrite_stack_vars {
      int nField;
      KeyInfo *pKeyInfo;
      int p2;
      int iDb;
      int wrFlag;
      Btree *pX;
      VdbeCursor *pCur;
      Db *pDb;
      int flags;
    } ax;
    struct OP_OpenEphemeral_stack_vars {
      VdbeCursor *pCx;
    } ay;
    struct OP_OpenPseudo_stack_vars {
      VdbeCursor *pCx;
    } az;
    struct OP_SeekGt_stack_vars {
      int res;
      int oc;
      VdbeCursor *pC;
      UnpackedRecord r;
      int nField;
      i64 iKey;      /* The rowid we are to seek to */
    } ba;
    struct OP_Seek_stack_vars {
      VdbeCursor *pC;
    } bb;
    struct OP_Found_stack_vars {
      int alreadyExists;
      VdbeCursor *pC;
      int res;
      UnpackedRecord *pIdxKey;
      char aTempRec[ROUND8(sizeof(UnpackedRecord)) + sizeof(Mem)*3 + 7];
    } bc;
    struct OP_IsUnique_stack_vars {
      u16 ii;
      VdbeCursor *pCx;
      BtCursor *pCrsr;
      u16 nField;
      Mem *aMem;
      UnpackedRecord r;                  /* B-Tree index search key */
      i64 R;                             /* Rowid stored in register P3 */
    } bd;
    struct OP_NotExists_stack_vars {
      VdbeCursor *pC;
      BtCursor *pCrsr;
      int res;
      u64 iKey;
    } be;
    struct OP_NewRowid_stack_vars {
      i64 v;                 /* The new rowid */
      VdbeCursor *pC;        /* Cursor of table to get the new rowid */
      int res;               /* Result of an sqlite3BtreeLast() */
      int cnt;               /* Counter to limit the number of searches */
      Mem *pMem;             /* Register holding largest rowid for AUTOINCREMENT */
    } bf;
    struct OP_Insert_stack_vars {
      Mem *pData;
      Mem *pKey;
      i64 iKey;   /* The integer ROWID or key for the record to be inserted */
      VdbeCursor *pC;
      int nZero;
      int seekResult;
      const char *zDb;
      const char *zTbl;
      int op;
    } bg;
    struct OP_Delete_stack_vars {
      i64 iKey;
      VdbeCursor *pC;
    } bh;
    struct OP_RowData_stack_vars {
      VdbeCursor *pC;
      BtCursor *pCrsr;
      u32 n;
      i64 n64;
    } bi;
    struct OP_Rowid_stack_vars {
      VdbeCursor *pC;
      i64 v;
      sqlite3_vtab *pVtab;
      const sqlite3_module *pModule;
    } bj;
    struct OP_NullRow_stack_vars {
      VdbeCursor *pC;
    } bk;
    struct OP_Last_stack_vars {
      VdbeCursor *pC;
      BtCursor *pCrsr;
      int res;
    } bl;
    struct OP_Rewind_stack_vars {
      VdbeCursor *pC;
      BtCursor *pCrsr;
      int res;
    } bm;
    struct OP_Next_stack_vars {
      VdbeCursor *pC;
      BtCursor *pCrsr;
      int res;
    } bn;
    struct OP_IdxInsert_stack_vars {
      VdbeCursor *pC;
      BtCursor *pCrsr;
      int nKey;
      const char *zKey;
    } bo;
    struct OP_IdxDelete_stack_vars {
      VdbeCursor *pC;
      BtCursor *pCrsr;
      int res;
      UnpackedRecord r;
    } bp;
    struct OP_IdxRowid_stack_vars {
      BtCursor *pCrsr;
      VdbeCursor *pC;
      i64 rowid;
    } bq;
    struct OP_IdxGE_stack_vars {
      VdbeCursor *pC;
      int res;
      UnpackedRecord r;
    } br;
    struct OP_Destroy_stack_vars {
      int iMoved;
      int iCnt;
      Vdbe *pVdbe;
      int iDb;
    } bs;
    struct OP_Clear_stack_vars {
      int nChange;
    } bt;
    struct OP_CreateTable_stack_vars {
      int pgno;
      int flags;
      Db *pDb;
    } bu;
    struct OP_ParseSchema_stack_vars {
      int iDb;
      const char *zMaster;
      char *zSql;
      InitData initData;
    } bv;
    struct OP_IntegrityCk_stack_vars {
      int nRoot;      /* Number of tables to check.  (Number of root pages.) */
      int *aRoot;     /* Array of rootpage numbers for tables to be checked */
      int j;          /* Loop counter */
      int nErr;       /* Number of errors reported */
      char *z;        /* Text of the error report */
      Mem *pnErr;     /* Register keeping track of errors remaining */
    } bw;
    struct OP_RowSetAdd_stack_vars {
      Mem *pIdx;
      Mem *pVal;
    } bx;
    struct OP_RowSetRead_stack_vars {
      Mem *pIdx;
      i64 val;
    } by;
    struct OP_RowSetTest_stack_vars {
      int iSet;
      int exists;
    } bz;
    struct OP_ContextPush_stack_vars {
      int i;
      Context *pContext;
    } ca;
    struct OP_ContextPop_stack_vars {
      Context *pContext;
    } cb;
    struct OP_AggStep_stack_vars {
      int n;
      int i;
      Mem *pMem;
      Mem *pRec;
      sqlite3_context ctx;
      sqlite3_value **apVal;
    } cc;
    struct OP_AggFinal_stack_vars {
      Mem *pMem;
    } cd;
    struct OP_IncrVacuum_stack_vars {
      Btree *pBt;
    } ce;
    struct OP_TableLock_stack_vars {
      int p1;
      u8 isWriteLock;
    } cf;
    struct OP_VBegin_stack_vars {
      sqlite3_vtab *pVtab;
    } cg;
    struct OP_VOpen_stack_vars {
      VdbeCursor *pCur;
      sqlite3_vtab_cursor *pVtabCursor;
      sqlite3_vtab *pVtab;
      sqlite3_module *pModule;
    } ch;
    struct OP_VFilter_stack_vars {
      int nArg;
      int iQuery;
      const sqlite3_module *pModule;
      Mem *pQuery;
      Mem *pArgc;
      sqlite3_vtab_cursor *pVtabCursor;
      sqlite3_vtab *pVtab;
      VdbeCursor *pCur;
      int res;
      int i;
      Mem **apArg;
    } ci;
    struct OP_VColumn_stack_vars {
      sqlite3_vtab *pVtab;
      const sqlite3_module *pModule;
      Mem *pDest;
      sqlite3_context sContext;
    } cj;
    struct OP_VNext_stack_vars {
      sqlite3_vtab *pVtab;
      const sqlite3_module *pModule;
      int res;
      VdbeCursor *pCur;
    } ck;
    struct OP_VRename_stack_vars {
      sqlite3_vtab *pVtab;
      Mem *pName;
    } cl;
    struct OP_VUpdate_stack_vars {
      sqlite3_vtab *pVtab;
      sqlite3_module *pModule;
      int nArg;
      int i;
      sqlite_int64 rowid;
      Mem **apArg;
      Mem *pX;
    } cm;
    struct OP_Pagecount_stack_vars {
      int p1;
      int nPage;
      Pager *pPager;
    } cn;
    struct OP_Trace_stack_vars {
      char *zTrace;
    } co;
  } u;
  /* End automatically generated code
  ********************************************************************/

  assert( p->magic==VDBE_MAGIC_RUN );  /* sqlite3_step() verifies this */
  assert( db->magic==SQLITE_MAGIC_BUSY );
  sqlite3VdbeMutexArrayEnter(p);
  if( p->rc==SQLITE_NOMEM ){
    /* This happens if a malloc() inside a call to sqlite3_column_text() or
    ** sqlite3_column_text16() failed.  */
    goto no_mem;
  }
  assert( p->rc==SQLITE_OK || p->rc==SQLITE_BUSY );
  p->rc = SQLITE_OK;
  assert( p->explain==0 );
  p->pResultSet = 0;
  db->busyHandler.nBusy = 0;
  CHECK_FOR_INTERRUPT;
  sqlite3VdbeIOTraceSql(p);
#ifdef SQLITE_DEBUG
  sqlite3BeginBenignMalloc();
  if( p->pc==0 
   && ((p->db->flags & SQLITE_VdbeListing) || fileExists(db, "vdbe_explain"))
  ){
    int i;
    printf("VDBE Program Listing:\n");
    sqlite3VdbePrintSql(p);
    for(i=0; i<p->nOp; i++){
      sqlite3VdbePrintOp(stdout, i, &p->aOp[i]);
    }
  }
  if( fileExists(db, "vdbe_trace") ){
    p->trace = stdout;
  }
  sqlite3EndBenignMalloc();
#endif
  for(pc=p->pc; rc==SQLITE_OK; pc++){
    assert( pc>=0 && pc<p->nOp );
    if( db->mallocFailed ) goto no_mem;
#ifdef VDBE_PROFILE
    origPc = pc;
    start = sqlite3Hwtime();
#endif
    pOp = &p->aOp[pc];

    /* Only allow tracing if SQLITE_DEBUG is defined.
    */
#ifdef SQLITE_DEBUG
    if( p->trace ){
      if( pc==0 ){
        printf("VDBE Execution Trace:\n");
        sqlite3VdbePrintSql(p);
      }
      sqlite3VdbePrintOp(p->trace, pc, pOp);
    }
    if( p->trace==0 && pc==0 ){
      sqlite3BeginBenignMalloc();
      if( fileExists(db, "vdbe_sqltrace") ){
        sqlite3VdbePrintSql(p);
      }
      sqlite3EndBenignMalloc();
    }
#endif
      

    /* Check to see if we need to simulate an interrupt.  This only happens
    ** if we have a special test build.
    */
#ifdef SQLITE_TEST
    if( sqlite3_interrupt_count>0 ){
      sqlite3_interrupt_count--;
      if( sqlite3_interrupt_count==0 ){
        sqlite3_interrupt(db);
      }
    }
#endif

#ifndef SQLITE_OMIT_PROGRESS_CALLBACK
    /* Call the progress callback if it is configured and the required number
    ** of VDBE ops have been executed (either since this invocation of
    ** sqlite3VdbeExec() or since last time the progress callback was called).
    ** If the progress callback returns non-zero, exit the virtual machine with
    ** a return code SQLITE_ABORT.
    */
    if( db->xProgress ){
      if( db->nProgressOps==nProgressOps ){
        int prc;
        if( sqlite3SafetyOff(db) ) goto abort_due_to_misuse;
        prc =db->xProgress(db->pProgressArg);
        if( sqlite3SafetyOn(db) ) goto abort_due_to_misuse;
        if( prc!=0 ){
          rc = SQLITE_INTERRUPT;
          goto vdbe_error_halt;
        }
        nProgressOps = 0;
      }
      nProgressOps++;
    }
#endif

    /* Do common setup processing for any opcode that is marked
    ** with the "out2-prerelease" tag.  Such opcodes have a single
    ** output which is specified by the P2 parameter.  The P2 register
    ** is initialized to a NULL.
    */
    opProperty = opcodeProperty[pOp->opcode];
    if( (opProperty & OPFLG_OUT2_PRERELEASE)!=0 ){
      assert( pOp->p2>0 );
      assert( pOp->p2<=p->nMem );
      pOut = &p->aMem[pOp->p2];
      sqlite3VdbeMemReleaseExternal(pOut);
      pOut->flags = MEM_Null;
      pOut->n = 0;
    }else
 
    /* Do common setup for opcodes marked with one of the following
    ** combinations of properties.
    **
    **           in1
    **           in1 in2
    **           in1 in2 out3
    **           in1 in3
    **
    ** Variables pIn1, pIn2, and pIn3 are made to point to appropriate
    ** registers for inputs.  Variable pOut points to the output register.
    */
    if( (opProperty & OPFLG_IN1)!=0 ){
      assert( pOp->p1>0 );
      assert( pOp->p1<=p->nMem );
      pIn1 = &p->aMem[pOp->p1];
      REGISTER_TRACE(pOp->p1, pIn1);
      if( (opProperty & OPFLG_IN2)!=0 ){
        assert( pOp->p2>0 );
        assert( pOp->p2<=p->nMem );
        pIn2 = &p->aMem[pOp->p2];
        REGISTER_TRACE(pOp->p2, pIn2);
        if( (opProperty & OPFLG_OUT3)!=0 ){
          assert( pOp->p3>0 );
          assert( pOp->p3<=p->nMem );
          pOut = &p->aMem[pOp->p3];
        }
      }else if( (opProperty & OPFLG_IN3)!=0 ){
        assert( pOp->p3>0 );
        assert( pOp->p3<=p->nMem );
        pIn3 = &p->aMem[pOp->p3];
        REGISTER_TRACE(pOp->p3, pIn3);
      }
    }else if( (opProperty & OPFLG_IN2)!=0 ){
      assert( pOp->p2>0 );
      assert( pOp->p2<=p->nMem );
      pIn2 = &p->aMem[pOp->p2];
      REGISTER_TRACE(pOp->p2, pIn2);
    }else if( (opProperty & OPFLG_IN3)!=0 ){
      assert( pOp->p3>0 );
      assert( pOp->p3<=p->nMem );
      pIn3 = &p->aMem[pOp->p3];
      REGISTER_TRACE(pOp->p3, pIn3);
    }

    switch( pOp->opcode ){

/*****************************************************************************
** What follows is a massive switch statement where each case implements a
** separate instruction in the virtual machine.  If we follow the usual
** indentation conventions, each case should be indented by 6 spaces.  But
** that is a lot of wasted space on the left margin.  So the code within
** the switch statement will break with convention and be flush-left. Another
** big comment (similar to this one) will mark the point in the code where
** we transition back to normal indentation.
**
** The formatting of each case is important.  The makefile for SQLite
** generates two C files "opcodes.h" and "opcodes.c" by scanning this
** file looking for lines that begin with "case OP_".  The opcodes.h files
** will be filled with #defines that give unique integer values to each
** opcode and the opcodes.c file is filled with an array of strings where
** each string is the symbolic name for the corresponding opcode.  If the
** case statement is followed by a comment of the form "/# same as ... #/"
** that comment is used to determine the particular value of the opcode.
**
** Other keywords in the comment that follows each case are used to
** construct the OPFLG_INITIALIZER value that initializes opcodeProperty[].
** Keywords include: in1, in2, in3, out2_prerelease, out2, out3.  See
** the mkopcodeh.awk script for additional information.
**
** Documentation about VDBE opcodes is generated by scanning this file
** for lines of that contain "Opcode:".  That line and all subsequent
** comment lines are used in the generation of the opcode.html documentation
** file.
**
** SUMMARY:
**
**     Formatting is important to scripts that scan this file.
**     Do not deviate from the formatting style currently in use.
**
*****************************************************************************/

/* Opcode:  Goto * P2 * * *
**
** An unconditional jump to address P2.
** The next instruction executed will be 
** the one at index P2 from the beginning of
** the program.
*/
case OP_Goto: {             /* jump */
  CHECK_FOR_INTERRUPT;
  pc = pOp->p2 - 1;
  break;
}

/* Opcode:  Gosub P1 P2 * * *
**
** Write the current address onto register P1
** and then jump to address P2.
*/
case OP_Gosub: {            /* jump */
  assert( pOp->p1>0 );
  assert( pOp->p1<=p->nMem );
  pIn1 = &p->aMem[pOp->p1];
  assert( (pIn1->flags & MEM_Dyn)==0 );
  pIn1->flags = MEM_Int;
  pIn1->u.i = pc;
  REGISTER_TRACE(pOp->p1, pIn1);
  pc = pOp->p2 - 1;
  break;
}

/* Opcode:  Return P1 * * * *
**
** Jump to the next instruction after the address in register P1.
*/
case OP_Return: {           /* in1 */
  assert( pIn1->flags & MEM_Int );
  pc = (int)pIn1->u.i;
  break;
}

/* Opcode:  Yield P1 * * * *
**
** Swap the program counter with the value in register P1.
*/
case OP_Yield: {            /* in1 */
#if 0  /* local variables moved into u.aa */
  int pcDest;
#endif /* local variables moved into u.aa */
  assert( (pIn1->flags & MEM_Dyn)==0 );
  pIn1->flags = MEM_Int;
  u.aa.pcDest = (int)pIn1->u.i;
  pIn1->u.i = pc;
  REGISTER_TRACE(pOp->p1, pIn1);
  pc = u.aa.pcDest;
  break;
}

/* Opcode:  HaltIfNull  P1 P2 P3 P4 *
**
** Check the value in register P3.  If is is NULL then Halt using
** parameter P1, P2, and P4 as if this were a Halt instruction.  If the
** value in register P3 is not NULL, then this routine is a no-op.
*/
case OP_HaltIfNull: {      /* in3 */
  if( (pIn3->flags & MEM_Null)==0 ) break;
  /* Fall through into OP_Halt */
}

/* Opcode:  Halt P1 P2 * P4 *
**
** Exit immediately.  All open cursors, etc are closed
** automatically.
**
** P1 is the result code returned by sqlite3_exec(), sqlite3_reset(),
** or sqlite3_finalize().  For a normal halt, this should be SQLITE_OK (0).
** For errors, it can be some other value.  If P1!=0 then P2 will determine
** whether or not to rollback the current transaction.  Do not rollback
** if P2==OE_Fail. Do the rollback if P2==OE_Rollback.  If P2==OE_Abort,
** then back out all changes that have occurred during this execution of the
** VDBE, but do not rollback the transaction. 
**
** If P4 is not null then it is an error message string.
**
** There is an implied "Halt 0 0 0" instruction inserted at the very end of
** every program.  So a jump past the last instruction of the program
** is the same as executing Halt.
*/
case OP_Halt: {
  p->rc = pOp->p1;
  p->pc = pc;
  p->errorAction = (u8)pOp->p2;
  if( pOp->p4.z ){
    sqlite3SetString(&p->zErrMsg, db, "%s", pOp->p4.z);
  }
  rc = sqlite3VdbeHalt(p);
  assert( rc==SQLITE_BUSY || rc==SQLITE_OK );
  if( rc==SQLITE_BUSY ){
    p->rc = rc = SQLITE_BUSY;
  }else{
    rc = p->rc ? SQLITE_ERROR : SQLITE_DONE;
  }
  goto vdbe_return;
}

/* Opcode: Integer P1 P2 * * *
**
** The 32-bit integer value P1 is written into register P2.
*/
case OP_Integer: {         /* out2-prerelease */
  pOut->flags = MEM_Int;
  pOut->u.i = pOp->p1;
  break;
}

/* Opcode: Int64 * P2 * P4 *
**
** P4 is a pointer to a 64-bit integer value.
** Write that value into register P2.
*/
case OP_Int64: {           /* out2-prerelease */
  assert( pOp->p4.pI64!=0 );
  pOut->flags = MEM_Int;
  pOut->u.i = *pOp->p4.pI64;
  break;
}

/* Opcode: Real * P2 * P4 *
**
** P4 is a pointer to a 64-bit floating point value.
** Write that value into register P2.
*/
case OP_Real: {            /* same as TK_FLOAT, out2-prerelease */
  pOut->flags = MEM_Real;
  assert( !sqlite3IsNaN(*pOp->p4.pReal) );
  pOut->r = *pOp->p4.pReal;
  break;
}

/* Opcode: String8 * P2 * P4 *
**
** P4 points to a nul terminated UTF-8 string. This opcode is transformed 
** into an OP_String before it is executed for the first time.
*/
case OP_String8: {         /* same as TK_STRING, out2-prerelease */
  assert( pOp->p4.z!=0 );
  pOp->opcode = OP_String;
  pOp->p1 = sqlite3Strlen30(pOp->p4.z);

#ifndef SQLITE_OMIT_UTF16
  if( encoding!=SQLITE_UTF8 ){
    rc = sqlite3VdbeMemSetStr(pOut, pOp->p4.z, -1, SQLITE_UTF8, SQLITE_STATIC);
    if( rc==SQLITE_TOOBIG ) goto too_big;
    if( SQLITE_OK!=sqlite3VdbeChangeEncoding(pOut, encoding) ) goto no_mem;
    assert( pOut->zMalloc==pOut->z );
    assert( pOut->flags & MEM_Dyn );
    pOut->zMalloc = 0;
    pOut->flags |= MEM_Static;
    pOut->flags &= ~MEM_Dyn;
    if( pOp->p4type==P4_DYNAMIC ){
      sqlite3DbFree(db, pOp->p4.z);
    }
    pOp->p4type = P4_DYNAMIC;
    pOp->p4.z = pOut->z;
    pOp->p1 = pOut->n;
  }
#endif
  if( pOp->p1>db->aLimit[SQLITE_LIMIT_LENGTH] ){
    goto too_big;
  }
  /* Fall through to the next case, OP_String */
}
  
/* Opcode: String P1 P2 * P4 *
**
** The string value P4 of length P1 (bytes) is stored in register P2.
*/
case OP_String: {          /* out2-prerelease */
  assert( pOp->p4.z!=0 );
  pOut->flags = MEM_Str|MEM_Static|MEM_Term;
  pOut->z = pOp->p4.z;
  pOut->n = pOp->p1;
  pOut->enc = encoding;
  UPDATE_MAX_BLOBSIZE(pOut);
  break;
}

/* Opcode: Null * P2 * * *
**
** Write a NULL into register P2.
*/
case OP_Null: {           /* out2-prerelease */
  break;
}


/* Opcode: Blob P1 P2 * P4
**
** P4 points to a blob of data P1 bytes long.  Store this
** blob in register P2. This instruction is not coded directly
** by the compiler. Instead, the compiler layer specifies
** an OP_HexBlob opcode, with the hex string representation of
** the blob as P4. This opcode is transformed to an OP_Blob
** the first time it is executed.
*/
case OP_Blob: {                /* out2-prerelease */
  assert( pOp->p1 <= SQLITE_MAX_LENGTH );
  sqlite3VdbeMemSetStr(pOut, pOp->p4.z, pOp->p1, 0, 0);
  pOut->enc = encoding;
  UPDATE_MAX_BLOBSIZE(pOut);
  break;
}

/* Opcode: Variable P1 P2 P3 P4 *
**
** Transfer the values of bound parameters P1..P1+P3-1 into registers
** P2..P2+P3-1.
**
** If the parameter is named, then its name appears in P4 and P3==1.
** The P4 value is used by sqlite3_bind_parameter_name().
*/
case OP_Variable: {
#if 0  /* local variables moved into u.ab */
  int p1;          /* Variable to copy from */
  int p2;          /* Register to copy to */
  int n;           /* Number of values left to copy */
  Mem *pVar;       /* Value being transferred */
#endif /* local variables moved into u.ab */

  u.ab.p1 = pOp->p1 - 1;
  u.ab.p2 = pOp->p2;
  u.ab.n = pOp->p3;
  assert( u.ab.p1>=0 && u.ab.p1+u.ab.n<=p->nVar );
  assert( u.ab.p2>=1 && u.ab.p2+u.ab.n-1<=p->nMem );
  assert( pOp->p4.z==0 || pOp->p3==1 );

  while( u.ab.n-- > 0 ){
    u.ab.pVar = &p->aVar[u.ab.p1++];
    if( sqlite3VdbeMemTooBig(u.ab.pVar) ){
      goto too_big;
    }
    pOut = &p->aMem[u.ab.p2++];
    sqlite3VdbeMemReleaseExternal(pOut);
    pOut->flags = MEM_Null;
    sqlite3VdbeMemShallowCopy(pOut, u.ab.pVar, MEM_Static);
    UPDATE_MAX_BLOBSIZE(pOut);
  }
  break;
}

/* Opcode: Move P1 P2 P3 * *
**
** Move the values in register P1..P1+P3-1 over into
** registers P2..P2+P3-1.  Registers P1..P1+P1-1 are
** left holding a NULL.  It is an error for register ranges
** P1..P1+P3-1 and P2..P2+P3-1 to overlap.
*/
case OP_Move: {
#if 0  /* local variables moved into u.ac */
  char *zMalloc;   /* Holding variable for allocated memory */
  int n;           /* Number of registers left to copy */
  int p1;          /* Register to copy from */
  int p2;          /* Register to copy to */
#endif /* local variables moved into u.ac */

  u.ac.n = pOp->p3;
  u.ac.p1 = pOp->p1;
  u.ac.p2 = pOp->p2;
  assert( u.ac.n>0 && u.ac.p1>0 && u.ac.p2>0 );
  assert( u.ac.p1+u.ac.n<=u.ac.p2 || u.ac.p2+u.ac.n<=u.ac.p1 );

  pIn1 = &p->aMem[u.ac.p1];
  pOut = &p->aMem[u.ac.p2];
  while( u.ac.n-- ){
    assert( pOut<=&p->aMem[p->nMem] );
    assert( pIn1<=&p->aMem[p->nMem] );
    u.ac.zMalloc = pOut->zMalloc;
    pOut->zMalloc = 0;
    sqlite3VdbeMemMove(pOut, pIn1);
    pIn1->zMalloc = u.ac.zMalloc;
    REGISTER_TRACE(u.ac.p2++, pOut);
    pIn1++;
    pOut++;
  }
  break;
}

/* Opcode: Copy P1 P2 * * *
**
** Make a copy of register P1 into register P2.
**
** This instruction makes a deep copy of the value.  A duplicate
** is made of any string or blob constant.  See also OP_SCopy.
*/
case OP_Copy: {             /* in1 */
  assert( pOp->p2>0 );
  assert( pOp->p2<=p->nMem );
  pOut = &p->aMem[pOp->p2];
  assert( pOut!=pIn1 );
  sqlite3VdbeMemShallowCopy(pOut, pIn1, MEM_Ephem);
  Deephemeralize(pOut);
  REGISTER_TRACE(pOp->p2, pOut);
  break;
}

/* Opcode: SCopy P1 P2 * * *
**
** Make a shallow copy of register P1 into register P2.
**
** This instruction makes a shallow copy of the value.  If the value
** is a string or blob, then the copy is only a pointer to the
** original and hence if the original changes so will the copy.
** Worse, if the original is deallocated, the copy becomes invalid.
** Thus the program must guarantee that the original will not change
** during the lifetime of the copy.  Use OP_Copy to make a complete
** copy.
*/
case OP_SCopy: {            /* in1 */
  REGISTER_TRACE(pOp->p1, pIn1);
  assert( pOp->p2>0 );
  assert( pOp->p2<=p->nMem );
  pOut = &p->aMem[pOp->p2];
  assert( pOut!=pIn1 );
  sqlite3VdbeMemShallowCopy(pOut, pIn1, MEM_Ephem);
  REGISTER_TRACE(pOp->p2, pOut);
  break;
}

/* Opcode: ResultRow P1 P2 * * *
**
** The registers P1 through P1+P2-1 contain a single row of
** results. This opcode causes the sqlite3_step() call to terminate
** with an SQLITE_ROW return code and it sets up the sqlite3_stmt
** structure to provide access to the top P1 values as the result
** row.
*/
case OP_ResultRow: {
#if 0  /* local variables moved into u.ad */
  Mem *pMem;
  int i;
#endif /* local variables moved into u.ad */
  assert( p->nResColumn==pOp->p2 );
  assert( pOp->p1>0 );
  assert( pOp->p1+pOp->p2<=p->nMem+1 );

  /* If the SQLITE_CountRows flag is set in sqlite3.flags mask, then
  ** DML statements invoke this opcode to return the number of rows
  ** modified to the user. This is the only way that a VM that
  ** opens a statement transaction may invoke this opcode.
  **
  ** In case this is such a statement, close any statement transaction
  ** opened by this VM before returning control to the user. This is to
  ** ensure that statement-transactions are always nested, not overlapping.
  ** If the open statement-transaction is not closed here, then the user
  ** may step another VM that opens its own statement transaction. This
  ** may lead to overlapping statement transactions.
  **
  ** The statement transaction is never a top-level transaction.  Hence
  ** the RELEASE call below can never fail.
  */
  assert( p->iStatement==0 || db->flags&SQLITE_CountRows );
  rc = sqlite3VdbeCloseStatement(p, SAVEPOINT_RELEASE);
  if( NEVER(rc!=SQLITE_OK) ){
    break;
  }

  /* Invalidate all ephemeral cursor row caches */
  p->cacheCtr = (p->cacheCtr + 2)|1;

  /* Make sure the results of the current row are \000 terminated
  ** and have an assigned type.  The results are de-ephemeralized as
  ** as side effect.
  */
  u.ad.pMem = p->pResultSet = &p->aMem[pOp->p1];
  for(u.ad.i=0; u.ad.i<pOp->p2; u.ad.i++){
    sqlite3VdbeMemNulTerminate(&u.ad.pMem[u.ad.i]);
    storeTypeInfo(&u.ad.pMem[u.ad.i], encoding);
    REGISTER_TRACE(pOp->p1+u.ad.i, &u.ad.pMem[u.ad.i]);
  }
  if( db->mallocFailed ) goto no_mem;

  /* Return SQLITE_ROW
  */
  p->pc = pc + 1;
  rc = SQLITE_ROW;
  goto vdbe_return;
}

/* Opcode: Concat P1 P2 P3 * *
**
** Add the text in register P1 onto the end of the text in
** register P2 and store the result in register P3.
** If either the P1 or P2 text are NULL then store NULL in P3.
**
**   P3 = P2 || P1
**
** It is illegal for P1 and P3 to be the same register. Sometimes,
** if P3 is the same register as P2, the implementation is able
** to avoid a memcpy().
*/
case OP_Concat: {           /* same as TK_CONCAT, in1, in2, out3 */
#if 0  /* local variables moved into u.ae */
  i64 nByte;
#endif /* local variables moved into u.ae */

  assert( pIn1!=pOut );
  if( (pIn1->flags | pIn2->flags) & MEM_Null ){
    sqlite3VdbeMemSetNull(pOut);
    break;
  }
  if( ExpandBlob(pIn1) || ExpandBlob(pIn2) ) goto no_mem;
  Stringify(pIn1, encoding);
  Stringify(pIn2, encoding);
  u.ae.nByte = pIn1->n + pIn2->n;
  if( u.ae.nByte>db->aLimit[SQLITE_LIMIT_LENGTH] ){
    goto too_big;
  }
  MemSetTypeFlag(pOut, MEM_Str);
  if( sqlite3VdbeMemGrow(pOut, (int)u.ae.nByte+2, pOut==pIn2) ){
    goto no_mem;
  }
  if( pOut!=pIn2 ){
    memcpy(pOut->z, pIn2->z, pIn2->n);
  }
  memcpy(&pOut->z[pIn2->n], pIn1->z, pIn1->n);
  pOut->z[u.ae.nByte] = 0;
  pOut->z[u.ae.nByte+1] = 0;
  pOut->flags |= MEM_Term;
  pOut->n = (int)u.ae.nByte;
  pOut->enc = encoding;
  UPDATE_MAX_BLOBSIZE(pOut);
  break;
}

/* Opcode: Add P1 P2 P3 * *
**
** Add the value in register P1 to the value in register P2
** and store the result in register P3.
** If either input is NULL, the result is NULL.
*/
/* Opcode: Multiply P1 P2 P3 * *
**
**
** Multiply the value in register P1 by the value in register P2
** and store the result in register P3.
** If either input is NULL, the result is NULL.
*/
/* Opcode: Subtract P1 P2 P3 * *
**
** Subtract the value in register P1 from the value in register P2
** and store the result in register P3.
** If either input is NULL, the result is NULL.
*/
/* Opcode: Divide P1 P2 P3 * *
**
** Divide the value in register P1 by the value in register P2
** and store the result in register P3.  If the value in register P2
** is zero, then the result is NULL.
** If either input is NULL, the result is NULL.
*/
/* Opcode: Remainder P1 P2 P3 * *
**
** Compute the remainder after integer division of the value in
** register P1 by the value in register P2 and store the result in P3. 
** If the value in register P2 is zero the result is NULL.
** If either operand is NULL, the result is NULL.
*/
case OP_Add:                   /* same as TK_PLUS, in1, in2, out3 */
case OP_Subtract:              /* same as TK_MINUS, in1, in2, out3 */
case OP_Multiply:              /* same as TK_STAR, in1, in2, out3 */
case OP_Divide:                /* same as TK_SLASH, in1, in2, out3 */
case OP_Remainder: {           /* same as TK_REM, in1, in2, out3 */
#if 0  /* local variables moved into u.af */
  int flags;      /* Combined MEM_* flags from both inputs */
  i64 iA;         /* Integer value of left operand */
  i64 iB;         /* Integer value of right operand */
  double rA;      /* Real value of left operand */
  double rB;      /* Real value of right operand */
#endif /* local variables moved into u.af */

  applyNumericAffinity(pIn1);
  applyNumericAffinity(pIn2);
  u.af.flags = pIn1->flags | pIn2->flags;
  if( (u.af.flags & MEM_Null)!=0 ) goto arithmetic_result_is_null;
  if( (pIn1->flags & pIn2->flags & MEM_Int)==MEM_Int ){
    u.af.iA = pIn1->u.i;
    u.af.iB = pIn2->u.i;
    switch( pOp->opcode ){
      case OP_Add:         u.af.iB += u.af.iA;       break;
      case OP_Subtract:    u.af.iB -= u.af.iA;       break;
      case OP_Multiply:    u.af.iB *= u.af.iA;       break;
      case OP_Divide: {
        if( u.af.iA==0 ) goto arithmetic_result_is_null;
        /* Dividing the largest possible negative 64-bit integer (1<<63) by
        ** -1 returns an integer too large to store in a 64-bit data-type. On
        ** some architectures, the value overflows to (1<<63). On others,
        ** a SIGFPE is issued. The following statement normalizes this
        ** behavior so that all architectures behave as if integer
        ** overflow occurred.
        */
        if( u.af.iA==-1 && u.af.iB==SMALLEST_INT64 ) u.af.iA = 1;
        u.af.iB /= u.af.iA;
        break;
      }
      default: {
        if( u.af.iA==0 ) goto arithmetic_result_is_null;
        if( u.af.iA==-1 ) u.af.iA = 1;
        u.af.iB %= u.af.iA;
        break;
      }
    }
    pOut->u.i = u.af.iB;
    MemSetTypeFlag(pOut, MEM_Int);
  }else{
    u.af.rA = sqlite3VdbeRealValue(pIn1);
    u.af.rB = sqlite3VdbeRealValue(pIn2);
    switch( pOp->opcode ){
      case OP_Add:         u.af.rB += u.af.rA;       break;
      case OP_Subtract:    u.af.rB -= u.af.rA;       break;
      case OP_Multiply:    u.af.rB *= u.af.rA;       break;
      case OP_Divide: {
        /* (double)0 In case of SQLITE_OMIT_FLOATING_POINT... */
        if( u.af.rA==(double)0 ) goto arithmetic_result_is_null;
        u.af.rB /= u.af.rA;
        break;
      }
      default: {
        u.af.iA = (i64)u.af.rA;
        u.af.iB = (i64)u.af.rB;
        if( u.af.iA==0 ) goto arithmetic_result_is_null;
        if( u.af.iA==-1 ) u.af.iA = 1;
        u.af.rB = (double)(u.af.iB % u.af.iA);
        break;
      }
    }
    if( sqlite3IsNaN(u.af.rB) ){
      goto arithmetic_result_is_null;
    }
    pOut->r = u.af.rB;
    MemSetTypeFlag(pOut, MEM_Real);
    if( (u.af.flags & MEM_Real)==0 ){
      sqlite3VdbeIntegerAffinity(pOut);
    }
  }
  break;

arithmetic_result_is_null:
  sqlite3VdbeMemSetNull(pOut);
  break;
}

/* Opcode: CollSeq * * P4
**
** P4 is a pointer to a CollSeq struct. If the next call to a user function
** or aggregate calls sqlite3GetFuncCollSeq(), this collation sequence will
** be returned. This is used by the built-in min(), max() and nullif()
** functions.
**
** The interface used by the implementation of the aforementioned functions
** to retrieve the collation sequence set by this opcode is not available
** publicly, only to user functions defined in func.c.
*/
case OP_CollSeq: {
  assert( pOp->p4type==P4_COLLSEQ );
  break;
}

/* Opcode: Function P1 P2 P3 P4 P5
**
** Invoke a user function (P4 is a pointer to a Function structure that
** defines the function) with P5 arguments taken from register P2 and
** successors.  The result of the function is stored in register P3.
** Register P3 must not be one of the function inputs.
**
** P1 is a 32-bit bitmask indicating whether or not each argument to the 
** function was determined to be constant at compile time. If the first
** argument was constant then bit 0 of P1 is set. This is used to determine
** whether meta data associated with a user function argument using the
** sqlite3_set_auxdata() API may be safely retained until the next
** invocation of this opcode.
**
** See also: AggStep and AggFinal
*/
case OP_Function: {
#if 0  /* local variables moved into u.ag */
  int i;
  Mem *pArg;
  sqlite3_context ctx;
  sqlite3_value **apVal;
  int n;
#endif /* local variables moved into u.ag */

  u.ag.n = pOp->p5;
  u.ag.apVal = p->apArg;
  assert( u.ag.apVal || u.ag.n==0 );

  assert( u.ag.n==0 || (pOp->p2>0 && pOp->p2+u.ag.n<=p->nMem+1) );
  assert( pOp->p3<pOp->p2 || pOp->p3>=pOp->p2+u.ag.n );
  u.ag.pArg = &p->aMem[pOp->p2];
  for(u.ag.i=0; u.ag.i<u.ag.n; u.ag.i++, u.ag.pArg++){
    u.ag.apVal[u.ag.i] = u.ag.pArg;
    storeTypeInfo(u.ag.pArg, encoding);
    REGISTER_TRACE(pOp->p2, u.ag.pArg);
  }

  assert( pOp->p4type==P4_FUNCDEF || pOp->p4type==P4_VDBEFUNC );
  if( pOp->p4type==P4_FUNCDEF ){
    u.ag.ctx.pFunc = pOp->p4.pFunc;
    u.ag.ctx.pVdbeFunc = 0;
  }else{
    u.ag.ctx.pVdbeFunc = (VdbeFunc*)pOp->p4.pVdbeFunc;
    u.ag.ctx.pFunc = u.ag.ctx.pVdbeFunc->pFunc;
  }

  assert( pOp->p3>0 && pOp->p3<=p->nMem );
  pOut = &p->aMem[pOp->p3];
  u.ag.ctx.s.flags = MEM_Null;
  u.ag.ctx.s.db = db;
  u.ag.ctx.s.xDel = 0;
  u.ag.ctx.s.zMalloc = 0;

  /* The output cell may already have a buffer allocated. Move
  ** the pointer to u.ag.ctx.s so in case the user-function can use
  ** the already allocated buffer instead of allocating a new one.
  */
  sqlite3VdbeMemMove(&u.ag.ctx.s, pOut);
  MemSetTypeFlag(&u.ag.ctx.s, MEM_Null);

  u.ag.ctx.isError = 0;
  if( u.ag.ctx.pFunc->flags & SQLITE_FUNC_NEEDCOLL ){
    assert( pOp>p->aOp );
    assert( pOp[-1].p4type==P4_COLLSEQ );
    assert( pOp[-1].opcode==OP_CollSeq );
    u.ag.ctx.pColl = pOp[-1].p4.pColl;
  }
  if( sqlite3SafetyOff(db) ) goto abort_due_to_misuse;
  (*u.ag.ctx.pFunc->xFunc)(&u.ag.ctx, u.ag.n, u.ag.apVal);
  if( sqlite3SafetyOn(db) ){
    sqlite3VdbeMemRelease(&u.ag.ctx.s);
    goto abort_due_to_misuse;
  }
  if( db->mallocFailed ){
    /* Even though a malloc() has failed, the implementation of the
    ** user function may have called an sqlite3_result_XXX() function
    ** to return a value. The following call releases any resources
    ** associated with such a value.
    **
    ** Note: Maybe MemRelease() should be called if sqlite3SafetyOn()
    ** fails also (the if(...) statement above). But if people are
    ** misusing sqlite, they have bigger problems than a leaked value.
    */
    sqlite3VdbeMemRelease(&u.ag.ctx.s);
    goto no_mem;
  }

  /* If any auxiliary data functions have been called by this user function,
  ** immediately call the destructor for any non-static values.
  */
  if( u.ag.ctx.pVdbeFunc ){
    sqlite3VdbeDeleteAuxData(u.ag.ctx.pVdbeFunc, pOp->p1);
    pOp->p4.pVdbeFunc = u.ag.ctx.pVdbeFunc;
    pOp->p4type = P4_VDBEFUNC;
  }

  /* If the function returned an error, throw an exception */
  if( u.ag.ctx.isError ){
    sqlite3SetString(&p->zErrMsg, db, "%s", sqlite3_value_text(&u.ag.ctx.s));
    rc = u.ag.ctx.isError;
  }

  /* Copy the result of the function into register P3 */
  sqlite3VdbeChangeEncoding(&u.ag.ctx.s, encoding);
  sqlite3VdbeMemMove(pOut, &u.ag.ctx.s);
  if( sqlite3VdbeMemTooBig(pOut) ){
    goto too_big;
  }
  REGISTER_TRACE(pOp->p3, pOut);
  UPDATE_MAX_BLOBSIZE(pOut);
  break;
}

/* Opcode: BitAnd P1 P2 P3 * *
**
** Take the bit-wise AND of the values in register P1 and P2 and
** store the result in register P3.
** If either input is NULL, the result is NULL.
*/
/* Opcode: BitOr P1 P2 P3 * *
**
** Take the bit-wise OR of the values in register P1 and P2 and
** store the result in register P3.
** If either input is NULL, the result is NULL.
*/
/* Opcode: ShiftLeft P1 P2 P3 * *
**
** Shift the integer value in register P2 to the left by the
** number of bits specified by the integer in regiser P1.
** Store the result in register P3.
** If either input is NULL, the result is NULL.
*/
/* Opcode: ShiftRight P1 P2 P3 * *
**
** Shift the integer value in register P2 to the right by the
** number of bits specified by the integer in register P1.
** Store the result in register P3.
** If either input is NULL, the result is NULL.
*/
case OP_BitAnd:                 /* same as TK_BITAND, in1, in2, out3 */
case OP_BitOr:                  /* same as TK_BITOR, in1, in2, out3 */
case OP_ShiftLeft:              /* same as TK_LSHIFT, in1, in2, out3 */
case OP_ShiftRight: {           /* same as TK_RSHIFT, in1, in2, out3 */
#if 0  /* local variables moved into u.ah */
  i64 a;
  i64 b;
#endif /* local variables moved into u.ah */

  if( (pIn1->flags | pIn2->flags) & MEM_Null ){
    sqlite3VdbeMemSetNull(pOut);
    break;
  }
  u.ah.a = sqlite3VdbeIntValue(pIn2);
  u.ah.b = sqlite3VdbeIntValue(pIn1);
  switch( pOp->opcode ){
    case OP_BitAnd:      u.ah.a &= u.ah.b;     break;
    case OP_BitOr:       u.ah.a |= u.ah.b;     break;
    case OP_ShiftLeft:   u.ah.a <<= u.ah.b;    break;
    default:  assert( pOp->opcode==OP_ShiftRight );
                         u.ah.a >>= u.ah.b;    break;
  }
  pOut->u.i = u.ah.a;
  MemSetTypeFlag(pOut, MEM_Int);
  break;
}

/* Opcode: AddImm  P1 P2 * * *
** 
** Add the constant P2 to the value in register P1.
** The result is always an integer.
**
** To force any register to be an integer, just add 0.
*/
case OP_AddImm: {            /* in1 */
  sqlite3VdbeMemIntegerify(pIn1);
  pIn1->u.i += pOp->p2;
  break;
}

/* Opcode: MustBeInt P1 P2 * * *
** 
** Force the value in register P1 to be an integer.  If the value
** in P1 is not an integer and cannot be converted into an integer
** without data loss, then jump immediately to P2, or if P2==0
** raise an SQLITE_MISMATCH exception.
*/
case OP_MustBeInt: {            /* jump, in1 */
  applyAffinity(pIn1, SQLITE_AFF_NUMERIC, encoding);
  if( (pIn1->flags & MEM_Int)==0 ){
    if( pOp->p2==0 ){
      rc = SQLITE_MISMATCH;
      goto abort_due_to_error;
    }else{
      pc = pOp->p2 - 1;
    }
  }else{
    MemSetTypeFlag(pIn1, MEM_Int);
  }
  break;
}

/* Opcode: RealAffinity P1 * * * *
**
** If register P1 holds an integer convert it to a real value.
**
** This opcode is used when extracting information from a column that
** has REAL affinity.  Such column values may still be stored as
** integers, for space efficiency, but after extraction we want them
** to have only a real value.
*/
case OP_RealAffinity: {                  /* in1 */
  if( pIn1->flags & MEM_Int ){
    sqlite3VdbeMemRealify(pIn1);
  }
  break;
}

#ifndef SQLITE_OMIT_CAST
/* Opcode: ToText P1 * * * *
**
** Force the value in register P1 to be text.
** If the value is numeric, convert it to a string using the
** equivalent of printf().  Blob values are unchanged and
** are afterwards simply interpreted as text.
**
** A NULL value is not changed by this routine.  It remains NULL.
*/
case OP_ToText: {                  /* same as TK_TO_TEXT, in1 */
  if( pIn1->flags & MEM_Null ) break;
  assert( MEM_Str==(MEM_Blob>>3) );
  pIn1->flags |= (pIn1->flags&MEM_Blob)>>3;
  applyAffinity(pIn1, SQLITE_AFF_TEXT, encoding);
  rc = ExpandBlob(pIn1);
  assert( pIn1->flags & MEM_Str || db->mallocFailed );
  pIn1->flags &= ~(MEM_Int|MEM_Real|MEM_Blob|MEM_Zero);
  UPDATE_MAX_BLOBSIZE(pIn1);
  break;
}

/* Opcode: ToBlob P1 * * * *
**
** Force the value in register P1 to be a BLOB.
** If the value is numeric, convert it to a string first.
** Strings are simply reinterpreted as blobs with no change
** to the underlying data.
**
** A NULL value is not changed by this routine.  It remains NULL.
*/
case OP_ToBlob: {                  /* same as TK_TO_BLOB, in1 */
  if( pIn1->flags & MEM_Null ) break;
  if( (pIn1->flags & MEM_Blob)==0 ){
    applyAffinity(pIn1, SQLITE_AFF_TEXT, encoding);
    assert( pIn1->flags & MEM_Str || db->mallocFailed );
    MemSetTypeFlag(pIn1, MEM_Blob);
  }else{
    pIn1->flags &= ~(MEM_TypeMask&~MEM_Blob);
  }
  UPDATE_MAX_BLOBSIZE(pIn1);
  break;
}

/* Opcode: ToNumeric P1 * * * *
**
** Force the value in register P1 to be numeric (either an
** integer or a floating-point number.)
** If the value is text or blob, try to convert it to an using the
** equivalent of atoi() or atof() and store 0 if no such conversion 
** is possible.
**
** A NULL value is not changed by this routine.  It remains NULL.
*/
case OP_ToNumeric: {                  /* same as TK_TO_NUMERIC, in1 */
  if( (pIn1->flags & (MEM_Null|MEM_Int|MEM_Real))==0 ){
    sqlite3VdbeMemNumerify(pIn1);
  }
  break;
}
#endif /* SQLITE_OMIT_CAST */

/* Opcode: ToInt P1 * * * *
**
** Force the value in register P1 be an integer.  If
** The value is currently a real number, drop its fractional part.
** If the value is text or blob, try to convert it to an integer using the
** equivalent of atoi() and store 0 if no such conversion is possible.
**
** A NULL value is not changed by this routine.  It remains NULL.
*/
case OP_ToInt: {                  /* same as TK_TO_INT, in1 */
  if( (pIn1->flags & MEM_Null)==0 ){
    sqlite3VdbeMemIntegerify(pIn1);
  }
  break;
}

#ifndef SQLITE_OMIT_CAST
/* Opcode: ToReal P1 * * * *
**
** Force the value in register P1 to be a floating point number.
** If The value is currently an integer, convert it.
** If the value is text or blob, try to convert it to an integer using the
** equivalent of atoi() and store 0.0 if no such conversion is possible.
**
** A NULL value is not changed by this routine.  It remains NULL.
*/
case OP_ToReal: {                  /* same as TK_TO_REAL, in1 */
  if( (pIn1->flags & MEM_Null)==0 ){
    sqlite3VdbeMemRealify(pIn1);
  }
  break;
}
#endif /* SQLITE_OMIT_CAST */

/* Opcode: Lt P1 P2 P3 P4 P5
**
** Compare the values in register P1 and P3.  If reg(P3)<reg(P1) then
** jump to address P2.  
**
** If the SQLITE_JUMPIFNULL bit of P5 is set and either reg(P1) or
** reg(P3) is NULL then take the jump.  If the SQLITE_JUMPIFNULL 
** bit is clear then fall thru if either operand is NULL.
**
** The SQLITE_AFF_MASK portion of P5 must be an affinity character -
** SQLITE_AFF_TEXT, SQLITE_AFF_INTEGER, and so forth. An attempt is made 
** to coerce both inputs according to this affinity before the
** comparison is made. If the SQLITE_AFF_MASK is 0x00, then numeric
** affinity is used. Note that the affinity conversions are stored
** back into the input registers P1 and P3.  So this opcode can cause
** persistent changes to registers P1 and P3.
**
** Once any conversions have taken place, and neither value is NULL, 
** the values are compared. If both values are blobs then memcmp() is
** used to determine the results of the comparison.  If both values
** are text, then the appropriate collating function specified in
** P4 is  used to do the comparison.  If P4 is not specified then
** memcmp() is used to compare text string.  If both values are
** numeric, then a numeric comparison is used. If the two values
** are of different types, then numbers are considered less than
** strings and strings are considered less than blobs.
**
** If the SQLITE_STOREP2 bit of P5 is set, then do not jump.  Instead,
** store a boolean result (either 0, or 1, or NULL) in register P2.
*/
/* Opcode: Ne P1 P2 P3 P4 P5
**
** This works just like the Lt opcode except that the jump is taken if
** the operands in registers P1 and P3 are not equal.  See the Lt opcode for
** additional information.
*/
/* Opcode: Eq P1 P2 P3 P4 P5
**
** This works just like the Lt opcode except that the jump is taken if
** the operands in registers P1 and P3 are equal.
** See the Lt opcode for additional information.
*/
/* Opcode: Le P1 P2 P3 P4 P5
**
** This works just like the Lt opcode except that the jump is taken if
** the content of register P3 is less than or equal to the content of
** register P1.  See the Lt opcode for additional information.
*/
/* Opcode: Gt P1 P2 P3 P4 P5
**
** This works just like the Lt opcode except that the jump is taken if
** the content of register P3 is greater than the content of
** register P1.  See the Lt opcode for additional information.
*/
/* Opcode: Ge P1 P2 P3 P4 P5
**
** This works just like the Lt opcode except that the jump is taken if
** the content of register P3 is greater than or equal to the content of
** register P1.  See the Lt opcode for additional information.
*/
case OP_Eq:               /* same as TK_EQ, jump, in1, in3 */
case OP_Ne:               /* same as TK_NE, jump, in1, in3 */
case OP_Lt:               /* same as TK_LT, jump, in1, in3 */
case OP_Le:               /* same as TK_LE, jump, in1, in3 */
case OP_Gt:               /* same as TK_GT, jump, in1, in3 */
case OP_Ge: {             /* same as TK_GE, jump, in1, in3 */
#if 0  /* local variables moved into u.ai */
  int flags;
  int res;
  char affinity;
#endif /* local variables moved into u.ai */

  u.ai.flags = pIn1->flags|pIn3->flags;

  if( u.ai.flags&MEM_Null ){
    /* If either operand is NULL then the result is always NULL.
    ** The jump is taken if the SQLITE_JUMPIFNULL bit is set.
    */
    if( pOp->p5 & SQLITE_STOREP2 ){
      pOut = &p->aMem[pOp->p2];
      MemSetTypeFlag(pOut, MEM_Null);
      REGISTER_TRACE(pOp->p2, pOut);
    }else if( pOp->p5 & SQLITE_JUMPIFNULL ){
      pc = pOp->p2-1;
    }
    break;
  }

  u.ai.affinity = pOp->p5 & SQLITE_AFF_MASK;
  if( u.ai.affinity ){
    applyAffinity(pIn1, u.ai.affinity, encoding);
    applyAffinity(pIn3, u.ai.affinity, encoding);
    if( db->mallocFailed ) goto no_mem;
  }

  assert( pOp->p4type==P4_COLLSEQ || pOp->p4.pColl==0 );
  ExpandBlob(pIn1);
  ExpandBlob(pIn3);
  u.ai.res = sqlite3MemCompare(pIn3, pIn1, pOp->p4.pColl);
  switch( pOp->opcode ){
    case OP_Eq:    u.ai.res = u.ai.res==0;     break;
    case OP_Ne:    u.ai.res = u.ai.res!=0;     break;
    case OP_Lt:    u.ai.res = u.ai.res<0;      break;
    case OP_Le:    u.ai.res = u.ai.res<=0;     break;
    case OP_Gt:    u.ai.res = u.ai.res>0;      break;
    default:       u.ai.res = u.ai.res>=0;     break;
  }

  if( pOp->p5 & SQLITE_STOREP2 ){
    pOut = &p->aMem[pOp->p2];
    MemSetTypeFlag(pOut, MEM_Int);
    pOut->u.i = u.ai.res;
    REGISTER_TRACE(pOp->p2, pOut);
  }else if( u.ai.res ){
    pc = pOp->p2-1;
  }
  break;
}

/* Opcode: Permutation * * * P4 *
**
** Set the permutation used by the OP_Compare operator to be the array
** of integers in P4.
**
** The permutation is only valid until the next OP_Permutation, OP_Compare,
** OP_Halt, or OP_ResultRow.  Typically the OP_Permutation should occur
** immediately prior to the OP_Compare.
*/
case OP_Permutation: {
  assert( pOp->p4type==P4_INTARRAY );
  assert( pOp->p4.ai );
  aPermute = pOp->p4.ai;
  break;
}

/* Opcode: Compare P1 P2 P3 P4 *
**
** Compare to vectors of registers in reg(P1)..reg(P1+P3-1) (all this
** one "A") and in reg(P2)..reg(P2+P3-1) ("B").  Save the result of
** the comparison for use by the next OP_Jump instruct.
**
** P4 is a KeyInfo structure that defines collating sequences and sort
** orders for the comparison.  The permutation applies to registers
** only.  The KeyInfo elements are used sequentially.
**
** The comparison is a sort comparison, so NULLs compare equal,
** NULLs are less than numbers, numbers are less than strings,
** and strings are less than blobs.
*/
case OP_Compare: {
#if 0  /* local variables moved into u.aj */
  int n;
  int i;
  int p1;
  int p2;
  const KeyInfo *pKeyInfo;
  int idx;
  CollSeq *pColl;    /* Collating sequence to use on this term */
  int bRev;          /* True for DESCENDING sort order */
#endif /* local variables moved into u.aj */

  u.aj.n = pOp->p3;
  u.aj.pKeyInfo = pOp->p4.pKeyInfo;
  assert( u.aj.n>0 );
  assert( u.aj.pKeyInfo!=0 );
  u.aj.p1 = pOp->p1;
  assert( u.aj.p1>0 && u.aj.p1+u.aj.n<=p->nMem+1 );
  u.aj.p2 = pOp->p2;
  assert( u.aj.p2>0 && u.aj.p2+u.aj.n<=p->nMem+1 );
  for(u.aj.i=0; u.aj.i<u.aj.n; u.aj.i++){
    u.aj.idx = aPermute ? aPermute[u.aj.i] : u.aj.i;
    REGISTER_TRACE(u.aj.p1+u.aj.idx, &p->aMem[u.aj.p1+u.aj.idx]);
    REGISTER_TRACE(u.aj.p2+u.aj.idx, &p->aMem[u.aj.p2+u.aj.idx]);
    assert( u.aj.i<u.aj.pKeyInfo->nField );
    u.aj.pColl = u.aj.pKeyInfo->aColl[u.aj.i];
    u.aj.bRev = u.aj.pKeyInfo->aSortOrder[u.aj.i];
    iCompare = sqlite3MemCompare(&p->aMem[u.aj.p1+u.aj.idx], &p->aMem[u.aj.p2+u.aj.idx], u.aj.pColl);
    if( iCompare ){
      if( u.aj.bRev ) iCompare = -iCompare;
      break;
    }
  }
  aPermute = 0;
  break;
}

/* Opcode: Jump P1 P2 P3 * *
**
** Jump to the instruction at address P1, P2, or P3 depending on whether
** in the most recent OP_Compare instruction the P1 vector was less than
** equal to, or greater than the P2 vector, respectively.
*/
case OP_Jump: {             /* jump */
  if( iCompare<0 ){
    pc = pOp->p1 - 1;
  }else if( iCompare==0 ){
    pc = pOp->p2 - 1;
  }else{
    pc = pOp->p3 - 1;
  }
  break;
}

/* Opcode: And P1 P2 P3 * *
**
** Take the logical AND of the values in registers P1 and P2 and
** write the result into register P3.
**
** If either P1 or P2 is 0 (false) then the result is 0 even if
** the other input is NULL.  A NULL and true or two NULLs give
** a NULL output.
*/
/* Opcode: Or P1 P2 P3 * *
**
** Take the logical OR of the values in register P1 and P2 and
** store the answer in register P3.
**
** If either P1 or P2 is nonzero (true) then the result is 1 (true)
** even if the other input is NULL.  A NULL and false or two NULLs
** give a NULL output.
*/
case OP_And:              /* same as TK_AND, in1, in2, out3 */
case OP_Or: {             /* same as TK_OR, in1, in2, out3 */
#if 0  /* local variables moved into u.ak */
  int v1;    /* Left operand:  0==FALSE, 1==TRUE, 2==UNKNOWN or NULL */
  int v2;    /* Right operand: 0==FALSE, 1==TRUE, 2==UNKNOWN or NULL */
#endif /* local variables moved into u.ak */

  if( pIn1->flags & MEM_Null ){
    u.ak.v1 = 2;
  }else{
    u.ak.v1 = sqlite3VdbeIntValue(pIn1)!=0;
  }
  if( pIn2->flags & MEM_Null ){
    u.ak.v2 = 2;
  }else{
    u.ak.v2 = sqlite3VdbeIntValue(pIn2)!=0;
  }
  if( pOp->opcode==OP_And ){
    static const unsigned char and_logic[] = { 0, 0, 0, 0, 1, 2, 0, 2, 2 };
    u.ak.v1 = and_logic[u.ak.v1*3+u.ak.v2];
  }else{
    static const unsigned char or_logic[] = { 0, 1, 2, 1, 1, 1, 2, 1, 2 };
    u.ak.v1 = or_logic[u.ak.v1*3+u.ak.v2];
  }
  if( u.ak.v1==2 ){
    MemSetTypeFlag(pOut, MEM_Null);
  }else{
    pOut->u.i = u.ak.v1;
    MemSetTypeFlag(pOut, MEM_Int);
  }
  break;
}

/* Opcode: Not P1 P2 * * *
**
** Interpret the value in register P1 as a boolean value.  Store the
** boolean complement in register P2.  If the value in register P1 is 
** NULL, then a NULL is stored in P2.
*/
case OP_Not: {                /* same as TK_NOT, in1 */
  pOut = &p->aMem[pOp->p2];
  if( pIn1->flags & MEM_Null ){
    sqlite3VdbeMemSetNull(pOut);
  }else{
    sqlite3VdbeMemSetInt64(pOut, !sqlite3VdbeIntValue(pIn1));
  }
  break;
}

/* Opcode: BitNot P1 P2 * * *
**
** Interpret the content of register P1 as an integer.  Store the
** ones-complement of the P1 value into register P2.  If P1 holds
** a NULL then store a NULL in P2.
*/
case OP_BitNot: {             /* same as TK_BITNOT, in1 */
  pOut = &p->aMem[pOp->p2];
  if( pIn1->flags & MEM_Null ){
    sqlite3VdbeMemSetNull(pOut);
  }else{
    sqlite3VdbeMemSetInt64(pOut, ~sqlite3VdbeIntValue(pIn1));
  }
  break;
}

/* Opcode: If P1 P2 P3 * *
**
** Jump to P2 if the value in register P1 is true.  The value is
** is considered true if it is numeric and non-zero.  If the value
** in P1 is NULL then take the jump if P3 is true.
*/
/* Opcode: IfNot P1 P2 P3 * *
**
** Jump to P2 if the value in register P1 is False.  The value is
** is considered true if it has a numeric value of zero.  If the value
** in P1 is NULL then take the jump if P3 is true.
*/
case OP_If:                 /* jump, in1 */
case OP_IfNot: {            /* jump, in1 */
#if 0  /* local variables moved into u.al */
  int c;
#endif /* local variables moved into u.al */
  if( pIn1->flags & MEM_Null ){
    u.al.c = pOp->p3;
  }else{
#ifdef SQLITE_OMIT_FLOATING_POINT
    u.al.c = sqlite3VdbeIntValue(pIn1)!=0;
#else
    u.al.c = sqlite3VdbeRealValue(pIn1)!=0.0;
#endif
    if( pOp->opcode==OP_IfNot ) u.al.c = !u.al.c;
  }
  if( u.al.c ){
    pc = pOp->p2-1;
  }
  break;
}

/* Opcode: IsNull P1 P2 * * *
**
** Jump to P2 if the value in register P1 is NULL.
*/
case OP_IsNull: {            /* same as TK_ISNULL, jump, in1 */
  if( (pIn1->flags & MEM_Null)!=0 ){
    pc = pOp->p2 - 1;
  }
  break;
}

/* Opcode: NotNull P1 P2 * * *
**
** Jump to P2 if the value in register P1 is not NULL.  
*/
case OP_NotNull: {            /* same as TK_NOTNULL, jump, in1 */
  if( (pIn1->flags & MEM_Null)==0 ){
    pc = pOp->p2 - 1;
  }
  break;
}

/* Opcode: SetNumColumns * P2 * * *
**
** This opcode sets the number of columns for the cursor opened by the
** following instruction to P2.
**
** An OP_SetNumColumns is only useful if it occurs immediately before 
** one of the following opcodes:
**
**     OpenRead
**     OpenWrite
**     OpenPseudo
**
** If the OP_Column opcode is to be executed on a cursor, then
** this opcode must be present immediately before the opcode that
** opens the cursor.
*/
#if 0
case OP_SetNumColumns: {
  break;
}
#endif

/* Opcode: Column P1 P2 P3 P4 *
**
** Interpret the data that cursor P1 points to as a structure built using
** the MakeRecord instruction.  (See the MakeRecord opcode for additional
** information about the format of the data.)  Extract the P2-th column
** from this record.  If there are less that (P2+1) 
** values in the record, extract a NULL.
**
** The value extracted is stored in register P3.
**
** If the column contains fewer than P2 fields, then extract a NULL.  Or,
** if the P4 argument is a P4_MEM use the value of the P4 argument as
** the result.
*/
case OP_Column: {
#if 0  /* local variables moved into u.am */
  u32 payloadSize;   /* Number of bytes in the record */
  i64 payloadSize64; /* Number of bytes in the record */
  int p1;            /* P1 value of the opcode */
  int p2;            /* column number to retrieve */
  VdbeCursor *pC;    /* The VDBE cursor */
  char *zRec;        /* Pointer to complete record-data */
  BtCursor *pCrsr;   /* The BTree cursor */
  u32 *aType;        /* aType[i] holds the numeric type of the i-th column */
  u32 *aOffset;      /* aOffset[i] is offset to start of data for i-th column */
  int nField;        /* number of fields in the record */
  int len;           /* The length of the serialized data for the column */
  int i;             /* Loop counter */
  char *zData;       /* Part of the record being decoded */
  Mem *pDest;        /* Where to write the extracted value */
  Mem sMem;          /* For storing the record being decoded */
  u8 *zIdx;          /* Index into header */
  u8 *zEndHdr;       /* Pointer to first byte after the header */
  u32 offset;        /* Offset into the data */
  u64 offset64;      /* 64-bit offset.  64 bits needed to catch overflow */
  int szHdr;         /* Size of the header size field at start of record */
  int avail;         /* Number of bytes of available data */
#endif /* local variables moved into u.am */


  u.am.p1 = pOp->p1;
  u.am.p2 = pOp->p2;
  u.am.pC = 0;
  memset(&u.am.sMem, 0, sizeof(u.am.sMem));
  assert( u.am.p1<p->nCursor );
  assert( pOp->p3>0 && pOp->p3<=p->nMem );
  u.am.pDest = &p->aMem[pOp->p3];
  MemSetTypeFlag(u.am.pDest, MEM_Null);
  u.am.zRec = 0;

  /* This block sets the variable u.am.payloadSize to be the total number of
  ** bytes in the record.
  **
  ** u.am.zRec is set to be the complete text of the record if it is available.
  ** The complete record text is always available for pseudo-tables
  ** If the record is stored in a cursor, the complete record text
  ** might be available in the  u.am.pC->aRow cache.  Or it might not be.
  ** If the data is unavailable,  u.am.zRec is set to NULL.
  **
  ** We also compute the number of columns in the record.  For cursors,
  ** the number of columns is stored in the VdbeCursor.nField element.
  */
  u.am.pC = p->apCsr[u.am.p1];
  assert( u.am.pC!=0 );
#ifndef SQLITE_OMIT_VIRTUALTABLE
  assert( u.am.pC->pVtabCursor==0 );
#endif
  u.am.pCrsr = u.am.pC->pCursor;
  if( u.am.pCrsr!=0 ){
    /* The record is stored in a B-Tree */
    rc = sqlite3VdbeCursorMoveto(u.am.pC);
    if( rc ) goto abort_due_to_error;
    if( u.am.pC->nullRow ){
      u.am.payloadSize = 0;
    }else if( u.am.pC->cacheStatus==p->cacheCtr ){
      u.am.payloadSize = u.am.pC->payloadSize;
      u.am.zRec = (char*)u.am.pC->aRow;
    }else if( u.am.pC->isIndex ){
      sqlite3BtreeKeySize(u.am.pCrsr, &u.am.payloadSize64);
      /* sqlite3BtreeParseCellPtr() uses getVarint32() to extract the
      ** payload size, so it is impossible for u.am.payloadSize64 to be
      ** larger than 32 bits. */
      assert( (u.am.payloadSize64 & SQLITE_MAX_U32)==(u64)u.am.payloadSize64 );
      u.am.payloadSize = (u32)u.am.payloadSize64;
    }else{
      sqlite3BtreeDataSize(u.am.pCrsr, &u.am.payloadSize);
    }
  }else if( u.am.pC->pseudoTable ){
    /* The record is the sole entry of a pseudo-table */
    u.am.payloadSize = u.am.pC->nData;
    u.am.zRec = u.am.pC->pData;
    u.am.pC->cacheStatus = CACHE_STALE;
    assert( u.am.payloadSize==0 || u.am.zRec!=0 );
  }else{
    /* Consider the row to be NULL */
    u.am.payloadSize = 0;
  }

  /* If u.am.payloadSize is 0, then just store a NULL */
  if( u.am.payloadSize==0 ){
    assert( u.am.pDest->flags&MEM_Null );
    goto op_column_out;
  }
  assert( db->aLimit[SQLITE_LIMIT_LENGTH]>=0 );
  if( u.am.payloadSize > (u32)db->aLimit[SQLITE_LIMIT_LENGTH] ){
    goto too_big;
  }

  u.am.nField = u.am.pC->nField;
  assert( u.am.p2<u.am.nField );

  /* Read and parse the table header.  Store the results of the parse
  ** into the record header cache fields of the cursor.
  */
  u.am.aType = u.am.pC->aType;
  if( u.am.pC->cacheStatus==p->cacheCtr ){
    u.am.aOffset = u.am.pC->aOffset;
  }else{
    assert(u.am.aType);
    u.am.avail = 0;
    u.am.pC->aOffset = u.am.aOffset = &u.am.aType[u.am.nField];
    u.am.pC->payloadSize = u.am.payloadSize;
    u.am.pC->cacheStatus = p->cacheCtr;

    /* Figure out how many bytes are in the header */
    if( u.am.zRec ){
      u.am.zData = u.am.zRec;
    }else{
      if( u.am.pC->isIndex ){
        u.am.zData = (char*)sqlite3BtreeKeyFetch(u.am.pCrsr, &u.am.avail);
      }else{
        u.am.zData = (char*)sqlite3BtreeDataFetch(u.am.pCrsr, &u.am.avail);
      }
      /* If KeyFetch()/DataFetch() managed to get the entire payload,
      ** save the payload in the u.am.pC->aRow cache.  That will save us from
      ** having to make additional calls to fetch the content portion of
      ** the record.
      */
      assert( u.am.avail>=0 );
      if( u.am.payloadSize <= (u32)u.am.avail ){
        u.am.zRec = u.am.zData;
        u.am.pC->aRow = (u8*)u.am.zData;
      }else{
        u.am.pC->aRow = 0;
      }
    }
    /* The following assert is true in all cases accept when
    ** the database file has been corrupted externally.
    **    assert( u.am.zRec!=0 || u.am.avail>=u.am.payloadSize || u.am.avail>=9 ); */
    u.am.szHdr = getVarint32((u8*)u.am.zData, u.am.offset);

    /* Make sure a corrupt database has not given us an oversize header.
    ** Do this now to avoid an oversize memory allocation.
    **
    ** Type entries can be between 1 and 5 bytes each.  But 4 and 5 byte
    ** types use so much data space that there can only be 4096 and 32 of
    ** them, respectively.  So the maximum header length results from a
    ** 3-byte type for each of the maximum of 32768 columns plus three
    ** extra bytes for the header length itself.  32768*3 + 3 = 98307.
    */
    if( u.am.offset > 98307 ){
      rc = SQLITE_CORRUPT_BKPT;
      goto op_column_out;
    }

    /* Compute in u.am.len the number of bytes of data we need to read in order
    ** to get u.am.nField type values.  u.am.offset is an upper bound on this.  But
    ** u.am.nField might be significantly less than the true number of columns
    ** in the table, and in that case, 5*u.am.nField+3 might be smaller than u.am.offset.
    ** We want to minimize u.am.len in order to limit the size of the memory
    ** allocation, especially if a corrupt database file has caused u.am.offset
    ** to be oversized. Offset is limited to 98307 above.  But 98307 might
    ** still exceed Robson memory allocation limits on some configurations.
    ** On systems that cannot tolerate large memory allocations, u.am.nField*5+3
    ** will likely be much smaller since u.am.nField will likely be less than
    ** 20 or so.  This insures that Robson memory allocation limits are
    ** not exceeded even for corrupt database files.
    */
    u.am.len = u.am.nField*5 + 3;
    if( u.am.len > (int)u.am.offset ) u.am.len = (int)u.am.offset;

    /* The KeyFetch() or DataFetch() above are fast and will get the entire
    ** record header in most cases.  But they will fail to get the complete
    ** record header if the record header does not fit on a single page
    ** in the B-Tree.  When that happens, use sqlite3VdbeMemFromBtree() to
    ** acquire the complete header text.
    */
    if( !u.am.zRec && u.am.avail<u.am.len ){
      u.am.sMem.flags = 0;
      u.am.sMem.db = 0;
      rc = sqlite3VdbeMemFromBtree(u.am.pCrsr, 0, u.am.len, u.am.pC->isIndex, &u.am.sMem);
      if( rc!=SQLITE_OK ){
        goto op_column_out;
      }
      u.am.zData = u.am.sMem.z;
    }
    u.am.zEndHdr = (u8 *)&u.am.zData[u.am.len];
    u.am.zIdx = (u8 *)&u.am.zData[u.am.szHdr];

    /* Scan the header and use it to fill in the u.am.aType[] and u.am.aOffset[]
    ** arrays.  u.am.aType[u.am.i] will contain the type integer for the u.am.i-th
    ** column and u.am.aOffset[u.am.i] will contain the u.am.offset from the beginning
    ** of the record to the start of the data for the u.am.i-th column
    */
    u.am.offset64 = u.am.offset;
    for(u.am.i=0; u.am.i<u.am.nField; u.am.i++){
      if( u.am.zIdx<u.am.zEndHdr ){
        u.am.aOffset[u.am.i] = (u32)u.am.offset64;
        u.am.zIdx += getVarint32(u.am.zIdx, u.am.aType[u.am.i]);
        u.am.offset64 += sqlite3VdbeSerialTypeLen(u.am.aType[u.am.i]);
      }else{
        /* If u.am.i is less that u.am.nField, then there are less fields in this
        ** record than SetNumColumns indicated there are columns in the
        ** table. Set the u.am.offset for any extra columns not present in
        ** the record to 0. This tells code below to store a NULL
        ** instead of deserializing a value from the record.
        */
        u.am.aOffset[u.am.i] = 0;
      }
    }
    sqlite3VdbeMemRelease(&u.am.sMem);
    u.am.sMem.flags = MEM_Null;

    /* If we have read more header data than was contained in the header,
    ** or if the end of the last field appears to be past the end of the
    ** record, or if the end of the last field appears to be before the end
    ** of the record (when all fields present), then we must be dealing
    ** with a corrupt database.
    */
    if( (u.am.zIdx > u.am.zEndHdr)|| (u.am.offset64 > u.am.payloadSize)
     || (u.am.zIdx==u.am.zEndHdr && u.am.offset64!=(u64)u.am.payloadSize) ){
      rc = SQLITE_CORRUPT_BKPT;
      goto op_column_out;
    }
  }

  /* Get the column information. If u.am.aOffset[u.am.p2] is non-zero, then
  ** deserialize the value from the record. If u.am.aOffset[u.am.p2] is zero,
  ** then there are not enough fields in the record to satisfy the
  ** request.  In this case, set the value NULL or to P4 if P4 is
  ** a pointer to a Mem object.
  */
  if( u.am.aOffset[u.am.p2] ){
    assert( rc==SQLITE_OK );
    if( u.am.zRec ){
      sqlite3VdbeMemReleaseExternal(u.am.pDest);
      sqlite3VdbeSerialGet((u8 *)&u.am.zRec[u.am.aOffset[u.am.p2]], u.am.aType[u.am.p2], u.am.pDest);
    }else{
      u.am.len = sqlite3VdbeSerialTypeLen(u.am.aType[u.am.p2]);
      sqlite3VdbeMemMove(&u.am.sMem, u.am.pDest);
      rc = sqlite3VdbeMemFromBtree(u.am.pCrsr, u.am.aOffset[u.am.p2], u.am.len, u.am.pC->isIndex, &u.am.sMem);
      if( rc!=SQLITE_OK ){
        goto op_column_out;
      }
      u.am.zData = u.am.sMem.z;
      sqlite3VdbeSerialGet((u8*)u.am.zData, u.am.aType[u.am.p2], u.am.pDest);
    }
    u.am.pDest->enc = encoding;
  }else{
    if( pOp->p4type==P4_MEM ){
      sqlite3VdbeMemShallowCopy(u.am.pDest, pOp->p4.pMem, MEM_Static);
    }else{
      assert( u.am.pDest->flags&MEM_Null );
    }
  }

  /* If we dynamically allocated space to hold the data (in the
  ** sqlite3VdbeMemFromBtree() call above) then transfer control of that
  ** dynamically allocated space over to the u.am.pDest structure.
  ** This prevents a memory copy.
  */
  if( u.am.sMem.zMalloc ){
    assert( u.am.sMem.z==u.am.sMem.zMalloc );
    assert( !(u.am.pDest->flags & MEM_Dyn) );
    assert( !(u.am.pDest->flags & (MEM_Blob|MEM_Str)) || u.am.pDest->z==u.am.sMem.z );
    u.am.pDest->flags &= ~(MEM_Ephem|MEM_Static);
    u.am.pDest->flags |= MEM_Term;
    u.am.pDest->z = u.am.sMem.z;
    u.am.pDest->zMalloc = u.am.sMem.zMalloc;
  }

  rc = sqlite3VdbeMemMakeWriteable(u.am.pDest);

op_column_out:
  UPDATE_MAX_BLOBSIZE(u.am.pDest);
  REGISTER_TRACE(pOp->p3, u.am.pDest);
  break;
}

/* Opcode: Affinity P1 P2 * P4 *
**
** Apply affinities to a range of P2 registers starting with P1.
**
** P4 is a string that is P2 characters long. The nth character of the
** string indicates the column affinity that should be used for the nth
** memory cell in the range.
*/
case OP_Affinity: {
#if 0  /* local variables moved into u.an */
  char *zAffinity;   /* The affinity to be applied */
  Mem *pData0;       /* First register to which to apply affinity */
  Mem *pLast;        /* Last register to which to apply affinity */
  Mem *pRec;         /* Current register */
#endif /* local variables moved into u.an */

  u.an.zAffinity = pOp->p4.z;
  u.an.pData0 = &p->aMem[pOp->p1];
  u.an.pLast = &u.an.pData0[pOp->p2-1];
  for(u.an.pRec=u.an.pData0; u.an.pRec<=u.an.pLast; u.an.pRec++){
    ExpandBlob(u.an.pRec);
    applyAffinity(u.an.pRec, u.an.zAffinity[u.an.pRec-u.an.pData0], encoding);
  }
  break;
}

/* Opcode: MakeRecord P1 P2 P3 P4 *
**
** Convert P2 registers beginning with P1 into a single entry
** suitable for use as a data record in a database table or as a key
** in an index.  The details of the format are irrelevant as long as
** the OP_Column opcode can decode the record later.
** Refer to source code comments for the details of the record
** format.
**
** P4 may be a string that is P2 characters long.  The nth character of the
** string indicates the column affinity that should be used for the nth
** field of the index key.
**
** The mapping from character to affinity is given by the SQLITE_AFF_
** macros defined in sqliteInt.h.
**
** If P4 is NULL then all index fields have the affinity NONE.
*/
case OP_MakeRecord: {
#if 0  /* local variables moved into u.ao */
  u8 *zNewRecord;        /* A buffer to hold the data for the new record */
  Mem *pRec;             /* The new record */
  u64 nData;             /* Number of bytes of data space */
  int nHdr;              /* Number of bytes of header space */
  i64 nByte;             /* Data space required for this record */
  int nZero;             /* Number of zero bytes at the end of the record */
  int nVarint;           /* Number of bytes in a varint */
  u32 serial_type;       /* Type field */
  Mem *pData0;           /* First field to be combined into the record */
  Mem *pLast;            /* Last field of the record */
  int nField;            /* Number of fields in the record */
  char *zAffinity;       /* The affinity string for the record */
  int file_format;       /* File format to use for encoding */
  int i;                 /* Space used in zNewRecord[] */
  int len;               /* Length of a field */
#endif /* local variables moved into u.ao */

  /* Assuming the record contains N fields, the record format looks
  ** like this:
  **
  ** ------------------------------------------------------------------------
  ** | hdr-size | type 0 | type 1 | ... | type N-1 | data0 | ... | data N-1 |
  ** ------------------------------------------------------------------------
  **
  ** Data(0) is taken from register P1.  Data(1) comes from register P1+1
  ** and so froth.
  **
  ** Each type field is a varint representing the serial type of the
  ** corresponding data element (see sqlite3VdbeSerialType()). The
  ** hdr-size field is also a varint which is the offset from the beginning
  ** of the record to data0.
  */
  u.ao.nData = 0;         /* Number of bytes of data space */
  u.ao.nHdr = 0;          /* Number of bytes of header space */
  u.ao.nByte = 0;         /* Data space required for this record */
  u.ao.nZero = 0;         /* Number of zero bytes at the end of the record */
  u.ao.nField = pOp->p1;
  u.ao.zAffinity = pOp->p4.z;
  assert( u.ao.nField>0 && pOp->p2>0 && pOp->p2+u.ao.nField<=p->nMem+1 );
  u.ao.pData0 = &p->aMem[u.ao.nField];
  u.ao.nField = pOp->p2;
  u.ao.pLast = &u.ao.pData0[u.ao.nField-1];
  u.ao.file_format = p->minWriteFileFormat;

  /* Loop through the elements that will make up the record to figure
  ** out how much space is required for the new record.
  */
  for(u.ao.pRec=u.ao.pData0; u.ao.pRec<=u.ao.pLast; u.ao.pRec++){
    if( u.ao.zAffinity ){
      applyAffinity(u.ao.pRec, u.ao.zAffinity[u.ao.pRec-u.ao.pData0], encoding);
    }
    if( u.ao.pRec->flags&MEM_Zero && u.ao.pRec->n>0 ){
      sqlite3VdbeMemExpandBlob(u.ao.pRec);
    }
    u.ao.serial_type = sqlite3VdbeSerialType(u.ao.pRec, u.ao.file_format);
    u.ao.len = sqlite3VdbeSerialTypeLen(u.ao.serial_type);
    u.ao.nData += u.ao.len;
    u.ao.nHdr += sqlite3VarintLen(u.ao.serial_type);
    if( u.ao.pRec->flags & MEM_Zero ){
      /* Only pure zero-filled BLOBs can be input to this Opcode.
      ** We do not allow blobs with a prefix and a zero-filled tail. */
      u.ao.nZero += u.ao.pRec->u.nZero;
    }else if( u.ao.len ){
      u.ao.nZero = 0;
    }
  }

  /* Add the initial header varint and total the size */
  u.ao.nHdr += u.ao.nVarint = sqlite3VarintLen(u.ao.nHdr);
  if( u.ao.nVarint<sqlite3VarintLen(u.ao.nHdr) ){
    u.ao.nHdr++;
  }
  u.ao.nByte = u.ao.nHdr+u.ao.nData-u.ao.nZero;
  if( u.ao.nByte>db->aLimit[SQLITE_LIMIT_LENGTH] ){
    goto too_big;
  }

  /* Make sure the output register has a buffer large enough to store
  ** the new record. The output register (pOp->p3) is not allowed to
  ** be one of the input registers (because the following call to
  ** sqlite3VdbeMemGrow() could clobber the value before it is used).
  */
  assert( pOp->p3<pOp->p1 || pOp->p3>=pOp->p1+pOp->p2 );
  pOut = &p->aMem[pOp->p3];
  if( sqlite3VdbeMemGrow(pOut, (int)u.ao.nByte, 0) ){
    goto no_mem;
  }
  u.ao.zNewRecord = (u8 *)pOut->z;

  /* Write the record */
  u.ao.i = putVarint32(u.ao.zNewRecord, u.ao.nHdr);
  for(u.ao.pRec=u.ao.pData0; u.ao.pRec<=u.ao.pLast; u.ao.pRec++){
    u.ao.serial_type = sqlite3VdbeSerialType(u.ao.pRec, u.ao.file_format);
    u.ao.i += putVarint32(&u.ao.zNewRecord[u.ao.i], u.ao.serial_type);      /* serial type */
  }
  for(u.ao.pRec=u.ao.pData0; u.ao.pRec<=u.ao.pLast; u.ao.pRec++){  /* serial data */
    u.ao.i += sqlite3VdbeSerialPut(&u.ao.zNewRecord[u.ao.i], (int)(u.ao.nByte-u.ao.i), u.ao.pRec,u.ao.file_format);
  }
  assert( u.ao.i==u.ao.nByte );

  assert( pOp->p3>0 && pOp->p3<=p->nMem );
  pOut->n = (int)u.ao.nByte;
  pOut->flags = MEM_Blob | MEM_Dyn;
  pOut->xDel = 0;
  if( u.ao.nZero ){
    pOut->u.nZero = u.ao.nZero;
    pOut->flags |= MEM_Zero;
  }
  pOut->enc = SQLITE_UTF8;  /* In case the blob is ever converted to text */
  REGISTER_TRACE(pOp->p3, pOut);
  UPDATE_MAX_BLOBSIZE(pOut);
  break;
}

/* Opcode: Count P1 P2 * * *
**
** Store the number of entries (an integer value) in the table or index 
** opened by cursor P1 in register P2
*/
#ifndef SQLITE_OMIT_BTREECOUNT
case OP_Count: {         /* out2-prerelease */
#if 0  /* local variables moved into u.ap */
  i64 nEntry;
  BtCursor *pCrsr;
#endif /* local variables moved into u.ap */

  u.ap.pCrsr = p->apCsr[pOp->p1]->pCursor;
  if( u.ap.pCrsr ){
    rc = sqlite3BtreeCount(u.ap.pCrsr, &u.ap.nEntry);
  }else{
    u.ap.nEntry = 0;
  }
  pOut->flags = MEM_Int;
  pOut->u.i = u.ap.nEntry;
  break;
}
#endif

/* Opcode: Statement P1 * * * *
**
** Begin an individual statement transaction which is part of a larger
** transaction.  This is needed so that the statement
** can be rolled back after an error without having to roll back the
** entire transaction.  The statement transaction will automatically
** commit when the VDBE halts.
**
** If the database connection is currently in autocommit mode (that 
** is to say, if it is in between BEGIN and COMMIT)
** and if there are no other active statements on the same database
** connection, then this operation is a no-op.  No statement transaction
** is needed since any error can use the normal ROLLBACK process to
** undo changes.
**
** If a statement transaction is started, then a statement journal file
** will be allocated and initialized.
**
** The statement is begun on the database file with index P1.  The main
** database file has an index of 0 and the file used for temporary tables
** has an index of 1.
*/
case OP_Statement: {
#if 0  /* local variables moved into u.aq */
  Btree *pBt;
#endif /* local variables moved into u.aq */
  if( db->autoCommit==0 || db->activeVdbeCnt>1 ){
    assert( pOp->p1>=0 && pOp->p1<db->nDb );
    assert( db->aDb[pOp->p1].pBt!=0 );
    u.aq.pBt = db->aDb[pOp->p1].pBt;
    assert( sqlite3BtreeIsInTrans(u.aq.pBt) );
    assert( (p->btreeMask & (1<<pOp->p1))!=0 );
    if( p->iStatement==0 ){
      assert( db->nStatement>=0 && db->nSavepoint>=0 );
      db->nStatement++;
      p->iStatement = db->nSavepoint + db->nStatement;
    }
    rc = sqlite3BtreeBeginStmt(u.aq.pBt, p->iStatement);
  }
  break;
}

/* Opcode: Savepoint P1 * * P4 *
**
** Open, release or rollback the savepoint named by parameter P4, depending
** on the value of P1. To open a new savepoint, P1==0. To release (commit) an
** existing savepoint, P1==1, or to rollback an existing savepoint P1==2.
*/
case OP_Savepoint: {
#if 0  /* local variables moved into u.ar */
  int p1;                         /* Value of P1 operand */
  char *zName;                    /* Name of savepoint */
  int nName;
  Savepoint *pNew;
  Savepoint *pSavepoint;
  Savepoint *pTmp;
  int iSavepoint;
  int ii;
#endif /* local variables moved into u.ar */

  u.ar.p1 = pOp->p1;
  u.ar.zName = pOp->p4.z;

  /* Assert that the u.ar.p1 parameter is valid. Also that if there is no open
  ** transaction, then there cannot be any savepoints.
  */
  assert( db->pSavepoint==0 || db->autoCommit==0 );
  assert( u.ar.p1==SAVEPOINT_BEGIN||u.ar.p1==SAVEPOINT_RELEASE||u.ar.p1==SAVEPOINT_ROLLBACK );
  assert( db->pSavepoint || db->isTransactionSavepoint==0 );
  assert( checkSavepointCount(db) );

  if( u.ar.p1==SAVEPOINT_BEGIN ){
    if( db->writeVdbeCnt>0 ){
      /* A new savepoint cannot be created if there are active write
      ** statements (i.e. open read/write incremental blob handles).
      */
      sqlite3SetString(&p->zErrMsg, db, "cannot open savepoint - "
        "SQL statements in progress");
      rc = SQLITE_BUSY;
    }else{
      u.ar.nName = sqlite3Strlen30(u.ar.zName);

      /* Create a new savepoint structure. */
      u.ar.pNew = sqlite3DbMallocRaw(db, sizeof(Savepoint)+u.ar.nName+1);
      if( u.ar.pNew ){
        u.ar.pNew->zName = (char *)&u.ar.pNew[1];
        memcpy(u.ar.pNew->zName, u.ar.zName, u.ar.nName+1);

        /* If there is no open transaction, then mark this as a special
        ** "transaction savepoint". */
        if( db->autoCommit ){
          db->autoCommit = 0;
          db->isTransactionSavepoint = 1;
        }else{
          db->nSavepoint++;
        }

        /* Link the new savepoint into the database handle's list. */
        u.ar.pNew->pNext = db->pSavepoint;
        db->pSavepoint = u.ar.pNew;
      }
    }
  }else{
    u.ar.iSavepoint = 0;

    /* Find the named savepoint. If there is no such savepoint, then an
    ** an error is returned to the user.  */
    for(
      u.ar.pSavepoint = db->pSavepoint;
      u.ar.pSavepoint && sqlite3StrICmp(u.ar.pSavepoint->zName, u.ar.zName);
      u.ar.pSavepoint = u.ar.pSavepoint->pNext
    ){
      u.ar.iSavepoint++;
    }
    if( !u.ar.pSavepoint ){
      sqlite3SetString(&p->zErrMsg, db, "no such savepoint: %s", u.ar.zName);
      rc = SQLITE_ERROR;
    }else if(
        db->writeVdbeCnt>0 || (u.ar.p1==SAVEPOINT_ROLLBACK && db->activeVdbeCnt>1)
    ){
      /* It is not possible to release (commit) a savepoint if there are
      ** active write statements. It is not possible to rollback a savepoint
      ** if there are any active statements at all.
      */
      sqlite3SetString(&p->zErrMsg, db,
        "cannot %s savepoint - SQL statements in progress",
        (u.ar.p1==SAVEPOINT_ROLLBACK ? "rollback": "release")
      );
      rc = SQLITE_BUSY;
    }else{

      /* Determine whether or not this is a transaction savepoint. If so,
      ** and this is a RELEASE command, then the current transaction
      ** is committed.
      */
      int isTransaction = u.ar.pSavepoint->pNext==0 && db->isTransactionSavepoint;
      if( isTransaction && u.ar.p1==SAVEPOINT_RELEASE ){
        db->autoCommit = 1;
        if( sqlite3VdbeHalt(p)==SQLITE_BUSY ){
          p->pc = pc;
          db->autoCommit = 0;
          p->rc = rc = SQLITE_BUSY;
          goto vdbe_return;
        }
        db->isTransactionSavepoint = 0;
        rc = p->rc;
      }else{
        u.ar.iSavepoint = db->nSavepoint - u.ar.iSavepoint - 1;
        for(u.ar.ii=0; u.ar.ii<db->nDb; u.ar.ii++){
          rc = sqlite3BtreeSavepoint(db->aDb[u.ar.ii].pBt, u.ar.p1, u.ar.iSavepoint);
          if( rc!=SQLITE_OK ){
            goto abort_due_to_error;
          }
        }
        if( u.ar.p1==SAVEPOINT_ROLLBACK && (db->flags&SQLITE_InternChanges)!=0 ){
          sqlite3ExpirePreparedStatements(db);
          sqlite3ResetInternalSchema(db, 0);
        }
      }

      /* Regardless of whether this is a RELEASE or ROLLBACK, destroy all
      ** savepoints nested inside of the savepoint being operated on. */
      while( db->pSavepoint!=u.ar.pSavepoint ){
        u.ar.pTmp = db->pSavepoint;
        db->pSavepoint = u.ar.pTmp->pNext;
        sqlite3DbFree(db, u.ar.pTmp);
        db->nSavepoint--;
      }

      /* If it is a RELEASE, then destroy the savepoint being operated on too */
      if( u.ar.p1==SAVEPOINT_RELEASE ){
        assert( u.ar.pSavepoint==db->pSavepoint );
        db->pSavepoint = u.ar.pSavepoint->pNext;
        sqlite3DbFree(db, u.ar.pSavepoint);
        if( !isTransaction ){
          db->nSavepoint--;
        }
      }
    }
  }

  break;
}

/* Opcode: AutoCommit P1 P2 * * *
**
** Set the database auto-commit flag to P1 (1 or 0). If P2 is true, roll
** back any currently active btree transactions. If there are any active
** VMs (apart from this one), then a ROLLBACK fails.  A COMMIT fails if
** there are active writing VMs or active VMs that use shared cache.
**
** This instruction causes the VM to halt.
*/
case OP_AutoCommit: {
#if 0  /* local variables moved into u.as */
  int desiredAutoCommit;
  int iRollback;
  int turnOnAC;
#endif /* local variables moved into u.as */

  u.as.desiredAutoCommit = pOp->p1;
  u.as.iRollback = pOp->p2;
  u.as.turnOnAC = u.as.desiredAutoCommit && !db->autoCommit;
  assert( u.as.desiredAutoCommit==1 || u.as.desiredAutoCommit==0 );
  assert( u.as.desiredAutoCommit==1 || u.as.iRollback==0 );
  assert( db->activeVdbeCnt>0 );  /* At least this one VM is active */

  if( u.as.turnOnAC && u.as.iRollback && db->activeVdbeCnt>1 ){
    /* If this instruction implements a ROLLBACK and other VMs are
    ** still running, and a transaction is active, return an error indicating
    ** that the other VMs must complete first.
    */
    sqlite3SetString(&p->zErrMsg, db, "cannot rollback transaction - "
        "SQL statements in progress");
    rc = SQLITE_BUSY;
  }else if( u.as.turnOnAC && !u.as.iRollback && db->writeVdbeCnt>0 ){
    /* If this instruction implements a COMMIT and other VMs are writing
    ** return an error indicating that the other VMs must complete first.
    */
    sqlite3SetString(&p->zErrMsg, db, "cannot commit transaction - "
        "SQL statements in progress");
    rc = SQLITE_BUSY;
  }else if( u.as.desiredAutoCommit!=db->autoCommit ){
    if( u.as.iRollback ){
      assert( u.as.desiredAutoCommit==1 );
      sqlite3RollbackAll(db);
      db->autoCommit = 1;
    }else{
      db->autoCommit = (u8)u.as.desiredAutoCommit;
      if( sqlite3VdbeHalt(p)==SQLITE_BUSY ){
        p->pc = pc;
        db->autoCommit = (u8)(1-u.as.desiredAutoCommit);
        p->rc = rc = SQLITE_BUSY;
        goto vdbe_return;
      }
    }
    assert( db->nStatement==0 );
    sqlite3CloseSavepoints(db);
    if( p->rc==SQLITE_OK ){
      rc = SQLITE_DONE;
    }else{
      rc = SQLITE_ERROR;
    }
    goto vdbe_return;
  }else{
    sqlite3SetString(&p->zErrMsg, db,
        (!u.as.desiredAutoCommit)?"cannot start a transaction within a transaction":(
        (u.as.iRollback)?"cannot rollback - no transaction is active":
                   "cannot commit - no transaction is active"));

    rc = SQLITE_ERROR;
  }
  break;
}

/* Opcode: Transaction P1 P2 * * *
**
** Begin a transaction.  The transaction ends when a Commit or Rollback
** opcode is encountered.  Depending on the ON CONFLICT setting, the
** transaction might also be rolled back if an error is encountered.
**
** P1 is the index of the database file on which the transaction is
** started.  Index 0 is the main database file and index 1 is the
** file used for temporary tables.  Indices of 2 or more are used for
** attached databases.
**
** If P2 is non-zero, then a write-transaction is started.  A RESERVED lock is
** obtained on the database file when a write-transaction is started.  No
** other process can start another write transaction while this transaction is
** underway.  Starting a write transaction also creates a rollback journal. A
** write transaction must be started before any changes can be made to the
** database.  If P2 is 2 or greater then an EXCLUSIVE lock is also obtained
** on the file.
**
** If P2 is zero, then a read-lock is obtained on the database file.
*/
case OP_Transaction: {
#if 0  /* local variables moved into u.at */
  Btree *pBt;
#endif /* local variables moved into u.at */

  assert( pOp->p1>=0 && pOp->p1<db->nDb );
  assert( (p->btreeMask & (1<<pOp->p1))!=0 );
  u.at.pBt = db->aDb[pOp->p1].pBt;

  if( u.at.pBt ){
    rc = sqlite3BtreeBeginTrans(u.at.pBt, pOp->p2);
    if( rc==SQLITE_BUSY ){
      p->pc = pc;
      p->rc = rc = SQLITE_BUSY;
      goto vdbe_return;
    }
    if( rc!=SQLITE_OK && rc!=SQLITE_READONLY /* && rc!=SQLITE_BUSY */ ){
      goto abort_due_to_error;
    }
  }
  break;
}

/* Opcode: ReadCookie P1 P2 P3 * *
**
** Read cookie number P3 from database P1 and write it into register P2.
** P3==1 is the schema version.  P3==2 is the database format.
** P3==3 is the recommended pager cache size, and so forth.  P1==0 is
** the main database file and P1==1 is the database file used to store
** temporary tables.
**
** There must be a read-lock on the database (either a transaction
** must be started or there must be an open cursor) before
** executing this instruction.
*/
case OP_ReadCookie: {               /* out2-prerelease */
#if 0  /* local variables moved into u.au */
  int iMeta;
  int iDb;
  int iCookie;
#endif /* local variables moved into u.au */

  u.au.iDb = pOp->p1;
  u.au.iCookie = pOp->p3;
  assert( pOp->p3<SQLITE_N_BTREE_META );
  assert( u.au.iDb>=0 && u.au.iDb<db->nDb );
  assert( db->aDb[u.au.iDb].pBt!=0 );
  assert( (p->btreeMask & (1<<u.au.iDb))!=0 );

  rc = sqlite3BtreeGetMeta(db->aDb[u.au.iDb].pBt, u.au.iCookie, (u32 *)&u.au.iMeta);
  pOut->u.i = u.au.iMeta;
  MemSetTypeFlag(pOut, MEM_Int);
  break;
}

/* Opcode: SetCookie P1 P2 P3 * *
**
** Write the content of register P3 (interpreted as an integer)
** into cookie number P2 of database P1.  P2==1 is the schema version.  
** P2==2 is the database format. P2==3 is the recommended pager cache 
** size, and so forth.  P1==0 is the main database file and P1==1 is the 
** database file used to store temporary tables.
**
** A transaction must be started before executing this opcode.
*/
case OP_SetCookie: {       /* in3 */
#if 0  /* local variables moved into u.av */
  Db *pDb;
#endif /* local variables moved into u.av */
  assert( pOp->p2<SQLITE_N_BTREE_META );
  assert( pOp->p1>=0 && pOp->p1<db->nDb );
  assert( (p->btreeMask & (1<<pOp->p1))!=0 );
  u.av.pDb = &db->aDb[pOp->p1];
  assert( u.av.pDb->pBt!=0 );
  sqlite3VdbeMemIntegerify(pIn3);
  /* See note about index shifting on OP_ReadCookie */
  rc = sqlite3BtreeUpdateMeta(u.av.pDb->pBt, pOp->p2, (int)pIn3->u.i);
  if( pOp->p2==BTREE_SCHEMA_VERSION ){
    /* When the schema cookie changes, record the new cookie internally */
    u.av.pDb->pSchema->schema_cookie = (int)pIn3->u.i;
    db->flags |= SQLITE_InternChanges;
  }else if( pOp->p2==BTREE_FILE_FORMAT ){
    /* Record changes in the file format */
    u.av.pDb->pSchema->file_format = (u8)pIn3->u.i;
  }
  if( pOp->p1==1 ){
    /* Invalidate all prepared statements whenever the TEMP database
    ** schema is changed.  Ticket #1644 */
    sqlite3ExpirePreparedStatements(db);
  }
  break;
}

/* Opcode: VerifyCookie P1 P2 *
**
** Check the value of global database parameter number 0 (the
** schema version) and make sure it is equal to P2.  
** P1 is the database number which is 0 for the main database file
** and 1 for the file holding temporary tables and some higher number
** for auxiliary databases.
**
** The cookie changes its value whenever the database schema changes.
** This operation is used to detect when that the cookie has changed
** and that the current process needs to reread the schema.
**
** Either a transaction needs to have been started or an OP_Open needs
** to be executed (to establish a read lock) before this opcode is
** invoked.
*/
case OP_VerifyCookie: {
#if 0  /* local variables moved into u.aw */
  int iMeta;
  Btree *pBt;
#endif /* local variables moved into u.aw */
  assert( pOp->p1>=0 && pOp->p1<db->nDb );
  assert( (p->btreeMask & (1<<pOp->p1))!=0 );
  u.aw.pBt = db->aDb[pOp->p1].pBt;
  if( u.aw.pBt ){
    rc = sqlite3BtreeGetMeta(u.aw.pBt, BTREE_SCHEMA_VERSION, (u32 *)&u.aw.iMeta);
  }else{
    rc = SQLITE_OK;
    u.aw.iMeta = 0;
  }
  if( rc==SQLITE_OK && u.aw.iMeta!=pOp->p2 ){
    sqlite3DbFree(db, p->zErrMsg);
    p->zErrMsg = sqlite3DbStrDup(db, "database schema has changed");
    /* If the schema-cookie from the database file matches the cookie
    ** stored with the in-memory representation of the schema, do
    ** not reload the schema from the database file.
    **
    ** If virtual-tables are in use, this is not just an optimization.
    ** Often, v-tables store their data in other SQLite tables, which
    ** are queried from within xNext() and other v-table methods using
    ** prepared queries. If such a query is out-of-date, we do not want to
    ** discard the database schema, as the user code implementing the
    ** v-table would have to be ready for the sqlite3_vtab structure itself
    ** to be invalidated whenever sqlite3_step() is called from within
    ** a v-table method.
    */
    if( db->aDb[pOp->p1].pSchema->schema_cookie!=u.aw.iMeta ){
      sqlite3ResetInternalSchema(db, pOp->p1);
    }

    sqlite3ExpirePreparedStatements(db);
    rc = SQLITE_SCHEMA;
  }
  break;
}

/* Opcode: OpenRead P1 P2 P3 P4 P5
**
** Open a read-only cursor for the database table whose root page is
** P2 in a database file.  The database file is determined by P3. 
** P3==0 means the main database, P3==1 means the database used for 
** temporary tables, and P3>1 means used the corresponding attached
** database.  Give the new cursor an identifier of P1.  The P1
** values need not be contiguous but all P1 values should be small integers.
** It is an error for P1 to be negative.
**
** If P5!=0 then use the content of register P2 as the root page, not
** the value of P2 itself.
**
** There will be a read lock on the database whenever there is an
** open cursor.  If the database was unlocked prior to this instruction
** then a read lock is acquired as part of this instruction.  A read
** lock allows other processes to read the database but prohibits
** any other process from modifying the database.  The read lock is
** released when all cursors are closed.  If this instruction attempts
** to get a read lock but fails, the script terminates with an
** SQLITE_BUSY error code.
**
** The P4 value may be either an integer (P4_INT32) or a pointer to
** a KeyInfo structure (P4_KEYINFO). If it is a pointer to a KeyInfo 
** structure, then said structure defines the content and collating 
** sequence of the index being opened. Otherwise, if P4 is an integer 
** value, it is set to the number of columns in the table.
**
** See also OpenWrite.
*/
/* Opcode: OpenWrite P1 P2 P3 P4 P5
**
** Open a read/write cursor named P1 on the table or index whose root
** page is P2.  Or if P5!=0 use the content of register P2 to find the
** root page.
**
** The P4 value may be either an integer (P4_INT32) or a pointer to
** a KeyInfo structure (P4_KEYINFO). If it is a pointer to a KeyInfo 
** structure, then said structure defines the content and collating 
** sequence of the index being opened. Otherwise, if P4 is an integer 
** value, it is set to the number of columns in the table, or to the
** largest index of any column of the table that is actually used.
**
** This instruction works just like OpenRead except that it opens the cursor
** in read/write mode.  For a given table, there can be one or more read-only
** cursors or a single read/write cursor but not both.
**
** See also OpenRead.
*/
case OP_OpenRead:
case OP_OpenWrite: {
#if 0  /* local variables moved into u.ax */
  int nField;
  KeyInfo *pKeyInfo;
  int p2;
  int iDb;
  int wrFlag;
  Btree *pX;
  VdbeCursor *pCur;
  Db *pDb;
  int flags;
#endif /* local variables moved into u.ax */

  u.ax.nField = 0;
  u.ax.pKeyInfo = 0;
  u.ax.p2 = pOp->p2;
  u.ax.iDb = pOp->p3;
  assert( u.ax.iDb>=0 && u.ax.iDb<db->nDb );
  assert( (p->btreeMask & (1<<u.ax.iDb))!=0 );
  u.ax.pDb = &db->aDb[u.ax.iDb];
  u.ax.pX = u.ax.pDb->pBt;
  assert( u.ax.pX!=0 );
  if( pOp->opcode==OP_OpenWrite ){
    u.ax.wrFlag = 1;
    if( u.ax.pDb->pSchema->file_format < p->minWriteFileFormat ){
      p->minWriteFileFormat = u.ax.pDb->pSchema->file_format;
    }
  }else{
    u.ax.wrFlag = 0;
  }
  if( pOp->p5 ){
    assert( u.ax.p2>0 );
    assert( u.ax.p2<=p->nMem );
    pIn2 = &p->aMem[u.ax.p2];
    sqlite3VdbeMemIntegerify(pIn2);
    u.ax.p2 = (int)pIn2->u.i;
    /* The u.ax.p2 value always comes from a prior OP_CreateTable opcode and
    ** that opcode will always set the u.ax.p2 value to 2 or more or else fail.
    ** If there were a failure, the prepared statement would have halted
    ** before reaching this instruction. */
    if( NEVER(u.ax.p2<2) ) {
      rc = SQLITE_CORRUPT_BKPT;
      goto abort_due_to_error;
    }
  }
  if( pOp->p4type==P4_KEYINFO ){
    u.ax.pKeyInfo = pOp->p4.pKeyInfo;
    u.ax.pKeyInfo->enc = ENC(p->db);
    u.ax.nField = u.ax.pKeyInfo->nField+1;
  }else if( pOp->p4type==P4_INT32 ){
    u.ax.nField = pOp->p4.i;
  }
  assert( pOp->p1>=0 );
  u.ax.pCur = allocateCursor(p, pOp->p1, u.ax.nField, u.ax.iDb, 1);
  if( u.ax.pCur==0 ) goto no_mem;
  u.ax.pCur->nullRow = 1;
  rc = sqlite3BtreeCursor(u.ax.pX, u.ax.p2, u.ax.wrFlag, u.ax.pKeyInfo, u.ax.pCur->pCursor);
  u.ax.pCur->pKeyInfo = u.ax.pKeyInfo;

  switch( rc ){
    case SQLITE_OK: {
      u.ax.flags = sqlite3BtreeFlags(u.ax.pCur->pCursor);

      /* Sanity checking.  Only the lower four bits of the u.ax.flags byte should
      ** be used.  Bit 3 (mask 0x08) is unpredictable.  The lower 3 bits
      ** (mask 0x07) should be either 5 (intkey+leafdata for tables) or
      ** 2 (zerodata for indices).  If these conditions are not met it can
      ** only mean that we are dealing with a corrupt database file.
      ** Note:  All of the above is checked already in sqlite3BtreeCursor().
      */
      assert( (u.ax.flags & 0xf0)==0 );
      assert( (u.ax.flags & 0x07)==5 || (u.ax.flags & 0x07)==2 );

      u.ax.pCur->isTable = (u.ax.flags & BTREE_INTKEY)!=0 ?1:0;
      u.ax.pCur->isIndex = (u.ax.flags & BTREE_ZERODATA)!=0 ?1:0;
      /* If P4==0 it means we are expected to open a table.  If P4!=0 then
      ** we expect to be opening an index.  If this is not what happened,
      ** then the database is corrupt
      */
      if( (u.ax.pCur->isTable && pOp->p4type==P4_KEYINFO)
       || (u.ax.pCur->isIndex && pOp->p4type!=P4_KEYINFO) ){
        rc = SQLITE_CORRUPT_BKPT;
        goto abort_due_to_error;
      }
      break;
    }
    case SQLITE_EMPTY: {
      u.ax.pCur->isTable = pOp->p4type!=P4_KEYINFO;
      u.ax.pCur->isIndex = !u.ax.pCur->isTable;
      u.ax.pCur->pCursor = 0;
      rc = SQLITE_OK;
      break;
    }
    default: {
      assert( rc!=SQLITE_BUSY );  /* Busy conditions detected earlier */
      goto abort_due_to_error;
    }
  }
  break;
}

/* Opcode: OpenEphemeral P1 P2 * P4 *
**
** Open a new cursor P1 to a transient table.
** The cursor is always opened read/write even if 
** the main database is read-only.  The transient or virtual
** table is deleted automatically when the cursor is closed.
**
** P2 is the number of columns in the virtual table.
** The cursor points to a BTree table if P4==0 and to a BTree index
** if P4 is not 0.  If P4 is not NULL, it points to a KeyInfo structure
** that defines the format of keys in the index.
**
** This opcode was once called OpenTemp.  But that created
** confusion because the term "temp table", might refer either
** to a TEMP table at the SQL level, or to a table opened by
** this opcode.  Then this opcode was call OpenVirtual.  But
** that created confusion with the whole virtual-table idea.
*/
case OP_OpenEphemeral: {
#if 0  /* local variables moved into u.ay */
  VdbeCursor *pCx;
#endif /* local variables moved into u.ay */
  static const int openFlags =
      SQLITE_OPEN_READWRITE |
      SQLITE_OPEN_CREATE |
      SQLITE_OPEN_EXCLUSIVE |
      SQLITE_OPEN_DELETEONCLOSE |
      SQLITE_OPEN_TRANSIENT_DB;

  assert( pOp->p1>=0 );
  u.ay.pCx = allocateCursor(p, pOp->p1, pOp->p2, -1, 1);
  if( u.ay.pCx==0 ) goto no_mem;
  u.ay.pCx->nullRow = 1;
  rc = sqlite3BtreeFactory(db, 0, 1, SQLITE_DEFAULT_TEMP_CACHE_SIZE, openFlags,
                           &u.ay.pCx->pBt);
  if( rc==SQLITE_OK ){
    rc = sqlite3BtreeBeginTrans(u.ay.pCx->pBt, 1);
  }
  if( rc==SQLITE_OK ){
    /* If a transient index is required, create it by calling
    ** sqlite3BtreeCreateTable() with the BTREE_ZERODATA flag before
    ** opening it. If a transient table is required, just use the
    ** automatically created table with root-page 1 (an INTKEY table).
    */
    if( pOp->p4.pKeyInfo ){
      int pgno;
      assert( pOp->p4type==P4_KEYINFO );
      rc = sqlite3BtreeCreateTable(u.ay.pCx->pBt, &pgno, BTREE_ZERODATA);
      if( rc==SQLITE_OK ){
        assert( pgno==MASTER_ROOT+1 );
        rc = sqlite3BtreeCursor(u.ay.pCx->pBt, pgno, 1,
                                (KeyInfo*)pOp->p4.z, u.ay.pCx->pCursor);
        u.ay.pCx->pKeyInfo = pOp->p4.pKeyInfo;
        u.ay.pCx->pKeyInfo->enc = ENC(p->db);
      }
      u.ay.pCx->isTable = 0;
    }else{
      rc = sqlite3BtreeCursor(u.ay.pCx->pBt, MASTER_ROOT, 1, 0, u.ay.pCx->pCursor);
      u.ay.pCx->isTable = 1;
    }
  }
  u.ay.pCx->isIndex = !u.ay.pCx->isTable;
  break;
}

/* Opcode: OpenPseudo P1 P2 P3 * *
**
** Open a new cursor that points to a fake table that contains a single
** row of data.  Any attempt to write a second row of data causes the
** first row to be deleted.  All data is deleted when the cursor is
** closed.
**
** A pseudo-table created by this opcode is useful for holding the
** NEW or OLD tables in a trigger.  Also used to hold the a single
** row output from the sorter so that the row can be decomposed into
** individual columns using the OP_Column opcode.
**
** When OP_Insert is executed to insert a row in to the pseudo table,
** the pseudo-table cursor may or may not make it's own copy of the
** original row data. If P2 is 0, then the pseudo-table will copy the
** original row data. Otherwise, a pointer to the original memory cell
** is stored. In this case, the vdbe program must ensure that the 
** memory cell containing the row data is not overwritten until the
** pseudo table is closed (or a new row is inserted into it).
**
** P3 is the number of fields in the records that will be stored by
** the pseudo-table.
*/
case OP_OpenPseudo: {
#if 0  /* local variables moved into u.az */
  VdbeCursor *pCx;
#endif /* local variables moved into u.az */

  assert( pOp->p1>=0 );
  u.az.pCx = allocateCursor(p, pOp->p1, pOp->p3, -1, 0);
  if( u.az.pCx==0 ) goto no_mem;
  u.az.pCx->nullRow = 1;
  u.az.pCx->pseudoTable = 1;
  u.az.pCx->ephemPseudoTable = (u8)pOp->p2;
  u.az.pCx->isTable = 1;
  u.az.pCx->isIndex = 0;
  break;
}

/* Opcode: Close P1 * * * *
**
** Close a cursor previously opened as P1.  If P1 is not
** currently open, this instruction is a no-op.
*/
case OP_Close: {
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  sqlite3VdbeFreeCursor(p, p->apCsr[pOp->p1]);
  p->apCsr[pOp->p1] = 0;
  break;
}

/* Opcode: SeekGe P1 P2 P3 P4 *
**
** If cursor P1 refers to an SQL table (B-Tree that uses integer keys), 
** use the value in register P3 as the key.  If cursor P1 refers 
** to an SQL index, then P3 is the first in an array of P4 registers 
** that are used as an unpacked index key. 
**
** Reposition cursor P1 so that  it points to the smallest entry that 
** is greater than or equal to the key value. If there are no records 
** greater than or equal to the key and P2 is not zero, then jump to P2.
**
** See also: Found, NotFound, Distinct, SeekLt, SeekGt, SeekLe
*/
/* Opcode: SeekGt P1 P2 P3 P4 *
**
** If cursor P1 refers to an SQL table (B-Tree that uses integer keys), 
** use the value in register P3 as a key. If cursor P1 refers 
** to an SQL index, then P3 is the first in an array of P4 registers 
** that are used as an unpacked index key. 
**
** Reposition cursor P1 so that  it points to the smallest entry that 
** is greater than the key value. If there are no records greater than 
** the key and P2 is not zero, then jump to P2.
**
** See also: Found, NotFound, Distinct, SeekLt, SeekGe, SeekLe
*/
/* Opcode: SeekLt P1 P2 P3 P4 * 
**
** If cursor P1 refers to an SQL table (B-Tree that uses integer keys), 
** use the value in register P3 as a key. If cursor P1 refers 
** to an SQL index, then P3 is the first in an array of P4 registers 
** that are used as an unpacked index key. 
**
** Reposition cursor P1 so that  it points to the largest entry that 
** is less than the key value. If there are no records less than 
** the key and P2 is not zero, then jump to P2.
**
** See also: Found, NotFound, Distinct, SeekGt, SeekGe, SeekLe
*/
/* Opcode: SeekLe P1 P2 P3 P4 *
**
** If cursor P1 refers to an SQL table (B-Tree that uses integer keys), 
** use the value in register P3 as a key. If cursor P1 refers 
** to an SQL index, then P3 is the first in an array of P4 registers 
** that are used as an unpacked index key. 
**
** Reposition cursor P1 so that it points to the largest entry that 
** is less than or equal to the key value. If there are no records 
** less than or equal to the key and P2 is not zero, then jump to P2.
**
** See also: Found, NotFound, Distinct, SeekGt, SeekGe, SeekLt
*/
case OP_SeekLt:         /* jump, in3 */
case OP_SeekLe:         /* jump, in3 */
case OP_SeekGe:         /* jump, in3 */
case OP_SeekGt: {       /* jump, in3 */
#if 0  /* local variables moved into u.ba */
  int res;
  int oc;
  VdbeCursor *pC;
  UnpackedRecord r;
  int nField;
  i64 iKey;      /* The rowid we are to seek to */
#endif /* local variables moved into u.ba */

  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  assert( pOp->p2!=0 );
  u.ba.pC = p->apCsr[pOp->p1];
  assert( u.ba.pC!=0 );
  if( u.ba.pC->pCursor!=0 ){
    u.ba.oc = pOp->opcode;
    u.ba.pC->nullRow = 0;
    if( u.ba.pC->isTable ){
      /* The input value in P3 might be of any type: integer, real, string,
      ** blob, or NULL.  But it needs to be an integer before we can do
      ** the seek, so covert it. */
      applyNumericAffinity(pIn3);
      u.ba.iKey = sqlite3VdbeIntValue(pIn3);
      u.ba.pC->rowidIsValid = 0;

      /* If the P3 value could not be converted into an integer without
      ** loss of information, then special processing is required... */
      if( (pIn3->flags & MEM_Int)==0 ){
        if( (pIn3->flags & MEM_Real)==0 ){
          /* If the P3 value cannot be converted into any kind of a number,
          ** then the seek is not possible, so jump to P2 */
          pc = pOp->p2 - 1;
          break;
        }
        /* If we reach this point, then the P3 value must be a floating
        ** point number. */
        assert( (pIn3->flags & MEM_Real)!=0 );

        if( u.ba.iKey==SMALLEST_INT64 && (pIn3->r<(double)u.ba.iKey || pIn3->r>0) ){
          /* The P3 value is too large in magnitude to be expressed as an
          ** integer. */
          u.ba.res = 1;
          if( pIn3->r<0 ){
            if( u.ba.oc==OP_SeekGt || u.ba.oc==OP_SeekGe ){
              rc = sqlite3BtreeFirst(u.ba.pC->pCursor, &u.ba.res);
              if( rc!=SQLITE_OK ) goto abort_due_to_error;
            }
          }else{
            if( u.ba.oc==OP_SeekLt || u.ba.oc==OP_SeekLe ){
              rc = sqlite3BtreeLast(u.ba.pC->pCursor, &u.ba.res);
              if( rc!=SQLITE_OK ) goto abort_due_to_error;
            }
          }
          if( u.ba.res ){
            pc = pOp->p2 - 1;
          }
          break;
        }else if( u.ba.oc==OP_SeekLt || u.ba.oc==OP_SeekGe ){
          /* Use the ceiling() function to convert real->int */
          if( pIn3->r > (double)u.ba.iKey ) u.ba.iKey++;
        }else{
          /* Use the floor() function to convert real->int */
          assert( u.ba.oc==OP_SeekLe || u.ba.oc==OP_SeekGt );
          if( pIn3->r < (double)u.ba.iKey ) u.ba.iKey--;
        }
      }
      rc = sqlite3BtreeMovetoUnpacked(u.ba.pC->pCursor, 0, (u64)u.ba.iKey, 0, &u.ba.res);
      if( rc!=SQLITE_OK ){
        goto abort_due_to_error;
      }
      if( u.ba.res==0 ){
        u.ba.pC->rowidIsValid = 1;
        u.ba.pC->lastRowid = u.ba.iKey;
      }
    }else{
      u.ba.nField = pOp->p4.i;
      assert( pOp->p4type==P4_INT32 );
      assert( u.ba.nField>0 );
      u.ba.r.pKeyInfo = u.ba.pC->pKeyInfo;
      u.ba.r.nField = (u16)u.ba.nField;
      if( u.ba.oc==OP_SeekGt || u.ba.oc==OP_SeekLe ){
        u.ba.r.flags = UNPACKED_INCRKEY;
      }else{
        u.ba.r.flags = 0;
      }
      u.ba.r.aMem = &p->aMem[pOp->p3];
      rc = sqlite3BtreeMovetoUnpacked(u.ba.pC->pCursor, &u.ba.r, 0, 0, &u.ba.res);
      if( rc!=SQLITE_OK ){
        goto abort_due_to_error;
      }
      u.ba.pC->rowidIsValid = 0;
    }
    u.ba.pC->deferredMoveto = 0;
    u.ba.pC->cacheStatus = CACHE_STALE;
#ifdef SQLITE_TEST
    sqlite3_search_count++;
#endif
    if( u.ba.oc==OP_SeekGe || u.ba.oc==OP_SeekGt ){
      if( u.ba.res<0 || (u.ba.res==0 && u.ba.oc==OP_SeekGt) ){
        rc = sqlite3BtreeNext(u.ba.pC->pCursor, &u.ba.res);
        if( rc!=SQLITE_OK ) goto abort_due_to_error;
        u.ba.pC->rowidIsValid = 0;
      }else{
        u.ba.res = 0;
      }
    }else{
      assert( u.ba.oc==OP_SeekLt || u.ba.oc==OP_SeekLe );
      if( u.ba.res>0 || (u.ba.res==0 && u.ba.oc==OP_SeekLt) ){
        rc = sqlite3BtreePrevious(u.ba.pC->pCursor, &u.ba.res);
        if( rc!=SQLITE_OK ) goto abort_due_to_error;
        u.ba.pC->rowidIsValid = 0;
      }else{
        /* u.ba.res might be negative because the table is empty.  Check to
        ** see if this is the case.
        */
        u.ba.res = sqlite3BtreeEof(u.ba.pC->pCursor);
      }
    }
    assert( pOp->p2>0 );
    if( u.ba.res ){
      pc = pOp->p2 - 1;
    }
  }else{
    /* This happens when attempting to open the sqlite3_master table
    ** for read access returns SQLITE_EMPTY. In this case always
    ** take the jump (since there are no records in the table).
    */
    assert( u.ba.pC->pseudoTable==0 );
    pc = pOp->p2 - 1;
  }
  break;
}

/* Opcode: Seek P1 P2 * * *
**
** P1 is an open table cursor and P2 is a rowid integer.  Arrange
** for P1 to move so that it points to the rowid given by P2.
**
** This is actually a deferred seek.  Nothing actually happens until
** the cursor is used to read a record.  That way, if no reads
** occur, no unnecessary I/O happens.
*/
case OP_Seek: {    /* in2 */
#if 0  /* local variables moved into u.bb */
  VdbeCursor *pC;
#endif /* local variables moved into u.bb */

  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bb.pC = p->apCsr[pOp->p1];
  assert( u.bb.pC!=0 );
  if( ALWAYS(u.bb.pC->pCursor!=0) ){
    assert( u.bb.pC->isTable );
    u.bb.pC->nullRow = 0;
    u.bb.pC->movetoTarget = sqlite3VdbeIntValue(pIn2);
    u.bb.pC->rowidIsValid = 0;
    u.bb.pC->deferredMoveto = 1;
  }
  break;
}
  

/* Opcode: Found P1 P2 P3 * *
**
** Register P3 holds a blob constructed by MakeRecord.  P1 is an index.
** If an entry that matches the value in register p3 exists in P1 then
** jump to P2.  If the P3 value does not match any entry in P1
** then fall thru.  The P1 cursor is left pointing at the matching entry
** if it exists.
**
** This instruction is used to implement the IN operator where the
** left-hand side is a SELECT statement.  P1 may be a true index, or it
** may be a temporary index that holds the results of the SELECT
** statement.   This instruction is also used to implement the
** DISTINCT keyword in SELECT statements.
**
** This instruction checks if index P1 contains a record for which 
** the first N serialized values exactly match the N serialized values
** in the record in register P3, where N is the total number of values in
** the P3 record (the P3 record is a prefix of the P1 record). 
**
** See also: NotFound, IsUnique, NotExists
*/
/* Opcode: NotFound P1 P2 P3 * *
**
** Register P3 holds a blob constructed by MakeRecord.  P1 is
** an index.  If no entry exists in P1 that matches the blob then jump
** to P2.  If an entry does existing, fall through.  The cursor is left
** pointing to the entry that matches.
**
** See also: Found, NotExists, IsUnique
*/
case OP_NotFound:       /* jump, in3 */
case OP_Found: {        /* jump, in3 */
#if 0  /* local variables moved into u.bc */
  int alreadyExists;
  VdbeCursor *pC;
  int res;
  UnpackedRecord *pIdxKey;
  char aTempRec[ROUND8(sizeof(UnpackedRecord)) + sizeof(Mem)*3 + 7];
#endif /* local variables moved into u.bc */

  u.bc.alreadyExists = 0;
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bc.pC = p->apCsr[pOp->p1];
  assert( u.bc.pC!=0 );
  if( ALWAYS(u.bc.pC->pCursor!=0) ){

    assert( u.bc.pC->isTable==0 );
    assert( pIn3->flags & MEM_Blob );
    u.bc.pIdxKey = sqlite3VdbeRecordUnpack(u.bc.pC->pKeyInfo, pIn3->n, pIn3->z,
                                      u.bc.aTempRec, sizeof(u.bc.aTempRec));
    if( u.bc.pIdxKey==0 ){
      goto no_mem;
    }
    if( pOp->opcode==OP_Found ){
      u.bc.pIdxKey->flags |= UNPACKED_PREFIX_MATCH;
    }
    rc = sqlite3BtreeMovetoUnpacked(u.bc.pC->pCursor, u.bc.pIdxKey, 0, 0, &u.bc.res);
    sqlite3VdbeDeleteUnpackedRecord(u.bc.pIdxKey);
    if( rc!=SQLITE_OK ){
      break;
    }
    u.bc.alreadyExists = (u.bc.res==0);
    u.bc.pC->deferredMoveto = 0;
    u.bc.pC->cacheStatus = CACHE_STALE;
  }
  if( pOp->opcode==OP_Found ){
    if( u.bc.alreadyExists ) pc = pOp->p2 - 1;
  }else{
    if( !u.bc.alreadyExists ) pc = pOp->p2 - 1;
  }
  break;
}

/* Opcode: IsUnique P1 P2 P3 P4 *
**
** Cursor P1 is open on an index.  So it has no data and its key consists 
** of a record generated by OP_MakeRecord where the last field is the 
** rowid of the entry that the index refers to.
**
** The P3 register contains an integer record number. Call this record 
** number R. Register P4 is the first in a set of N contiguous registers
** that make up an unpacked index key that can be used with cursor P1.
** The value of N can be inferred from the cursor. N includes the rowid
** value appended to the end of the index record. This rowid value may
** or may not be the same as R.
**
** If any of the N registers beginning with register P4 contains a NULL
** value, jump immediately to P2.
**
** Otherwise, this instruction checks if cursor P1 contains an entry
** where the first (N-1) fields match but the rowid value at the end
** of the index entry is not R. If there is no such entry, control jumps
** to instruction P2. Otherwise, the rowid of the conflicting index
** entry is copied to register P3 and control falls through to the next
** instruction.
**
** See also: NotFound, NotExists, Found
*/
case OP_IsUnique: {        /* jump, in3 */
#if 0  /* local variables moved into u.bd */
  u16 ii;
  VdbeCursor *pCx;
  BtCursor *pCrsr;
  u16 nField;
  Mem *aMem;
  UnpackedRecord r;                  /* B-Tree index search key */
  i64 R;                             /* Rowid stored in register P3 */
#endif /* local variables moved into u.bd */

  u.bd.aMem = &p->aMem[pOp->p4.i];
  /* Assert that the values of parameters P1 and P4 are in range. */
  assert( pOp->p4type==P4_INT32 );
  assert( pOp->p4.i>0 && pOp->p4.i<=p->nMem );
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );

  /* Find the index cursor. */
  u.bd.pCx = p->apCsr[pOp->p1];
  assert( u.bd.pCx->deferredMoveto==0 );
  u.bd.pCx->seekResult = 0;
  u.bd.pCx->cacheStatus = CACHE_STALE;
  u.bd.pCrsr = u.bd.pCx->pCursor;

  /* If any of the values are NULL, take the jump. */
  u.bd.nField = u.bd.pCx->pKeyInfo->nField;
  for(u.bd.ii=0; u.bd.ii<u.bd.nField; u.bd.ii++){
    if( u.bd.aMem[u.bd.ii].flags & MEM_Null ){
      pc = pOp->p2 - 1;
      u.bd.pCrsr = 0;
      break;
    }
  }
  assert( (u.bd.aMem[u.bd.nField].flags & MEM_Null)==0 );

  if( u.bd.pCrsr!=0 ){
    /* Populate the index search key. */
    u.bd.r.pKeyInfo = u.bd.pCx->pKeyInfo;
    u.bd.r.nField = u.bd.nField + 1;
    u.bd.r.flags = UNPACKED_PREFIX_SEARCH;
    u.bd.r.aMem = u.bd.aMem;

    /* Extract the value of u.bd.R from register P3. */
    sqlite3VdbeMemIntegerify(pIn3);
    u.bd.R = pIn3->u.i;

    /* Search the B-Tree index. If no conflicting record is found, jump
    ** to P2. Otherwise, copy the rowid of the conflicting record to
    ** register P3 and fall through to the next instruction.  */
    rc = sqlite3BtreeMovetoUnpacked(u.bd.pCrsr, &u.bd.r, 0, 0, &u.bd.pCx->seekResult);
    if( (u.bd.r.flags & UNPACKED_PREFIX_SEARCH) || u.bd.r.rowid==u.bd.R ){
      pc = pOp->p2 - 1;
    }else{
      pIn3->u.i = u.bd.r.rowid;
    }
  }
  break;
}

/* Opcode: NotExists P1 P2 P3 * *
**
** Use the content of register P3 as a integer key.  If a record 
** with that key does not exist in table of P1, then jump to P2. 
** If the record does exist, then fall thru.  The cursor is left 
** pointing to the record if it exists.
**
** The difference between this operation and NotFound is that this
** operation assumes the key is an integer and that P1 is a table whereas
** NotFound assumes key is a blob constructed from MakeRecord and
** P1 is an index.
**
** See also: Found, NotFound, IsUnique
*/
case OP_NotExists: {        /* jump, in3 */
#if 0  /* local variables moved into u.be */
  VdbeCursor *pC;
  BtCursor *pCrsr;
  int res;
  u64 iKey;
#endif /* local variables moved into u.be */

  assert( pIn3->flags & MEM_Int );
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.be.pC = p->apCsr[pOp->p1];
  assert( u.be.pC!=0 );
  assert( u.be.pC->isTable );
  u.be.pCrsr = u.be.pC->pCursor;
  if( u.be.pCrsr!=0 ){
    u.be.res = 0;
    u.be.iKey = pIn3->u.i;
    rc = sqlite3BtreeMovetoUnpacked(u.be.pCrsr, 0, u.be.iKey, 0, &u.be.res);
    u.be.pC->lastRowid = pIn3->u.i;
    u.be.pC->rowidIsValid = u.be.res==0 ?1:0;
    u.be.pC->nullRow = 0;
    u.be.pC->cacheStatus = CACHE_STALE;
    u.be.pC->deferredMoveto = 0;
    if( u.be.res!=0 ){
      pc = pOp->p2 - 1;
      assert( u.be.pC->rowidIsValid==0 );
    }
    u.be.pC->seekResult = u.be.res;
  }else{
    /* This happens when an attempt to open a read cursor on the
    ** sqlite_master table returns SQLITE_EMPTY.
    */
    assert( !u.be.pC->pseudoTable );
    assert( u.be.pC->isTable );
    pc = pOp->p2 - 1;
    assert( u.be.pC->rowidIsValid==0 );
    u.be.pC->seekResult = 0;
  }
  break;
}

/* Opcode: Sequence P1 P2 * * *
**
** Find the next available sequence number for cursor P1.
** Write the sequence number into register P2.
** The sequence number on the cursor is incremented after this
** instruction.  
*/
case OP_Sequence: {           /* out2-prerelease */
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  assert( p->apCsr[pOp->p1]!=0 );
  pOut->u.i = p->apCsr[pOp->p1]->seqCount++;
  MemSetTypeFlag(pOut, MEM_Int);
  break;
}


/* Opcode: NewRowid P1 P2 P3 * *
**
** Get a new integer record number (a.k.a "rowid") used as the key to a table.
** The record number is not previously used as a key in the database
** table that cursor P1 points to.  The new record number is written
** written to register P2.
**
** If P3>0 then P3 is a register that holds the largest previously
** generated record number.  No new record numbers are allowed to be less
** than this value.  When this value reaches its maximum, a SQLITE_FULL
** error is generated.  The P3 register is updated with the generated
** record number.  This P3 mechanism is used to help implement the
** AUTOINCREMENT feature.
*/
case OP_NewRowid: {           /* out2-prerelease */
#if 0  /* local variables moved into u.bf */
  i64 v;                 /* The new rowid */
  VdbeCursor *pC;        /* Cursor of table to get the new rowid */
  int res;               /* Result of an sqlite3BtreeLast() */
  int cnt;               /* Counter to limit the number of searches */
  Mem *pMem;             /* Register holding largest rowid for AUTOINCREMENT */
#endif /* local variables moved into u.bf */

  u.bf.v = 0;
  u.bf.res = 0;
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bf.pC = p->apCsr[pOp->p1];
  assert( u.bf.pC!=0 );
  if( NEVER(u.bf.pC->pCursor==0) ){
    /* The zero initialization above is all that is needed */
  }else{
    /* The next rowid or record number (different terms for the same
    ** thing) is obtained in a two-step algorithm.
    **
    ** First we attempt to find the largest existing rowid and add one
    ** to that.  But if the largest existing rowid is already the maximum
    ** positive integer, we have to fall through to the second
    ** probabilistic algorithm
    **
    ** The second algorithm is to select a rowid at random and see if
    ** it already exists in the table.  If it does not exist, we have
    ** succeeded.  If the random rowid does exist, we select a new one
    ** and try again, up to 100 times.
    */
    assert( u.bf.pC->isTable );
    u.bf.cnt = 0;

#ifdef SQLITE_32BIT_ROWID
#   define MAX_ROWID 0x7fffffff
#else
    /* Some compilers complain about constants of the form 0x7fffffffffffffff.
    ** Others complain about 0x7ffffffffffffffffLL.  The following macro seems
    ** to provide the constant while making all compilers happy.
    */
#   define MAX_ROWID  (i64)( (((u64)0x7fffffff)<<32) | (u64)0xffffffff )
#endif

    if( !u.bf.pC->useRandomRowid ){
      u.bf.v = sqlite3BtreeGetCachedRowid(u.bf.pC->pCursor);
      if( u.bf.v==0 ){
        rc = sqlite3BtreeLast(u.bf.pC->pCursor, &u.bf.res);
        if( rc!=SQLITE_OK ){
          goto abort_due_to_error;
        }
        if( u.bf.res ){
          u.bf.v = 1;
        }else{
          sqlite3BtreeKeySize(u.bf.pC->pCursor, &u.bf.v);
          if( u.bf.v==MAX_ROWID ){
            u.bf.pC->useRandomRowid = 1;
          }else{
            u.bf.v++;
          }
        }
      }

#ifndef SQLITE_OMIT_AUTOINCREMENT
      if( pOp->p3 ){
        assert( pOp->p3>0 && pOp->p3<=p->nMem ); /* P3 is a valid memory cell */
        u.bf.pMem = &p->aMem[pOp->p3];
	REGISTER_TRACE(pOp->p3, u.bf.pMem);
        sqlite3VdbeMemIntegerify(u.bf.pMem);
        assert( (u.bf.pMem->flags & MEM_Int)!=0 );  /* mem(P3) holds an integer */
        if( u.bf.pMem->u.i==MAX_ROWID || u.bf.pC->useRandomRowid ){
          rc = SQLITE_FULL;
          goto abort_due_to_error;
        }
        if( u.bf.v<u.bf.pMem->u.i+1 ){
          u.bf.v = u.bf.pMem->u.i + 1;
        }
        u.bf.pMem->u.i = u.bf.v;
      }
#endif

      sqlite3BtreeSetCachedRowid(u.bf.pC->pCursor, u.bf.v<MAX_ROWID ? u.bf.v+1 : 0);
    }
    if( u.bf.pC->useRandomRowid ){
      assert( pOp->p3==0 );  /* We cannot be in random rowid mode if this is
                             ** an AUTOINCREMENT table. */
      u.bf.v = db->lastRowid;
      u.bf.cnt = 0;
      do{
        if( u.bf.cnt==0 && (u.bf.v&0xffffff)==u.bf.v ){
          u.bf.v++;
        }else{
          sqlite3_randomness(sizeof(u.bf.v), &u.bf.v);
          if( u.bf.cnt<5 ) u.bf.v &= 0xffffff;
        }
        rc = sqlite3BtreeMovetoUnpacked(u.bf.pC->pCursor, 0, (u64)u.bf.v, 0, &u.bf.res);
        u.bf.cnt++;
      }while( u.bf.cnt<100 && rc==SQLITE_OK && u.bf.res==0 );
      if( rc==SQLITE_OK && u.bf.res==0 ){
        rc = SQLITE_FULL;
        goto abort_due_to_error;
      }
    }
    u.bf.pC->rowidIsValid = 0;
    u.bf.pC->deferredMoveto = 0;
    u.bf.pC->cacheStatus = CACHE_STALE;
  }
  MemSetTypeFlag(pOut, MEM_Int);
  pOut->u.i = u.bf.v;
  break;
}

/* Opcode: Insert P1 P2 P3 P4 P5
**
** Write an entry into the table of cursor P1.  A new entry is
** created if it doesn't already exist or the data for an existing
** entry is overwritten.  The data is the value stored register
** number P2. The key is stored in register P3. The key must
** be an integer.
**
** If the OPFLAG_NCHANGE flag of P5 is set, then the row change count is
** incremented (otherwise not).  If the OPFLAG_LASTROWID flag of P5 is set,
** then rowid is stored for subsequent return by the
** sqlite3_last_insert_rowid() function (otherwise it is unmodified).
**
** Parameter P4 may point to a string containing the table-name, or
** may be NULL. If it is not NULL, then the update-hook 
** (sqlite3.xUpdateCallback) is invoked following a successful insert.
**
** (WARNING/TODO: If P1 is a pseudo-cursor and P2 is dynamically
** allocated, then ownership of P2 is transferred to the pseudo-cursor
** and register P2 becomes ephemeral.  If the cursor is changed, the
** value of register P2 will then change.  Make sure this does not
** cause any problems.)
**
** This instruction only works on tables.  The equivalent instruction
** for indices is OP_IdxInsert.
*/
case OP_Insert: {
#if 0  /* local variables moved into u.bg */
  Mem *pData;
  Mem *pKey;
  i64 iKey;   /* The integer ROWID or key for the record to be inserted */
  VdbeCursor *pC;
  int nZero;
  int seekResult;
  const char *zDb;
  const char *zTbl;
  int op;
#endif /* local variables moved into u.bg */

  u.bg.pData = &p->aMem[pOp->p2];
  u.bg.pKey = &p->aMem[pOp->p3];
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bg.pC = p->apCsr[pOp->p1];
  assert( u.bg.pC!=0 );
  assert( u.bg.pC->pCursor!=0 || u.bg.pC->pseudoTable );
  assert( u.bg.pKey->flags & MEM_Int );
  assert( u.bg.pC->isTable );
  REGISTER_TRACE(pOp->p2, u.bg.pData);
  REGISTER_TRACE(pOp->p3, u.bg.pKey);

  u.bg.iKey = u.bg.pKey->u.i;
  if( pOp->p5 & OPFLAG_NCHANGE ) p->nChange++;
  if( pOp->p5 & OPFLAG_LASTROWID ) db->lastRowid = u.bg.pKey->u.i;
  if( u.bg.pData->flags & MEM_Null ){
    u.bg.pData->z = 0;
    u.bg.pData->n = 0;
  }else{
    assert( u.bg.pData->flags & (MEM_Blob|MEM_Str) );
  }
  if( u.bg.pC->pseudoTable ){
    if( !u.bg.pC->ephemPseudoTable ){
      sqlite3DbFree(db, u.bg.pC->pData);
    }
    u.bg.pC->iKey = u.bg.iKey;
    u.bg.pC->nData = u.bg.pData->n;
    if( u.bg.pC->ephemPseudoTable || u.bg.pData->z==u.bg.pData->zMalloc ){
      u.bg.pC->pData = u.bg.pData->z;
      if( !u.bg.pC->ephemPseudoTable ){
        u.bg.pData->flags &= ~MEM_Dyn;
        u.bg.pData->flags |= MEM_Ephem;
        u.bg.pData->zMalloc = 0;
      }
    }else{
      u.bg.pC->pData = sqlite3Malloc( u.bg.pC->nData+2 );
      if( !u.bg.pC->pData ) goto no_mem;
      memcpy(u.bg.pC->pData, u.bg.pData->z, u.bg.pC->nData);
      u.bg.pC->pData[u.bg.pC->nData] = 0;
      u.bg.pC->pData[u.bg.pC->nData+1] = 0;
    }
    u.bg.pC->nullRow = 0;
  }else{
    u.bg.seekResult = ((pOp->p5 & OPFLAG_USESEEKRESULT) ? u.bg.pC->seekResult : 0);
    if( u.bg.pData->flags & MEM_Zero ){
      u.bg.nZero = u.bg.pData->u.nZero;
    }else{
      u.bg.nZero = 0;
    }
    sqlite3BtreeSetCachedRowid(u.bg.pC->pCursor, 0);
    rc = sqlite3BtreeInsert(u.bg.pC->pCursor, 0, u.bg.iKey,
                            u.bg.pData->z, u.bg.pData->n, u.bg.nZero,
                            pOp->p5 & OPFLAG_APPEND, u.bg.seekResult
    );
  }

  u.bg.pC->rowidIsValid = 0;
  u.bg.pC->deferredMoveto = 0;
  u.bg.pC->cacheStatus = CACHE_STALE;

  /* Invoke the update-hook if required. */
  if( rc==SQLITE_OK && db->xUpdateCallback && pOp->p4.z ){
    u.bg.zDb = db->aDb[u.bg.pC->iDb].zName;
    u.bg.zTbl = pOp->p4.z;
    u.bg.op = ((pOp->p5 & OPFLAG_ISUPDATE) ? SQLITE_UPDATE : SQLITE_INSERT);
    assert( u.bg.pC->isTable );
    db->xUpdateCallback(db->pUpdateArg, u.bg.op, u.bg.zDb, u.bg.zTbl, u.bg.iKey);
    assert( u.bg.pC->iDb>=0 );
  }
  break;
}

/* Opcode: Delete P1 P2 * P4 *
**
** Delete the record at which the P1 cursor is currently pointing.
**
** The cursor will be left pointing at either the next or the previous
** record in the table. If it is left pointing at the next record, then
** the next Next instruction will be a no-op.  Hence it is OK to delete
** a record from within an Next loop.
**
** If the OPFLAG_NCHANGE flag of P2 is set, then the row change count is
** incremented (otherwise not).
**
** P1 must not be pseudo-table.  It has to be a real table with
** multiple rows.
**
** If P4 is not NULL, then it is the name of the table that P1 is
** pointing to.  The update hook will be invoked, if it exists.
** If P4 is not NULL then the P1 cursor must have been positioned
** using OP_NotFound prior to invoking this opcode.
*/
case OP_Delete: {
#if 0  /* local variables moved into u.bh */
  i64 iKey;
  VdbeCursor *pC;
#endif /* local variables moved into u.bh */

  u.bh.iKey = 0;
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bh.pC = p->apCsr[pOp->p1];
  assert( u.bh.pC!=0 );
  assert( u.bh.pC->pCursor!=0 );  /* Only valid for real tables, no pseudotables */

  /* If the update-hook will be invoked, set u.bh.iKey to the rowid of the
  ** row being deleted.
  */
  if( db->xUpdateCallback && pOp->p4.z ){
    assert( u.bh.pC->isTable );
    assert( u.bh.pC->rowidIsValid );  /* lastRowid set by previous OP_NotFound */
    u.bh.iKey = u.bh.pC->lastRowid;
  }

  /* The OP_Delete opcode always follows an OP_NotExists or OP_Last or
  ** OP_Column on the same table without any intervening operations that
  ** might move or invalidate the cursor.  Hence cursor u.bh.pC is always pointing
  ** to the row to be deleted and the sqlite3VdbeCursorMoveto() operation
  ** below is always a no-op and cannot fail.  We will run it anyhow, though,
  ** to guard against future changes to the code generator.
  **/
  assert( u.bh.pC->deferredMoveto==0 );
  rc = sqlite3VdbeCursorMoveto(u.bh.pC);
  if( NEVER(rc!=SQLITE_OK) ) goto abort_due_to_error;

  sqlite3BtreeSetCachedRowid(u.bh.pC->pCursor, 0);
  rc = sqlite3BtreeDelete(u.bh.pC->pCursor);
  u.bh.pC->cacheStatus = CACHE_STALE;

  /* Invoke the update-hook if required. */
  if( rc==SQLITE_OK && db->xUpdateCallback && pOp->p4.z ){
    const char *zDb = db->aDb[u.bh.pC->iDb].zName;
    const char *zTbl = pOp->p4.z;
    db->xUpdateCallback(db->pUpdateArg, SQLITE_DELETE, zDb, zTbl, u.bh.iKey);
    assert( u.bh.pC->iDb>=0 );
  }
  if( pOp->p2 & OPFLAG_NCHANGE ) p->nChange++;
  break;
}

/* Opcode: ResetCount P1 * *
**
** This opcode resets the VMs internal change counter to 0. If P1 is true,
** then the value of the change counter is copied to the database handle
** change counter (returned by subsequent calls to sqlite3_changes())
** before it is reset. This is used by trigger programs.
*/
case OP_ResetCount: {
  if( pOp->p1 ){
    sqlite3VdbeSetChanges(db, p->nChange);
  }
  p->nChange = 0;
  break;
}

/* Opcode: RowData P1 P2 * * *
**
** Write into register P2 the complete row data for cursor P1.
** There is no interpretation of the data.  
** It is just copied onto the P2 register exactly as 
** it is found in the database file.
**
** If the P1 cursor must be pointing to a valid row (not a NULL row)
** of a real table, not a pseudo-table.
*/
/* Opcode: RowKey P1 P2 * * *
**
** Write into register P2 the complete row key for cursor P1.
** There is no interpretation of the data.  
** The key is copied onto the P3 register exactly as 
** it is found in the database file.
**
** If the P1 cursor must be pointing to a valid row (not a NULL row)
** of a real table, not a pseudo-table.
*/
case OP_RowKey:
case OP_RowData: {
#if 0  /* local variables moved into u.bi */
  VdbeCursor *pC;
  BtCursor *pCrsr;
  u32 n;
  i64 n64;
#endif /* local variables moved into u.bi */

  pOut = &p->aMem[pOp->p2];

  /* Note that RowKey and RowData are really exactly the same instruction */
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bi.pC = p->apCsr[pOp->p1];
  assert( u.bi.pC->isTable || pOp->opcode==OP_RowKey );
  assert( u.bi.pC->isIndex || pOp->opcode==OP_RowData );
  assert( u.bi.pC!=0 );
  assert( u.bi.pC->nullRow==0 );
  assert( u.bi.pC->pseudoTable==0 );
  assert( u.bi.pC->pCursor!=0 );
  u.bi.pCrsr = u.bi.pC->pCursor;

  /* The OP_RowKey and OP_RowData opcodes always follow OP_NotExists or
  ** OP_Rewind/Op_Next with no intervening instructions that might invalidate
  ** the cursor.  Hence the following sqlite3VdbeCursorMoveto() call is always
  ** a no-op and can never fail.  But we leave it in place as a safety.
  */
  assert( u.bi.pC->deferredMoveto==0 );
  rc = sqlite3VdbeCursorMoveto(u.bi.pC);
  if( NEVER(rc!=SQLITE_OK) ) goto abort_due_to_error;

  if( u.bi.pC->isIndex ){
    assert( !u.bi.pC->isTable );
    sqlite3BtreeKeySize(u.bi.pCrsr, &u.bi.n64);
    if( u.bi.n64>db->aLimit[SQLITE_LIMIT_LENGTH] ){
      goto too_big;
    }
    u.bi.n = (u32)u.bi.n64;
  }else{
    sqlite3BtreeDataSize(u.bi.pCrsr, &u.bi.n);
    if( u.bi.n>(u32)db->aLimit[SQLITE_LIMIT_LENGTH] ){
      goto too_big;
    }
  }
  if( sqlite3VdbeMemGrow(pOut, u.bi.n, 0) ){
    goto no_mem;
  }
  pOut->n = u.bi.n;
  MemSetTypeFlag(pOut, MEM_Blob);
  if( u.bi.pC->isIndex ){
    rc = sqlite3BtreeKey(u.bi.pCrsr, 0, u.bi.n, pOut->z);
  }else{
    rc = sqlite3BtreeData(u.bi.pCrsr, 0, u.bi.n, pOut->z);
  }
  pOut->enc = SQLITE_UTF8;  /* In case the blob is ever cast to text */
  UPDATE_MAX_BLOBSIZE(pOut);
  break;
}

/* Opcode: Rowid P1 P2 * * *
**
** Store in register P2 an integer which is the key of the table entry that
** P1 is currently point to.
**
** P1 can be either an ordinary table or a virtual table.  There used to
** be a separate OP_VRowid opcode for use with virtual tables, but this
** one opcode now works for both table types.
*/
case OP_Rowid: {                 /* out2-prerelease */
#if 0  /* local variables moved into u.bj */
  VdbeCursor *pC;
  i64 v;
  sqlite3_vtab *pVtab;
  const sqlite3_module *pModule;
#endif /* local variables moved into u.bj */

  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bj.pC = p->apCsr[pOp->p1];
  assert( u.bj.pC!=0 );
  if( u.bj.pC->nullRow ){
    /* Do nothing so that reg[P2] remains NULL */
    break;
  }else if( u.bj.pC->deferredMoveto ){
    u.bj.v = u.bj.pC->movetoTarget;
  }else if( u.bj.pC->pseudoTable ){
    u.bj.v = u.bj.pC->iKey;
#ifndef SQLITE_OMIT_VIRTUALTABLE
  }else if( u.bj.pC->pVtabCursor ){
    u.bj.pVtab = u.bj.pC->pVtabCursor->pVtab;
    u.bj.pModule = u.bj.pVtab->pModule;
    assert( u.bj.pModule->xRowid );
    if( sqlite3SafetyOff(db) ) goto abort_due_to_misuse;
    rc = u.bj.pModule->xRowid(u.bj.pC->pVtabCursor, &u.bj.v);
    sqlite3DbFree(db, p->zErrMsg);
    p->zErrMsg = u.bj.pVtab->zErrMsg;
    u.bj.pVtab->zErrMsg = 0;
    if( sqlite3SafetyOn(db) ) goto abort_due_to_misuse;
#endif /* SQLITE_OMIT_VIRTUALTABLE */
  }else{
    rc = sqlite3VdbeCursorMoveto(u.bj.pC);
    if( rc ) goto abort_due_to_error;
    if( u.bj.pC->rowidIsValid ){
      u.bj.v = u.bj.pC->lastRowid;
    }else{
      assert( u.bj.pC->pCursor!=0 );
      sqlite3BtreeKeySize(u.bj.pC->pCursor, &u.bj.v);
    }
  }
  pOut->u.i = u.bj.v;
  MemSetTypeFlag(pOut, MEM_Int);
  break;
}

/* Opcode: NullRow P1 * * * *
**
** Move the cursor P1 to a null row.  Any OP_Column operations
** that occur while the cursor is on the null row will always
** write a NULL.
*/
case OP_NullRow: {
#if 0  /* local variables moved into u.bk */
  VdbeCursor *pC;
#endif /* local variables moved into u.bk */

  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bk.pC = p->apCsr[pOp->p1];
  assert( u.bk.pC!=0 );
  u.bk.pC->nullRow = 1;
  u.bk.pC->rowidIsValid = 0;
  if( u.bk.pC->pCursor ){
    sqlite3BtreeClearCursor(u.bk.pC->pCursor);
  }
  break;
}

/* Opcode: Last P1 P2 * * *
**
** The next use of the Rowid or Column or Next instruction for P1 
** will refer to the last entry in the database table or index.
** If the table or index is empty and P2>0, then jump immediately to P2.
** If P2 is 0 or if the table or index is not empty, fall through
** to the following instruction.
*/
case OP_Last: {        /* jump */
#if 0  /* local variables moved into u.bl */
  VdbeCursor *pC;
  BtCursor *pCrsr;
  int res;
#endif /* local variables moved into u.bl */

  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bl.pC = p->apCsr[pOp->p1];
  assert( u.bl.pC!=0 );
  u.bl.pCrsr = u.bl.pC->pCursor;
  if( u.bl.pCrsr==0 ){
    u.bl.res = 1;
  }else{
    rc = sqlite3BtreeLast(u.bl.pCrsr, &u.bl.res);
  }
  u.bl.pC->nullRow = (u8)u.bl.res;
  u.bl.pC->deferredMoveto = 0;
  u.bl.pC->rowidIsValid = 0;
  u.bl.pC->cacheStatus = CACHE_STALE;
  if( pOp->p2>0 && u.bl.res ){
    pc = pOp->p2 - 1;
  }
  break;
}


/* Opcode: Sort P1 P2 * * *
**
** This opcode does exactly the same thing as OP_Rewind except that
** it increments an undocumented global variable used for testing.
**
** Sorting is accomplished by writing records into a sorting index,
** then rewinding that index and playing it back from beginning to
** end.  We use the OP_Sort opcode instead of OP_Rewind to do the
** rewinding so that the global variable will be incremented and
** regression tests can determine whether or not the optimizer is
** correctly optimizing out sorts.
*/
case OP_Sort: {        /* jump */
#ifdef SQLITE_TEST
  sqlite3_sort_count++;
  sqlite3_search_count--;
#endif
  p->aCounter[SQLITE_STMTSTATUS_SORT-1]++;
  /* Fall through into OP_Rewind */
}
/* Opcode: Rewind P1 P2 * * *
**
** The next use of the Rowid or Column or Next instruction for P1 
** will refer to the first entry in the database table or index.
** If the table or index is empty and P2>0, then jump immediately to P2.
** If P2 is 0 or if the table or index is not empty, fall through
** to the following instruction.
*/
case OP_Rewind: {        /* jump */
#if 0  /* local variables moved into u.bm */
  VdbeCursor *pC;
  BtCursor *pCrsr;
  int res;
#endif /* local variables moved into u.bm */

  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bm.pC = p->apCsr[pOp->p1];
  assert( u.bm.pC!=0 );
  if( (u.bm.pCrsr = u.bm.pC->pCursor)!=0 ){
    rc = sqlite3BtreeFirst(u.bm.pCrsr, &u.bm.res);
    u.bm.pC->atFirst = u.bm.res==0 ?1:0;
    u.bm.pC->deferredMoveto = 0;
    u.bm.pC->cacheStatus = CACHE_STALE;
    u.bm.pC->rowidIsValid = 0;
  }else{
    u.bm.res = 1;
  }
  u.bm.pC->nullRow = (u8)u.bm.res;
  assert( pOp->p2>0 && pOp->p2<p->nOp );
  if( u.bm.res ){
    pc = pOp->p2 - 1;
  }
  break;
}

/* Opcode: Next P1 P2 * * *
**
** Advance cursor P1 so that it points to the next key/data pair in its
** table or index.  If there are no more key/value pairs then fall through
** to the following instruction.  But if the cursor advance was successful,
** jump immediately to P2.
**
** The P1 cursor must be for a real table, not a pseudo-table.
**
** See also: Prev
*/
/* Opcode: Prev P1 P2 * * *
**
** Back up cursor P1 so that it points to the previous key/data pair in its
** table or index.  If there is no previous key/value pairs then fall through
** to the following instruction.  But if the cursor backup was successful,
** jump immediately to P2.
**
** The P1 cursor must be for a real table, not a pseudo-table.
*/
case OP_Prev:          /* jump */
case OP_Next: {        /* jump */
#if 0  /* local variables moved into u.bn */
  VdbeCursor *pC;
  BtCursor *pCrsr;
  int res;
#endif /* local variables moved into u.bn */

  CHECK_FOR_INTERRUPT;
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bn.pC = p->apCsr[pOp->p1];
  if( u.bn.pC==0 ){
    break;  /* See ticket #2273 */
  }
  u.bn.pCrsr = u.bn.pC->pCursor;
  if( u.bn.pCrsr==0 ){
    u.bn.pC->nullRow = 1;
    break;
  }
  u.bn.res = 1;
  assert( u.bn.pC->deferredMoveto==0 );
  rc = pOp->opcode==OP_Next ? sqlite3BtreeNext(u.bn.pCrsr, &u.bn.res) :
                              sqlite3BtreePrevious(u.bn.pCrsr, &u.bn.res);
  u.bn.pC->nullRow = (u8)u.bn.res;
  u.bn.pC->cacheStatus = CACHE_STALE;
  if( u.bn.res==0 ){
    pc = pOp->p2 - 1;
    if( pOp->p5 ) p->aCounter[pOp->p5-1]++;
#ifdef SQLITE_TEST
    sqlite3_search_count++;
#endif
  }
  u.bn.pC->rowidIsValid = 0;
  break;
}

/* Opcode: IdxInsert P1 P2 P3 * P5
**
** Register P2 holds a SQL index key made using the
** MakeRecord instructions.  This opcode writes that key
** into the index P1.  Data for the entry is nil.
**
** P3 is a flag that provides a hint to the b-tree layer that this
** insert is likely to be an append.
**
** This instruction only works for indices.  The equivalent instruction
** for tables is OP_Insert.
*/
case OP_IdxInsert: {        /* in2 */
#if 0  /* local variables moved into u.bo */
  VdbeCursor *pC;
  BtCursor *pCrsr;
  int nKey;
  const char *zKey;
#endif /* local variables moved into u.bo */

  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bo.pC = p->apCsr[pOp->p1];
  assert( u.bo.pC!=0 );
  assert( pIn2->flags & MEM_Blob );
  u.bo.pCrsr = u.bo.pC->pCursor;
  if( ALWAYS(u.bo.pCrsr!=0) ){
    assert( u.bo.pC->isTable==0 );
    rc = ExpandBlob(pIn2);
    if( rc==SQLITE_OK ){
      u.bo.nKey = pIn2->n;
      u.bo.zKey = pIn2->z;
      rc = sqlite3BtreeInsert(u.bo.pCrsr, u.bo.zKey, u.bo.nKey, "", 0, 0, pOp->p3,
          ((pOp->p5 & OPFLAG_USESEEKRESULT) ? u.bo.pC->seekResult : 0)
      );
      assert( u.bo.pC->deferredMoveto==0 );
      u.bo.pC->cacheStatus = CACHE_STALE;
    }
  }
  break;
}

/* Opcode: IdxDelete P1 P2 P3 * *
**
** The content of P3 registers starting at register P2 form
** an unpacked index key. This opcode removes that entry from the 
** index opened by cursor P1.
*/
case OP_IdxDelete: {
#if 0  /* local variables moved into u.bp */
  VdbeCursor *pC;
  BtCursor *pCrsr;
  int res;
  UnpackedRecord r;
#endif /* local variables moved into u.bp */

  assert( pOp->p3>0 );
  assert( pOp->p2>0 && pOp->p2+pOp->p3<=p->nMem+1 );
  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bp.pC = p->apCsr[pOp->p1];
  assert( u.bp.pC!=0 );
  u.bp.pCrsr = u.bp.pC->pCursor;
  if( ALWAYS(u.bp.pCrsr!=0) ){
    u.bp.r.pKeyInfo = u.bp.pC->pKeyInfo;
    u.bp.r.nField = (u16)pOp->p3;
    u.bp.r.flags = 0;
    u.bp.r.aMem = &p->aMem[pOp->p2];
    rc = sqlite3BtreeMovetoUnpacked(u.bp.pCrsr, &u.bp.r, 0, 0, &u.bp.res);
    if( rc==SQLITE_OK && u.bp.res==0 ){
      rc = sqlite3BtreeDelete(u.bp.pCrsr);
    }
    assert( u.bp.pC->deferredMoveto==0 );
    u.bp.pC->cacheStatus = CACHE_STALE;
  }
  break;
}

/* Opcode: IdxRowid P1 P2 * * *
**
** Write into register P2 an integer which is the last entry in the record at
** the end of the index key pointed to by cursor P1.  This integer should be
** the rowid of the table entry to which this index entry points.
**
** See also: Rowid, MakeRecord.
*/
case OP_IdxRowid: {              /* out2-prerelease */
#if 0  /* local variables moved into u.bq */
  BtCursor *pCrsr;
  VdbeCursor *pC;
  i64 rowid;
#endif /* local variables moved into u.bq */

  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.bq.pC = p->apCsr[pOp->p1];
  assert( u.bq.pC!=0 );
  u.bq.pCrsr = u.bq.pC->pCursor;
  if( ALWAYS(u.bq.pCrsr!=0) ){
    rc = sqlite3VdbeCursorMoveto(u.bq.pC);
    if( NEVER(rc) ) goto abort_due_to_error;
    assert( u.bq.pC->deferredMoveto==0 );
    assert( u.bq.pC->isTable==0 );
    if( !u.bq.pC->nullRow ){
      rc = sqlite3VdbeIdxRowid(db, u.bq.pCrsr, &u.bq.rowid);
      if( rc!=SQLITE_OK ){
        goto abort_due_to_error;
      }
      MemSetTypeFlag(pOut, MEM_Int);
      pOut->u.i = u.bq.rowid;
    }
  }
  break;
}

/* Opcode: IdxGE P1 P2 P3 P4 P5
**
** The P4 register values beginning with P3 form an unpacked index 
** key that omits the ROWID.  Compare this key value against the index 
** that P1 is currently pointing to, ignoring the ROWID on the P1 index.
**
** If the P1 index entry is greater than or equal to the key value
** then jump to P2.  Otherwise fall through to the next instruction.
**
** If P5 is non-zero then the key value is increased by an epsilon 
** prior to the comparison.  This make the opcode work like IdxGT except
** that if the key from register P3 is a prefix of the key in the cursor,
** the result is false whereas it would be true with IdxGT.
*/
/* Opcode: IdxLT P1 P2 P3 * P5
**
** The P4 register values beginning with P3 form an unpacked index 
** key that omits the ROWID.  Compare this key value against the index 
** that P1 is currently pointing to, ignoring the ROWID on the P1 index.
**
** If the P1 index entry is less than the key value then jump to P2.
** Otherwise fall through to the next instruction.
**
** If P5 is non-zero then the key value is increased by an epsilon prior 
** to the comparison.  This makes the opcode work like IdxLE.
*/
case OP_IdxLT:          /* jump, in3 */
case OP_IdxGE: {        /* jump, in3 */
#if 0  /* local variables moved into u.br */
  VdbeCursor *pC;
  int res;
  UnpackedRecord r;
#endif /* local variables moved into u.br */

  assert( pOp->p1>=0 && pOp->p1<p->nCursor );
  u.br.pC = p->apCsr[pOp->p1];
  assert( u.br.pC!=0 );
  if( ALWAYS(u.br.pC->pCursor!=0) ){
    assert( u.br.pC->deferredMoveto==0 );
    assert( pOp->p5==0 || pOp->p5==1 );
    assert( pOp->p4type==P4_INT32 );
    u.br.r.pKeyInfo = u.br.pC->pKeyInfo;
    u.br.r.nField = (u16)pOp->p4.i;
    if( pOp->p5 ){
      u.br.r.flags = UNPACKED_INCRKEY | UNPACKED_IGNORE_ROWID;
    }else{
      u.br.r.flags = UNPACKED_IGNORE_ROWID;
    }
    u.br.r.aMem = &p->aMem[pOp->p3];
    rc = sqlite3VdbeIdxKeyCompare(u.br.pC, &u.br.r, &u.br.res);
    if( pOp->opcode==OP_IdxLT ){
      u.br.res = -u.br.res;
    }else{
      assert( pOp->opcode==OP_IdxGE );
      u.br.res++;
    }
    if( u.br.res>0 ){
      pc = pOp->p2 - 1 ;
    }
  }
  break;
}

/* Opcode: Destroy P1 P2 P3 * *
**
** Delete an entire database table or index whose root page in the database
** file is given by P1.
**
** The table being destroyed is in the main database file if P3==0.  If
** P3==1 then the table to be clear is in the auxiliary database file
** that is used to store tables create using CREATE TEMPORARY TABLE.
**
** If AUTOVACUUM is enabled then it is possible that another root page
** might be moved into the newly deleted root page in order to keep all
** root pages contiguous at the beginning of the database.  The former
** value of the root page that moved - its value before the move occurred -
** is stored in register P2.  If no page 
** movement was required (because the table being dropped was already 
** the last one in the database) then a zero is stored in register P2.
** If AUTOVACUUM is disabled then a zero is stored in register P2.
**
** See also: Clear
*/
case OP_Destroy: {     /* out2-prerelease */
#if 0  /* local variables moved into u.bs */
  int iMoved;
  int iCnt;
  Vdbe *pVdbe;
  int iDb;
#endif /* local variables moved into u.bs */
#ifndef SQLITE_OMIT_VIRTUALTABLE
  u.bs.iCnt = 0;
  for(u.bs.pVdbe=db->pVdbe; u.bs.pVdbe; u.bs.pVdbe = u.bs.pVdbe->pNext){
    if( u.bs.pVdbe->magic==VDBE_MAGIC_RUN && u.bs.pVdbe->inVtabMethod<2 && u.bs.pVdbe->pc>=0 ){
      u.bs.iCnt++;
    }
  }
#else
  u.bs.iCnt = db->activeVdbeCnt;
#endif
  if( u.bs.iCnt>1 ){
    rc = SQLITE_LOCKED;
    p->errorAction = OE_Abort;
  }else{
    u.bs.iDb = pOp->p3;
    assert( u.bs.iCnt==1 );
    assert( (p->btreeMask & (1<<u.bs.iDb))!=0 );
    rc = sqlite3BtreeDropTable(db->aDb[u.bs.iDb].pBt, pOp->p1, &u.bs.iMoved);
    MemSetTypeFlag(pOut, MEM_Int);
    pOut->u.i = u.bs.iMoved;
#ifndef SQLITE_OMIT_AUTOVACUUM
    if( rc==SQLITE_OK && u.bs.iMoved!=0 ){
      sqlite3RootPageMoved(&db->aDb[u.bs.iDb], u.bs.iMoved, pOp->p1);
    }
#endif
  }
  break;
}

/* Opcode: Clear P1 P2 P3
**
** Delete all contents of the database table or index whose root page
** in the database file is given by P1.  But, unlike Destroy, do not
** remove the table or index from the database file.
**
** The table being clear is in the main database file if P2==0.  If
** P2==1 then the table to be clear is in the auxiliary database file
** that is used to store tables create using CREATE TEMPORARY TABLE.
**
** If the P3 value is non-zero, then the table referred to must be an
** intkey table (an SQL table, not an index). In this case the row change 
** count is incremented by the number of rows in the table being cleared. 
** If P3 is greater than zero, then the value stored in register P3 is
** also incremented by the number of rows in the table being cleared.
**
** See also: Destroy
*/
case OP_Clear: {
#if 0  /* local variables moved into u.bt */
  int nChange;
#endif /* local variables moved into u.bt */

  u.bt.nChange = 0;
  assert( (p->btreeMask & (1<<pOp->p2))!=0 );
  rc = sqlite3BtreeClearTable(
      db->aDb[pOp->p2].pBt, pOp->p1, (pOp->p3 ? &u.bt.nChange : 0)
  );
  if( pOp->p3 ){
    p->nChange += u.bt.nChange;
    if( pOp->p3>0 ){
      p->aMem[pOp->p3].u.i += u.bt.nChange;
    }
  }
  break;
}

/* Opcode: CreateTable P1 P2 * * *
**
** Allocate a new table in the main database file if P1==0 or in the
** auxiliary database file if P1==1 or in an attached database if
** P1>1.  Write the root page number of the new table into
** register P2
**
** The difference between a table and an index is this:  A table must
** have a 4-byte integer key and can have arbitrary data.  An index
** has an arbitrary key but no data.
**
** See also: CreateIndex
*/
/* Opcode: CreateIndex P1 P2 * * *
**
** Allocate a new index in the main database file if P1==0 or in the
** auxiliary database file if P1==1 or in an attached database if
** P1>1.  Write the root page number of the new table into
** register P2.
**
** See documentation on OP_CreateTable for additional information.
*/
case OP_CreateIndex:            /* out2-prerelease */
case OP_CreateTable: {          /* out2-prerelease */
#if 0  /* local variables moved into u.bu */
  int pgno;
  int flags;
  Db *pDb;
#endif /* local variables moved into u.bu */

  u.bu.pgno = 0;
  assert( pOp->p1>=0 && pOp->p1<db->nDb );
  assert( (p->btreeMask & (1<<pOp->p1))!=0 );
  u.bu.pDb = &db->aDb[pOp->p1];
  assert( u.bu.pDb->pBt!=0 );
  if( pOp->opcode==OP_CreateTable ){
    /* u.bu.flags = BTREE_INTKEY; */
    u.bu.flags = BTREE_LEAFDATA|BTREE_INTKEY;
  }else{
    u.bu.flags = BTREE_ZERODATA;
  }
  rc = sqlite3BtreeCreateTable(u.bu.pDb->pBt, &u.bu.pgno, u.bu.flags);
  pOut->u.i = u.bu.pgno;
  MemSetTypeFlag(pOut, MEM_Int);
  break;
}

/* Opcode: ParseSchema P1 P2 * P4 *
**
** Read and parse all entries from the SQLITE_MASTER table of database P1
** that match the WHERE clause P4.  P2 is the "force" flag.   Always do
** the parsing if P2 is true.  If P2 is false, then this routine is a
** no-op if the schema is not currently loaded.  In other words, if P2
** is false, the SQLITE_MASTER table is only parsed if the rest of the
** schema is already loaded into the symbol table.
**
** This opcode invokes the parser to create a new virtual machine,
** then runs the new virtual machine.  It is thus a re-entrant opcode.
*/
case OP_ParseSchema: {
#if 0  /* local variables moved into u.bv */
  int iDb;
  const char *zMaster;
  char *zSql;
  InitData initData;
#endif /* local variables moved into u.bv */

  u.bv.iDb = pOp->p1;
  assert( u.bv.iDb>=0 && u.bv.iDb<db->nDb );

  /* If pOp->p2 is 0, then this opcode is being executed to read a
  ** single row, for example the row corresponding to a new index
  ** created by this VDBE, from the sqlite_master table. It only
  ** does this if the corresponding in-memory schema is currently
  ** loaded. Otherwise, the new index definition can be loaded along
  ** with the rest of the schema when it is required.
  **
  ** Although the mutex on the BtShared object that corresponds to
  ** database u.bv.iDb (the database containing the sqlite_master table
  ** read by this instruction) is currently held, it is necessary to
  ** obtain the mutexes on all attached databases before checking if
  ** the schema of u.bv.iDb is loaded. This is because, at the start of
  ** the sqlite3_exec() call below, SQLite will invoke
  ** sqlite3BtreeEnterAll(). If all mutexes are not already held, the
  ** u.bv.iDb mutex may be temporarily released to avoid deadlock. If
  ** this happens, then some other thread may delete the in-memory
  ** schema of database u.bv.iDb before the SQL statement runs. The schema
  ** will not be reloaded becuase the db->init.busy flag is set. This
  ** can result in a "no such table: sqlite_master" or "malformed
  ** database schema" error being returned to the user.
  */
  assert( sqlite3BtreeHoldsMutex(db->aDb[u.bv.iDb].pBt) );
  sqlite3BtreeEnterAll(db);
  if( pOp->p2 || DbHasProperty(db, u.bv.iDb, DB_SchemaLoaded) ){
    u.bv.zMaster = SCHEMA_TABLE(u.bv.iDb);
    u.bv.initData.db = db;
    u.bv.initData.iDb = pOp->p1;
    u.bv.initData.pzErrMsg = &p->zErrMsg;
    u.bv.zSql = sqlite3MPrintf(db,
       "SELECT name, rootpage, sql FROM '%q'.%s WHERE %s",
       db->aDb[u.bv.iDb].zName, u.bv.zMaster, pOp->p4.z);
    if( u.bv.zSql==0 ){
      rc = SQLITE_NOMEM;
    }else{
      (void)sqlite3SafetyOff(db);
      assert( db->init.busy==0 );
      db->init.busy = 1;
      u.bv.initData.rc = SQLITE_OK;
      assert( !db->mallocFailed );
      rc = sqlite3_exec(db, u.bv.zSql, sqlite3InitCallback, &u.bv.initData, 0);
      if( rc==SQLITE_OK ) rc = u.bv.initData.rc;
      sqlite3DbFree(db, u.bv.zSql);
      db->init.busy = 0;
      (void)sqlite3SafetyOn(db);
    }
  }
  sqlite3BtreeLeaveAll(db);
  if( rc==SQLITE_NOMEM ){
    goto no_mem;
  }
  break;
}

#if !defined(SQLITE_OMIT_ANALYZE)
/* Opcode: LoadAnalysis P1 * * * *
**
** Read the sqlite_stat1 table for database P1 and load the content
** of that table into the internal index hash table.  This will cause
** the analysis to be used when preparing all subsequent queries.
*/
case OP_LoadAnalysis: {
  assert( pOp->p1>=0 && pOp->p1<db->nDb );
  rc = sqlite3AnalysisLoad(db, pOp->p1);
  break;  
}
#endif /* !defined(SQLITE_OMIT_ANALYZE) */

/* Opcode: DropTable P1 * * P4 *
**
** Remove the internal (in-memory) data structures that describe
** the table named P4 in database P1.  This is called after a table
** is dropped in order to keep the internal representation of the
** schema consistent with what is on disk.
*/
case OP_DropTable: {
  sqlite3UnlinkAndDeleteTable(db, pOp->p1, pOp->p4.z);
  break;
}

/* Opcode: DropIndex P1 * * P4 *
**
** Remove the internal (in-memory) data structures that describe
** the index named P4 in database P1.  This is called after an index
** is dropped in order to keep the internal representation of the
** schema consistent with what is on disk.
*/
case OP_DropIndex: {
  sqlite3UnlinkAndDeleteIndex(db, pOp->p1, pOp->p4.z);
  break;
}

/* Opcode: DropTrigger P1 * * P4 *
**
** Remove the internal (in-memory) data structures that describe
** the trigger named P4 in database P1.  This is called after a trigger
** is dropped in order to keep the internal representation of the
** schema consistent with what is on disk.
*/
case OP_DropTrigger: {
  sqlite3UnlinkAndDeleteTrigger(db, pOp->p1, pOp->p4.z);
  break;
}


#ifndef SQLITE_OMIT_INTEGRITY_CHECK
/* Opcode: IntegrityCk P1 P2 P3 * P5
**
** Do an analysis of the currently open database.  Store in
** register P1 the text of an error message describing any problems.
** If no problems are found, store a NULL in register P1.
**
** The register P3 contains the maximum number of allowed errors.
** At most reg(P3) errors will be reported.
** In other words, the analysis stops as soon as reg(P1) errors are 
** seen.  Reg(P1) is updated with the number of errors remaining.
**
** The root page numbers of all tables in the database are integer
** stored in reg(P1), reg(P1+1), reg(P1+2), ....  There are P2 tables
** total.
**
** If P5 is not zero, the check is done on the auxiliary database
** file, not the main database file.
**
** This opcode is used to implement the integrity_check pragma.
*/
case OP_IntegrityCk: {
#if 0  /* local variables moved into u.bw */
  int nRoot;      /* Number of tables to check.  (Number of root pages.) */
  int *aRoot;     /* Array of rootpage numbers for tables to be checked */
  int j;          /* Loop counter */
  int nErr;       /* Number of errors reported */
  char *z;        /* Text of the error report */
  Mem *pnErr;     /* Register keeping track of errors remaining */
#endif /* local variables moved into u.bw */

  u.bw.nRoot = pOp->p2;
  assert( u.bw.nRoot>0 );
  u.bw.aRoot = sqlite3DbMallocRaw(db, sizeof(int)*(u.bw.nRoot+1) );
  if( u.bw.aRoot==0 ) goto no_mem;
  assert( pOp->p3>0 && pOp->p3<=p->nMem );
  u.bw.pnErr = &p->aMem[pOp->p3];
  assert( (u.bw.pnErr->flags & MEM_Int)!=0 );
  assert( (u.bw.pnErr->flags & (MEM_Str|MEM_Blob))==0 );
  pIn1 = &p->aMem[pOp->p1];
  for(u.bw.j=0; u.bw.j<u.bw.nRoot; u.bw.j++){
    u.bw.aRoot[u.bw.j] = (int)sqlite3VdbeIntValue(&pIn1[u.bw.j]);
  }
  u.bw.aRoot[u.bw.j] = 0;
  assert( pOp->p5<db->nDb );
  assert( (p->btreeMask & (1<<pOp->p5))!=0 );
  u.bw.z = sqlite3BtreeIntegrityCheck(db->aDb[pOp->p5].pBt, u.bw.aRoot, u.bw.nRoot,
                                 (int)u.bw.pnErr->u.i, &u.bw.nErr);
  sqlite3DbFree(db, u.bw.aRoot);
  u.bw.pnErr->u.i -= u.bw.nErr;
  sqlite3VdbeMemSetNull(pIn1);
  if( u.bw.nErr==0 ){
    assert( u.bw.z==0 );
  }else if( u.bw.z==0 ){
    goto no_mem;
  }else{
    sqlite3VdbeMemSetStr(pIn1, u.bw.z, -1, SQLITE_UTF8, sqlite3_free);
  }
  UPDATE_MAX_BLOBSIZE(pIn1);
  sqlite3VdbeChangeEncoding(pIn1, encoding);
  break;
}
#endif /* SQLITE_OMIT_INTEGRITY_CHECK */

/* Opcode: RowSetAdd P1 P2 * * *
**
** Insert the integer value held by register P2 into a boolean index
** held in register P1.
**
** An assertion fails if P2 is not an integer.
*/
case OP_RowSetAdd: {       /* in2 */
#if 0  /* local variables moved into u.bx */
  Mem *pIdx;
  Mem *pVal;
#endif /* local variables moved into u.bx */
  assert( pOp->p1>0 && pOp->p1<=p->nMem );
  u.bx.pIdx = &p->aMem[pOp->p1];
  assert( pOp->p2>0 && pOp->p2<=p->nMem );
  u.bx.pVal = &p->aMem[pOp->p2];
  assert( (u.bx.pVal->flags & MEM_Int)!=0 );
  if( (u.bx.pIdx->flags & MEM_RowSet)==0 ){
    sqlite3VdbeMemSetRowSet(u.bx.pIdx);
    if( (u.bx.pIdx->flags & MEM_RowSet)==0 ) goto no_mem;
  }
  sqlite3RowSetInsert(u.bx.pIdx->u.pRowSet, u.bx.pVal->u.i);
  break;
}

/* Opcode: RowSetRead P1 P2 P3 * *
**
** Extract the smallest value from boolean index P1 and put that value into
** register P3.  Or, if boolean index P1 is initially empty, leave P3
** unchanged and jump to instruction P2.
*/
case OP_RowSetRead: {       /* jump, out3 */
#if 0  /* local variables moved into u.by */
  Mem *pIdx;
  i64 val;
#endif /* local variables moved into u.by */
  assert( pOp->p1>0 && pOp->p1<=p->nMem );
  CHECK_FOR_INTERRUPT;
  u.by.pIdx = &p->aMem[pOp->p1];
  pOut = &p->aMem[pOp->p3];
  if( (u.by.pIdx->flags & MEM_RowSet)==0
   || sqlite3RowSetNext(u.by.pIdx->u.pRowSet, &u.by.val)==0
  ){
    /* The boolean index is empty */
    sqlite3VdbeMemSetNull(u.by.pIdx);
    pc = pOp->p2 - 1;
  }else{
    /* A value was pulled from the index */
    assert( pOp->p3>0 && pOp->p3<=p->nMem );
    sqlite3VdbeMemSetInt64(pOut, u.by.val);
  }
  break;
}

/* Opcode: RowSetTest P1 P2 P3 P4
**
** Register P3 is assumed to hold a 64-bit integer value. If register P1
** contains a RowSet object and that RowSet object contains
** the value held in P3, jump to register P2. Otherwise, insert the
** integer in P3 into the RowSet and continue on to the
** next opcode.
**
** The RowSet object is optimized for the case where successive sets
** of integers, where each set contains no duplicates. Each set
** of values is identified by a unique P4 value. The first set
** must have P4==0, the final set P4=-1.  P4 must be either -1 or
** non-negative.  For non-negative values of P4 only the lower 4
** bits are significant.
**
** This allows optimizations: (a) when P4==0 there is no need to test
** the rowset object for P3, as it is guaranteed not to contain it,
** (b) when P4==-1 there is no need to insert the value, as it will
** never be tested for, and (c) when a value that is part of set X is
** inserted, there is no need to search to see if the same value was
** previously inserted as part of set X (only if it was previously
** inserted as part of some other set).
*/
case OP_RowSetTest: {                     /* jump, in1, in3 */
#if 0  /* local variables moved into u.bz */
  int iSet;
  int exists;
#endif /* local variables moved into u.bz */

  u.bz.iSet = pOp->p4.i;
  assert( pIn3->flags&MEM_Int );

  /* If there is anything other than a rowset object in memory cell P1,
  ** delete it now and initialize P1 with an empty rowset
  */
  if( (pIn1->flags & MEM_RowSet)==0 ){
    sqlite3VdbeMemSetRowSet(pIn1);
    if( (pIn1->flags & MEM_RowSet)==0 ) goto no_mem;
  }

  assert( pOp->p4type==P4_INT32 );
  assert( u.bz.iSet==-1 || u.bz.iSet>=0 );
  if( u.bz.iSet ){
    u.bz.exists = sqlite3RowSetTest(pIn1->u.pRowSet,
                               (u8)(u.bz.iSet>=0 ? u.bz.iSet & 0xf : 0xff),
                               pIn3->u.i);
    if( u.bz.exists ){
      pc = pOp->p2 - 1;
      break;
    }
  }
  if( u.bz.iSet>=0 ){
    sqlite3RowSetInsert(pIn1->u.pRowSet, pIn3->u.i);
  }
  break;
}


#ifndef SQLITE_OMIT_TRIGGER
/* Opcode: ContextPush * * * 
**
** Save the current Vdbe context such that it can be restored by a ContextPop
** opcode. The context stores the last insert row id, the last statement change
** count, and the current statement change count.
*/
case OP_ContextPush: {
#if 0  /* local variables moved into u.ca */
  int i;
  Context *pContext;
#endif /* local variables moved into u.ca */

  u.ca.i = p->contextStackTop++;
  assert( u.ca.i>=0 );
  /* FIX ME: This should be allocated as part of the vdbe at compile-time */
  if( u.ca.i>=p->contextStackDepth ){
    p->contextStackDepth = u.ca.i+1;
    p->contextStack = sqlite3DbReallocOrFree(db, p->contextStack,
                                          sizeof(Context)*(u.ca.i+1));
    if( p->contextStack==0 ) goto no_mem;
  }
  u.ca.pContext = &p->contextStack[u.ca.i];
  u.ca.pContext->lastRowid = db->lastRowid;
  u.ca.pContext->nChange = p->nChange;
  break;
}

/* Opcode: ContextPop * * * 
**
** Restore the Vdbe context to the state it was in when contextPush was last
** executed. The context stores the last insert row id, the last statement
** change count, and the current statement change count.
*/
case OP_ContextPop: {
#if 0  /* local variables moved into u.cb */
  Context *pContext;
#endif /* local variables moved into u.cb */
  u.cb.pContext = &p->contextStack[--p->contextStackTop];
  assert( p->contextStackTop>=0 );
  db->lastRowid = u.cb.pContext->lastRowid;
  p->nChange = u.cb.pContext->nChange;
  break;
}
#endif /* #ifndef SQLITE_OMIT_TRIGGER */

#ifndef SQLITE_OMIT_AUTOINCREMENT
/* Opcode: MemMax P1 P2 * * *
**
** Set the value of register P1 to the maximum of its current value
** and the value in register P2.
**
** This instruction throws an error if the memory cell is not initially
** an integer.
*/
case OP_MemMax: {        /* in1, in2 */
  sqlite3VdbeMemIntegerify(pIn1);
  sqlite3VdbeMemIntegerify(pIn2);
  if( pIn1->u.i<pIn2->u.i){
    pIn1->u.i = pIn2->u.i;
  }
  break;
}
#endif /* SQLITE_OMIT_AUTOINCREMENT */

/* Opcode: IfPos P1 P2 * * *
**
** If the value of register P1 is 1 or greater, jump to P2.
**
** It is illegal to use this instruction on a register that does
** not contain an integer.  An assertion fault will result if you try.
*/
case OP_IfPos: {        /* jump, in1 */
  assert( pIn1->flags&MEM_Int );
  if( pIn1->u.i>0 ){
     pc = pOp->p2 - 1;
  }
  break;
}

/* Opcode: IfNeg P1 P2 * * *
**
** If the value of register P1 is less than zero, jump to P2. 
**
** It is illegal to use this instruction on a register that does
** not contain an integer.  An assertion fault will result if you try.
*/
case OP_IfNeg: {        /* jump, in1 */
  assert( pIn1->flags&MEM_Int );
  if( pIn1->u.i<0 ){
     pc = pOp->p2 - 1;
  }
  break;
}

/* Opcode: IfZero P1 P2 * * *
**
** If the value of register P1 is exactly 0, jump to P2. 
**
** It is illegal to use this instruction on a register that does
** not contain an integer.  An assertion fault will result if you try.
*/
case OP_IfZero: {        /* jump, in1 */
  assert( pIn1->flags&MEM_Int );
  if( pIn1->u.i==0 ){
     pc = pOp->p2 - 1;
  }
  break;
}

/* Opcode: AggStep * P2 P3 P4 P5
**
** Execute the step function for an aggregate.  The
** function has P5 arguments.   P4 is a pointer to the FuncDef
** structure that specifies the function.  Use register
** P3 as the accumulator.
**
** The P5 arguments are taken from register P2 and its
** successors.
*/
case OP_AggStep: {
#if 0  /* local variables moved into u.cc */
  int n;
  int i;
  Mem *pMem;
  Mem *pRec;
  sqlite3_context ctx;
  sqlite3_value **apVal;
#endif /* local variables moved into u.cc */

  u.cc.n = pOp->p5;
  assert( u.cc.n>=0 );
  u.cc.pRec = &p->aMem[pOp->p2];
  u.cc.apVal = p->apArg;
  assert( u.cc.apVal || u.cc.n==0 );
  for(u.cc.i=0; u.cc.i<u.cc.n; u.cc.i++, u.cc.pRec++){
    u.cc.apVal[u.cc.i] = u.cc.pRec;
    storeTypeInfo(u.cc.pRec, encoding);
  }
  u.cc.ctx.pFunc = pOp->p4.pFunc;
  assert( pOp->p3>0 && pOp->p3<=p->nMem );
  u.cc.ctx.pMem = u.cc.pMem = &p->aMem[pOp->p3];
  u.cc.pMem->n++;
  u.cc.ctx.s.flags = MEM_Null;
  u.cc.ctx.s.z = 0;
  u.cc.ctx.s.zMalloc = 0;
  u.cc.ctx.s.xDel = 0;
  u.cc.ctx.s.db = db;
  u.cc.ctx.isError = 0;
  u.cc.ctx.pColl = 0;
  if( u.cc.ctx.pFunc->flags & SQLITE_FUNC_NEEDCOLL ){
    assert( pOp>p->aOp );
    assert( pOp[-1].p4type==P4_COLLSEQ );
    assert( pOp[-1].opcode==OP_CollSeq );
    u.cc.ctx.pColl = pOp[-1].p4.pColl;
  }
  (u.cc.ctx.pFunc->xStep)(&u.cc.ctx, u.cc.n, u.cc.apVal);
  if( u.cc.ctx.isError ){
    sqlite3SetString(&p->zErrMsg, db, "%s", sqlite3_value_text(&u.cc.ctx.s));
    rc = u.cc.ctx.isError;
  }
  sqlite3VdbeMemRelease(&u.cc.ctx.s);
  break;
}

/* Opcode: AggFinal P1 P2 * P4 *
**
** Execute the finalizer function for an aggregate.  P1 is
** the memory location that is the accumulator for the aggregate.
**
** P2 is the number of arguments that the step function takes and
** P4 is a pointer to the FuncDef for this function.  The P2
** argument is not used by this opcode.  It is only there to disambiguate
** functions that can take varying numbers of arguments.  The
** P4 argument is only needed for the degenerate case where
** the step function was not previously called.
*/
case OP_AggFinal: {
#if 0  /* local variables moved into u.cd */
  Mem *pMem;
#endif /* local variables moved into u.cd */
  assert( pOp->p1>0 && pOp->p1<=p->nMem );
  u.cd.pMem = &p->aMem[pOp->p1];
  assert( (u.cd.pMem->flags & ~(MEM_Null|MEM_Agg))==0 );
  rc = sqlite3VdbeMemFinalize(u.cd.pMem, pOp->p4.pFunc);
  if( rc ){
    sqlite3SetString(&p->zErrMsg, db, "%s", sqlite3_value_text(u.cd.pMem));
  }
  sqlite3VdbeChangeEncoding(u.cd.pMem, encoding);
  UPDATE_MAX_BLOBSIZE(u.cd.pMem);
  if( sqlite3VdbeMemTooBig(u.cd.pMem) ){
    goto too_big;
  }
  break;
}


#if !defined(SQLITE_OMIT_VACUUM) && !defined(SQLITE_OMIT_ATTACH)
/* Opcode: Vacuum * * * * *
**
** Vacuum the entire database.  This opcode will cause other virtual
** machines to be created and run.  It may not be called from within
** a transaction.
*/
case OP_Vacuum: {
  if( sqlite3SafetyOff(db) ) goto abort_due_to_misuse; 
  rc = sqlite3RunVacuum(&p->zErrMsg, db);
  if( sqlite3SafetyOn(db) ) goto abort_due_to_misuse;
  break;
}
#endif

#if !defined(SQLITE_OMIT_AUTOVACUUM)
/* Opcode: IncrVacuum P1 P2 * * *
**
** Perform a single step of the incremental vacuum procedure on
** the P1 database. If the vacuum has finished, jump to instruction
** P2. Otherwise, fall through to the next instruction.
*/
case OP_IncrVacuum: {        /* jump */
#if 0  /* local variables moved into u.ce */
  Btree *pBt;
#endif /* local variables moved into u.ce */

  assert( pOp->p1>=0 && pOp->p1<db->nDb );
  assert( (p->btreeMask & (1<<pOp->p1))!=0 );
  u.ce.pBt = db->aDb[pOp->p1].pBt;
  rc = sqlite3BtreeIncrVacuum(u.ce.pBt);
  if( rc==SQLITE_DONE ){
    pc = pOp->p2 - 1;
    rc = SQLITE_OK;
  }
  break;
}
#endif

/* Opcode: Expire P1 * * * *
**
** Cause precompiled statements to become expired. An expired statement
** fails with an error code of SQLITE_SCHEMA if it is ever executed 
** (via sqlite3_step()).
** 
** If P1 is 0, then all SQL statements become expired. If P1 is non-zero,
** then only the currently executing statement is affected. 
*/
case OP_Expire: {
  if( !pOp->p1 ){
    sqlite3ExpirePreparedStatements(db);
  }else{
    p->expired = 1;
  }
  break;
}

#ifndef SQLITE_OMIT_SHARED_CACHE
/* Opcode: TableLock P1 P2 P3 P4 *
**
** Obtain a lock on a particular table. This instruction is only used when
** the shared-cache feature is enabled. 
**
** If P1 is  the index of the database in sqlite3.aDb[] of the database
** on which the lock is acquired.  A readlock is obtained if P3==0 or
** a write lock if P3==1.
**
** P2 contains the root-page of the table to lock.
**
** P4 contains a pointer to the name of the table being locked. This is only
** used to generate an error message if the lock cannot be obtained.
*/
case OP_TableLock: {
#if 0  /* local variables moved into u.cf */
  int p1;
  u8 isWriteLock;
#endif /* local variables moved into u.cf */

  u.cf.p1 = pOp->p1;
  u.cf.isWriteLock = (u8)pOp->p3;
  assert( u.cf.p1>=0 && u.cf.p1<db->nDb );
  assert( (p->btreeMask & (1<<u.cf.p1))!=0 );
  assert( u.cf.isWriteLock==0 || u.cf.isWriteLock==1 );
  rc = sqlite3BtreeLockTable(db->aDb[u.cf.p1].pBt, pOp->p2, u.cf.isWriteLock);
  if( (rc&0xFF)==SQLITE_LOCKED ){
    const char *z = pOp->p4.z;
    sqlite3SetString(&p->zErrMsg, db, "database table is locked: %s", z);
  }
  break;
}
#endif /* SQLITE_OMIT_SHARED_CACHE */

#ifndef SQLITE_OMIT_VIRTUALTABLE
/* Opcode: VBegin * * * P4 *
**
** P4 may be a pointer to an sqlite3_vtab structure. If so, call the 
** xBegin method for that table.
**
** Also, whether or not P4 is set, check that this is not being called from
** within a callback to a virtual table xSync() method. If it is, the error
** code will be set to SQLITE_LOCKED.
*/
case OP_VBegin: {
#if 0  /* local variables moved into u.cg */
  sqlite3_vtab *pVtab;
#endif /* local variables moved into u.cg */
  u.cg.pVtab = pOp->p4.pVtab;
  rc = sqlite3VtabBegin(db, u.cg.pVtab);
  if( u.cg.pVtab ){
    sqlite3DbFree(db, p->zErrMsg);
    p->zErrMsg = u.cg.pVtab->zErrMsg;
    u.cg.pVtab->zErrMsg = 0;
  }
  break;
}
#endif /* SQLITE_OMIT_VIRTUALTABLE */

#ifndef SQLITE_OMIT_VIRTUALTABLE
/* Opcode: VCreate P1 * * P4 *
**
** P4 is the name of a virtual table in database P1. Call the xCreate method
** for that table.
*/
case OP_VCreate: {
  rc = sqlite3VtabCallCreate(db, pOp->p1, pOp->p4.z, &p->zErrMsg);
  break;
}
#endif /* SQLITE_OMIT_VIRTUALTABLE */

#ifndef SQLITE_OMIT_VIRTUALTABLE
/* Opcode: VDestroy P1 * * P4 *
**
** P4 is the name of a virtual table in database P1.  Call the xDestroy method
** of that table.
*/
case OP_VDestroy: {
  p->inVtabMethod = 2;
  rc = sqlite3VtabCallDestroy(db, pOp->p1, pOp->p4.z);
  p->inVtabMethod = 0;
  break;
}
#endif /* SQLITE_OMIT_VIRTUALTABLE */

#ifndef SQLITE_OMIT_VIRTUALTABLE
/* Opcode: VOpen P1 * * P4 *
**
** P4 is a pointer to a virtual table object, an sqlite3_vtab structure.
** P1 is a cursor number.  This opcode opens a cursor to the virtual
** table and stores that cursor in P1.
*/
case OP_VOpen: {
#if 0  /* local variables moved into u.ch */
  VdbeCursor *pCur;
  sqlite3_vtab_cursor *pVtabCursor;
  sqlite3_vtab *pVtab;
  sqlite3_module *pModule;
#endif /* local variables moved into u.ch */

  u.ch.pCur = 0;
  u.ch.pVtabCursor = 0;
  u.ch.pVtab = pOp->p4.pVtab;
  u.ch.pModule = (sqlite3_module *)u.ch.pVtab->pModule;
  assert(u.ch.pVtab && u.ch.pModule);
  if( sqlite3SafetyOff(db) ) goto abort_due_to_misuse;
  rc = u.ch.pModule->xOpen(u.ch.pVtab, &u.ch.pVtabCursor);
  sqlite3DbFree(db, p->zErrMsg);
  p->zErrMsg = u.ch.pVtab->zErrMsg;
  u.ch.pVtab->zErrMsg = 0;
  if( sqlite3SafetyOn(db) ) goto abort_due_to_misuse;
  if( SQLITE_OK==rc ){
    /* Initialize sqlite3_vtab_cursor base class */
    u.ch.pVtabCursor->pVtab = u.ch.pVtab;

    /* Initialise vdbe cursor object */
    u.ch.pCur = allocateCursor(p, pOp->p1, 0, -1, 0);
    if( u.ch.pCur ){
      u.ch.pCur->pVtabCursor = u.ch.pVtabCursor;
      u.ch.pCur->pModule = u.ch.pVtabCursor->pVtab->pModule;
    }else{
      db->mallocFailed = 1;
      u.ch.pModule->xClose(u.ch.pVtabCursor);
    }
  }
  break;
}
#endif /* SQLITE_OMIT_VIRTUALTABLE */

#ifndef SQLITE_OMIT_VIRTUALTABLE
/* Opcode: VFilter P1 P2 P3 P4 *
**
** P1 is a cursor opened using VOpen.  P2 is an address to jump to if
** the filtered result set is empty.
**
** P4 is either NULL or a string that was generated by the xBestIndex
** method of the module.  The interpretation of the P4 string is left
** to the module implementation.
**
** This opcode invokes the xFilter method on the virtual table specified
** by P1.  The integer query plan parameter to xFilter is stored in register
** P3. Register P3+1 stores the argc parameter to be passed to the
** xFilter method. Registers P3+2..P3+1+argc are the argc
** additional parameters which are passed to
** xFilter as argv. Register P3+2 becomes argv[0] when passed to xFilter.
**
** A jump is made to P2 if the result set after filtering would be empty.
*/
case OP_VFilter: {   /* jump */
#if 0  /* local variables moved into u.ci */
  int nArg;
  int iQuery;
  const sqlite3_module *pModule;
  Mem *pQuery;
  Mem *pArgc;
  sqlite3_vtab_cursor *pVtabCursor;
  sqlite3_vtab *pVtab;
  VdbeCursor *pCur;
  int res;
  int i;
  Mem **apArg;
#endif /* local variables moved into u.ci */

  u.ci.pQuery = &p->aMem[pOp->p3];
  u.ci.pArgc = &u.ci.pQuery[1];
  u.ci.pCur = p->apCsr[pOp->p1];
  REGISTER_TRACE(pOp->p3, u.ci.pQuery);
  assert( u.ci.pCur->pVtabCursor );
  u.ci.pVtabCursor = u.ci.pCur->pVtabCursor;
  u.ci.pVtab = u.ci.pVtabCursor->pVtab;
  u.ci.pModule = u.ci.pVtab->pModule;

  /* Grab the index number and argc parameters */
  assert( (u.ci.pQuery->flags&MEM_Int)!=0 && u.ci.pArgc->flags==MEM_Int );
  u.ci.nArg = (int)u.ci.pArgc->u.i;
  u.ci.iQuery = (int)u.ci.pQuery->u.i;

  /* Invoke the xFilter method */
  {
    u.ci.res = 0;
    u.ci.apArg = p->apArg;
    for(u.ci.i = 0; u.ci.i<u.ci.nArg; u.ci.i++){
      u.ci.apArg[u.ci.i] = &u.ci.pArgc[u.ci.i+1];
      storeTypeInfo(u.ci.apArg[u.ci.i], 0);
    }

    if( sqlite3SafetyOff(db) ) goto abort_due_to_misuse;
    sqlite3VtabLock(u.ci.pVtab);
    p->inVtabMethod = 1;
    rc = u.ci.pModule->xFilter(u.ci.pVtabCursor, u.ci.iQuery, pOp->p4.z, u.ci.nArg, u.ci.apArg);
    p->inVtabMethod = 0;
    sqlite3DbFree(db, p->zErrMsg);
    p->zErrMsg = u.ci.pVtab->zErrMsg;
    u.ci.pVtab->zErrMsg = 0;
    sqlite3VtabUnlock(db, u.ci.pVtab);
    if( rc==SQLITE_OK ){
      u.ci.res = u.ci.pModule->xEof(u.ci.pVtabCursor);
    }
    if( sqlite3SafetyOn(db) ) goto abort_due_to_misuse;

    if( u.ci.res ){
      pc = pOp->p2 - 1;
    }
  }
  u.ci.pCur->nullRow = 0;

  break;
}
#endif /* SQLITE_OMIT_VIRTUALTABLE */

#ifndef SQLITE_OMIT_VIRTUALTABLE
/* Opcode: VColumn P1 P2 P3 * *
**
** Store the value of the P2-th column of
** the row of the virtual-table that the 
** P1 cursor is pointing to into register P3.
*/
case OP_VColumn: {
#if 0  /* local variables moved into u.cj */
  sqlite3_vtab *pVtab;
  const sqlite3_module *pModule;
  Mem *pDest;
  sqlite3_context sContext;
#endif /* local variables moved into u.cj */

  VdbeCursor *pCur = p->apCsr[pOp->p1];
  assert( pCur->pVtabCursor );
  assert( pOp->p3>0 && pOp->p3<=p->nMem );
  u.cj.pDest = &p->aMem[pOp->p3];
  if( pCur->nullRow ){
    sqlite3VdbeMemSetNull(u.cj.pDest);
    break;
  }
  u.cj.pVtab = pCur->pVtabCursor->pVtab;
  u.cj.pModule = u.cj.pVtab->pModule;
  assert( u.cj.pModule->xColumn );
  memset(&u.cj.sContext, 0, sizeof(u.cj.sContext));

  /* The output cell may already have a buffer allocated. Move
  ** the current contents to u.cj.sContext.s so in case the user-function
  ** can use the already allocated buffer instead of allocating a
  ** new one.
  */
  sqlite3VdbeMemMove(&u.cj.sContext.s, u.cj.pDest);
  MemSetTypeFlag(&u.cj.sContext.s, MEM_Null);

  if( sqlite3SafetyOff(db) ) goto abort_due_to_misuse;
  rc = u.cj.pModule->xColumn(pCur->pVtabCursor, &u.cj.sContext, pOp->p2);
  sqlite3DbFree(db, p->zErrMsg);
  p->zErrMsg = u.cj.pVtab->zErrMsg;
  u.cj.pVtab->zErrMsg = 0;
  if( u.cj.sContext.isError ){
    rc = u.cj.sContext.isError;
  }

  /* Copy the result of the function to the P3 register. We
  ** do this regardless of whether or not an error occurred to ensure any
  ** dynamic allocation in u.cj.sContext.s (a Mem struct) is  released.
  */
  sqlite3VdbeChangeEncoding(&u.cj.sContext.s, encoding);
  REGISTER_TRACE(pOp->p3, u.cj.pDest);
  sqlite3VdbeMemMove(u.cj.pDest, &u.cj.sContext.s);
  UPDATE_MAX_BLOBSIZE(u.cj.pDest);

  if( sqlite3SafetyOn(db) ){
    goto abort_due_to_misuse;
  }
  if( sqlite3VdbeMemTooBig(u.cj.pDest) ){
    goto too_big;
  }
  break;
}
#endif /* SQLITE_OMIT_VIRTUALTABLE */

#ifndef SQLITE_OMIT_VIRTUALTABLE
/* Opcode: VNext P1 P2 * * *
**
** Advance virtual table P1 to the next row in its result set and
** jump to instruction P2.  Or, if the virtual table has reached
** the end of its result set, then fall through to the next instruction.
*/
case OP_VNext: {   /* jump */
#if 0  /* local variables moved into u.ck */
  sqlite3_vtab *pVtab;
  const sqlite3_module *pModule;
  int res;
  VdbeCursor *pCur;
#endif /* local variables moved into u.ck */

  u.ck.res = 0;
  u.ck.pCur = p->apCsr[pOp->p1];
  assert( u.ck.pCur->pVtabCursor );
  if( u.ck.pCur->nullRow ){
    break;
  }
  u.ck.pVtab = u.ck.pCur->pVtabCursor->pVtab;
  u.ck.pModule = u.ck.pVtab->pModule;
  assert( u.ck.pModule->xNext );

  /* Invoke the xNext() method of the module. There is no way for the
  ** underlying implementation to return an error if one occurs during
  ** xNext(). Instead, if an error occurs, true is returned (indicating that
  ** data is available) and the error code returned when xColumn or
  ** some other method is next invoked on the save virtual table cursor.
  */
  if( sqlite3SafetyOff(db) ) goto abort_due_to_misuse;
  sqlite3VtabLock(u.ck.pVtab);
  p->inVtabMethod = 1;
  rc = u.ck.pModule->xNext(u.ck.pCur->pVtabCursor);
  p->inVtabMethod = 0;
  sqlite3DbFree(db, p->zErrMsg);
  p->zErrMsg = u.ck.pVtab->zErrMsg;
  u.ck.pVtab->zErrMsg = 0;
  sqlite3VtabUnlock(db, u.ck.pVtab);
  if( rc==SQLITE_OK ){
    u.ck.res = u.ck.pModule->xEof(u.ck.pCur->pVtabCursor);
  }
  if( sqlite3SafetyOn(db) ) goto abort_due_to_misuse;

  if( !u.ck.res ){
    /* If there is data, jump to P2 */
    pc = pOp->p2 - 1;
  }
  break;
}
#endif /* SQLITE_OMIT_VIRTUALTABLE */

#ifndef SQLITE_OMIT_VIRTUALTABLE
/* Opcode: VRename P1 * * P4 *
**
** P4 is a pointer to a virtual table object, an sqlite3_vtab structure.
** This opcode invokes the corresponding xRename method. The value
** in register P1 is passed as the zName argument to the xRename method.
*/
case OP_VRename: {
#if 0  /* local variables moved into u.cl */
  sqlite3_vtab *pVtab;
  Mem *pName;
#endif /* local variables moved into u.cl */

  u.cl.pVtab = pOp->p4.pVtab;
  u.cl.pName = &p->aMem[pOp->p1];
  assert( u.cl.pVtab->pModule->xRename );
  REGISTER_TRACE(pOp->p1, u.cl.pName);
  assert( u.cl.pName->flags & MEM_Str );
  if( sqlite3SafetyOff(db) ) goto abort_due_to_misuse;
  sqlite3VtabLock(u.cl.pVtab);
  rc = u.cl.pVtab->pModule->xRename(u.cl.pVtab, u.cl.pName->z);
  sqlite3DbFree(db, p->zErrMsg);
  p->zErrMsg = u.cl.pVtab->zErrMsg;
  u.cl.pVtab->zErrMsg = 0;
  sqlite3VtabUnlock(db, u.cl.pVtab);
  if( sqlite3SafetyOn(db) ) goto abort_due_to_misuse;

  break;
}
#endif

#ifndef SQLITE_OMIT_VIRTUALTABLE
/* Opcode: VUpdate P1 P2 P3 P4 *
**
** P4 is a pointer to a virtual table object, an sqlite3_vtab structure.
** This opcode invokes the corresponding xUpdate method. P2 values
** are contiguous memory cells starting at P3 to pass to the xUpdate 
** invocation. The value in register (P3+P2-1) corresponds to the 
** p2th element of the argv array passed to xUpdate.
**
** The xUpdate method will do a DELETE or an INSERT or both.
** The argv[0] element (which corresponds to memory cell P3)
** is the rowid of a row to delete.  If argv[0] is NULL then no 
** deletion occurs.  The argv[1] element is the rowid of the new 
** row.  This can be NULL to have the virtual table select the new 
** rowid for itself.  The subsequent elements in the array are 
** the values of columns in the new row.
**
** If P2==1 then no insert is performed.  argv[0] is the rowid of
** a row to delete.
**
** P1 is a boolean flag. If it is set to true and the xUpdate call
** is successful, then the value returned by sqlite3_last_insert_rowid() 
** is set to the value of the rowid for the row just inserted.
*/
case OP_VUpdate: {
#if 0  /* local variables moved into u.cm */
  sqlite3_vtab *pVtab;
  sqlite3_module *pModule;
  int nArg;
  int i;
  sqlite_int64 rowid;
  Mem **apArg;
  Mem *pX;
#endif /* local variables moved into u.cm */

  u.cm.pVtab = pOp->p4.pVtab;
  u.cm.pModule = (sqlite3_module *)u.cm.pVtab->pModule;
  u.cm.nArg = pOp->p2;
  assert( pOp->p4type==P4_VTAB );
  if( ALWAYS(u.cm.pModule->xUpdate) ){
    u.cm.apArg = p->apArg;
    u.cm.pX = &p->aMem[pOp->p3];
    for(u.cm.i=0; u.cm.i<u.cm.nArg; u.cm.i++){
      storeTypeInfo(u.cm.pX, 0);
      u.cm.apArg[u.cm.i] = u.cm.pX;
      u.cm.pX++;
    }
    if( sqlite3SafetyOff(db) ) goto abort_due_to_misuse;
    sqlite3VtabLock(u.cm.pVtab);
    rc = u.cm.pModule->xUpdate(u.cm.pVtab, u.cm.nArg, u.cm.apArg, &u.cm.rowid);
    sqlite3DbFree(db, p->zErrMsg);
    p->zErrMsg = u.cm.pVtab->zErrMsg;
    u.cm.pVtab->zErrMsg = 0;
    sqlite3VtabUnlock(db, u.cm.pVtab);
    if( sqlite3SafetyOn(db) ) goto abort_due_to_misuse;
    if( rc==SQLITE_OK && pOp->p1 ){
      assert( u.cm.nArg>1 && u.cm.apArg[0] && (u.cm.apArg[0]->flags&MEM_Null) );
      db->lastRowid = u.cm.rowid;
    }
    p->nChange++;
  }
  break;
}
#endif /* SQLITE_OMIT_VIRTUALTABLE */

#ifndef  SQLITE_OMIT_PAGER_PRAGMAS
/* Opcode: Pagecount P1 P2 * * *
**
** Write the current number of pages in database P1 to memory cell P2.
*/
case OP_Pagecount: {            /* out2-prerelease */
#if 0  /* local variables moved into u.cn */
  int p1;
  int nPage;
  Pager *pPager;
#endif /* local variables moved into u.cn */

  u.cn.p1 = pOp->p1;
  u.cn.pPager = sqlite3BtreePager(db->aDb[u.cn.p1].pBt);
  rc = sqlite3PagerPagecount(u.cn.pPager, &u.cn.nPage);
  /* OP_Pagecount is always called from within a read transaction.  The
  ** page count has already been successfully read and cached.  So the
  ** sqlite3PagerPagecount() call above cannot fail. */
  if( ALWAYS(rc==SQLITE_OK) ){
    pOut->flags = MEM_Int;
    pOut->u.i = u.cn.nPage;
  }
  break;
}
#endif

#ifndef SQLITE_OMIT_TRACE
/* Opcode: Trace * * * P4 *
**
** If tracing is enabled (by the sqlite3_trace()) interface, then
** the UTF-8 string contained in P4 is emitted on the trace callback.
*/
case OP_Trace: {
#if 0  /* local variables moved into u.co */
  char *zTrace;
#endif /* local variables moved into u.co */

  u.co.zTrace = (pOp->p4.z ? pOp->p4.z : p->zSql);
  if( u.co.zTrace ){
    if( db->xTrace ){
      db->xTrace(db->pTraceArg, u.co.zTrace);
    }
#ifdef SQLITE_DEBUG
    if( (db->flags & SQLITE_SqlTrace)!=0 ){
      sqlite3DebugPrintf("SQL-trace: %s\n", u.co.zTrace);
    }
#endif /* SQLITE_DEBUG */
  }
  break;
}
#endif


/* Opcode: Noop * * * * *
**
** Do nothing.  This instruction is often useful as a jump
** destination.
*/
/*
** The magic Explain opcode are only inserted when explain==2 (which
** is to say when the EXPLAIN QUERY PLAN syntax is used.)
** This opcode records information from the optimizer.  It is the
** the same as a no-op.  This opcodesnever appears in a real VM program.
*/
default: {          /* This is really OP_Noop and OP_Explain */
  break;
}

/*****************************************************************************
** The cases of the switch statement above this line should all be indented
** by 6 spaces.  But the left-most 6 spaces have been removed to improve the
** readability.  From this point on down, the normal indentation rules are
** restored.
*****************************************************************************/
    }

#ifdef VDBE_PROFILE
    {
      u64 elapsed = sqlite3Hwtime() - start;
      pOp->cycles += elapsed;
      pOp->cnt++;
#if 0
        fprintf(stdout, "%10llu ", elapsed);
        sqlite3VdbePrintOp(stdout, origPc, &p->aOp[origPc]);
#endif
    }
#endif

    /* The following code adds nothing to the actual functionality
    ** of the program.  It is only here for testing and debugging.
    ** On the other hand, it does burn CPU cycles every time through
    ** the evaluator loop.  So we can leave it out when NDEBUG is defined.
    */
#ifndef NDEBUG
    assert( pc>=-1 && pc<p->nOp );

#ifdef SQLITE_DEBUG
    if( p->trace ){
      if( rc!=0 ) fprintf(p->trace,"rc=%d\n",rc);
      if( opProperty & OPFLG_OUT2_PRERELEASE ){
        registerTrace(p->trace, pOp->p2, pOut);
      }
      if( opProperty & OPFLG_OUT3 ){
        registerTrace(p->trace, pOp->p3, pOut);
      }
    }
#endif  /* SQLITE_DEBUG */
#endif  /* NDEBUG */
  }  /* The end of the for(;;) loop the loops through opcodes */

  /* If we reach this point, it means that execution is finished with
  ** an error of some kind.
  */
vdbe_error_halt:
  assert( rc );
  p->rc = rc;
  sqlite3VdbeHalt(p);
  if( rc==SQLITE_IOERR_NOMEM ) db->mallocFailed = 1;
  rc = SQLITE_ERROR;

  /* This is the only way out of this procedure.  We have to
  ** release the mutexes on btrees that were acquired at the
  ** top. */
vdbe_return:
  sqlite3BtreeMutexArrayLeave(&p->aMutex);
  return rc;

  /* Jump to here if a string or blob larger than SQLITE_MAX_LENGTH
  ** is encountered.
  */
too_big:
  sqlite3SetString(&p->zErrMsg, db, "string or blob too big");
  rc = SQLITE_TOOBIG;
  goto vdbe_error_halt;

  /* Jump to here if a malloc() fails.
  */
no_mem:
  db->mallocFailed = 1;
  sqlite3SetString(&p->zErrMsg, db, "out of memory");
  rc = SQLITE_NOMEM;
  goto vdbe_error_halt;

  /* Jump to here for an SQLITE_MISUSE error.
  */
abort_due_to_misuse:
  rc = SQLITE_MISUSE;
  /* Fall thru into abort_due_to_error */

  /* Jump to here for any other kind of fatal error.  The "rc" variable
  ** should hold the error number.
  */
abort_due_to_error:
  assert( p->zErrMsg==0 );
  if( db->mallocFailed ) rc = SQLITE_NOMEM;
  if( rc!=SQLITE_IOERR_NOMEM ){
    sqlite3SetString(&p->zErrMsg, db, "%s", sqlite3ErrStr(rc));
  }
  goto vdbe_error_halt;

  /* Jump to here if the sqlite3_interrupt() API sets the interrupt
  ** flag.
  */
abort_due_to_interrupt:
  assert( db->u1.isInterrupted );
  rc = SQLITE_INTERRUPT;
  p->rc = rc;
  sqlite3SetString(&p->zErrMsg, db, "%s", sqlite3ErrStr(rc));
  goto vdbe_error_halt;
}