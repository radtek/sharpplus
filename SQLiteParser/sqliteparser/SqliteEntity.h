#ifndef INC_SqliteEntity
#define INC_SqliteEntity
#include <boost/algorithm/string.hpp>
using namespace std;
using namespace boost;

enum Sqlite_Sql_Type
{
	sst_Unknown=0,
	sst_Select,
	sst_Insert,
	sst_Update,
	sst_Delete,
	sst_Pragma,
	sst_Explain,
	sst_PragmaSetting,
	sst_CreateTable,
	sst_CreateView,
	sst_CreateTrigger,
	sst_CreateIndex,
	sst_DropTable,
	sst_DropView,
	sst_DropTrigger,
	sst_DropIndex,
	sst_Vacuum,
	sst_RenameTable,
	sst_CreateTempTable,
	sst_CreateTempView,
	sst_CreateTempTrigger,
    sst_Transaction,
	sst_Replace,
	sst_CreateVirtualTable,
	sst_Attach,
	sst_Detach,
};

enum Sql_State
{
	ss_Unknown=0,
	ss_FromTable,
	ss_FromTableView,
	ss_FromView,
	ss_FromTrigger,
	ss_DropTable,
	ss_DropIndex,
	ss_Expression,
};

enum ConstraintType
{
	ctNotNull=0,
	ctPrimaryKey,
	ctUnique,
	ctCheck,
	ctDefault,
	ctCollate,
	ctReference,
	ctDefer
};

enum ConflictAlgorithm{
	caNone=0,
	caRollback,
	caAbort,
	caFail,
	caIgnore,
	caReplace
};

enum OrderType{
	otNone=-1,
	otAsc=0,
	otDesc=1
};

enum TriggerEvent{
	teNone=0,
	teBefore,
	teAfter,
	teInstead
};

enum DbEvent{
	deDelete=0,
	deInsert,
	deUpdate,
	deUpdateOf
};

enum ForType{
	ftNone=0,
	ftRow,
};

enum CaseType
{
	ctUpper=0,
	ctLower,
	ctFirstUpper,
	ctUnchange,
};

typedef struct _ColumnConstraint
{
	string szName;
	ConstraintType ctType;
	OrderType order;
    ConflictAlgorithm caConflict;
	bool bAutoIncre;
	string szExpr;
	string szValue;
	string szCollateName;
}ColumnConstraint;

typedef struct _ColumnDef
{
	string szName;
	string szType;
	int nTypeSize;
	int nTypePrecision;
	vector<ColumnConstraint> vConstraints;
} ColumnDef;


typedef struct _Constraint
{
    ConstraintType ctType;
	vector<string> ColumnList;
	ConflictAlgorithm caConflict;
	string szName;
	string szExpr;
}Constraint;

typedef struct _TableStruct
{
	string szTableName;
	bool bTemp;

	vector<ColumnDef> vColumns;
	vector<Constraint> vConstraints;
} CreateTableStruct;

typedef struct _VirtualTableStruct
{
	string szTableName;
	string szModule;
	string szParameters;
} CreateVirtualTableStruct;

typedef struct _ViewStruct
{
	string szViewName;
	string szSelectSql;
	bool bTemp;

} CreateViewStruct;

typedef struct _SyntaxCheckStruct
{
	string szHint;
	int iRow;
	int iBeginCol;
	int iEndCol;
} SyntaxCheckStruct;

typedef struct _TriggerStruct
{
	string szTriggerName;
	bool bTemp;
	TriggerEvent teEvent;
	DbEvent dbEvent;
	string szTarget;
	ForType ftStatement;
	string szStatement;
	vector<string> vColumns;
} CreateTriggerStruct;

typedef struct _ColumnNameStruct
{
	string szColumn;
	string szCollate;
	OrderType otOrder;
} ColumnNameStruct;

typedef struct _IndexStruct
{
	string szIndexName;
	bool IsUnique;
	string szTableName;
    vector<ColumnNameStruct> vColumns;
	ConflictAlgorithm caConflict;	
} CreateIndexStruct;

typedef struct _AlterStruct
{
	string szOldName;
	string szNewName;

} AlterStruct;

/*Structure Highlight Block*/
typedef struct _BlockMatchStruct
{
  int iKind;
  int iRow;
  int iBeginCol;
  int iEndCol;
} BlockMatchStruct;

typedef struct _AliasTable
{
	string szTable;
	string szAlias;
} AliasTable;

typedef struct _QueryAlias
{
  int iBeginRow;
  int iBeginCol;
  int iEndRow;
  int iEndCol;

  vector<AliasTable> vAlias;
} QueryAlias;

#endif
