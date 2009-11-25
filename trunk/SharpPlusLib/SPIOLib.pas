
unit SPIOLib;
interface
uses windows, Sysutils, Classes;
type
  TSpVersionInfo = class
  private
    function getComments: string;
    function getCompanyName: string;
    function getFileDescription: string;
    function getFileVersion: string;
    function getInternalName: string;
    function getLegalCopyright: string;
    function getLegalTrademarks: string;
    function getProductName: string;
    function getProductVersion: string;
    function getOriginalFilename: string;
  { Private declarations }
  protected
    VIHandle: DWORD;
    VSize: DWORD;
    VData: Pointer;
    VVers: Pointer;
    Len: UINT;
    prefix: string;
  public
    constructor create(FileName: string); 
    destructor destroy; override;
  published
    property CompanyName: string read getCompanyName;
    property FileDescription: string read getFileDescription;
    property FileVersion: string read getFileVersion;
    property InternalName: string read getInternalName;
    property LegalCopyright: string read getLegalCopyright;
    property LegalTrademarks: string read getLegalTrademarks;
    property OriginalFilename: string read getOriginalFilename;
    property ProductName: string read getProductName;
    property ProductVersion: string read getProductVersion;
    property Comments: string read getComments;
    function value(name: string): string;
  { Published declarations }
  end;

function GetDllName: string;

procedure CreateRegKeyValue(Root: DWORD; const Key, ValueName, Value: string);

procedure DeleteRegKeyValue(Root: DWORD; Key: string; ValueName: string = '');

procedure GetExeIconResNames(ExeName: TFileName; ResNames: TStrings);
function IsIntResource(ResName: PAnsiChar): Boolean;
function ResToID(ResName: PChar): Integer;

function SpGetFileVersion(FileName: string): string;

function SpGetFileDateTimeModified(const FileName: string;
                                       var yyyy,mm,dd,h,m,s: Word):Boolean;
//
//FileName:C:\abc.txt
//Result:abc                                        
function ExtractFileBaseName(FileName:string): string;


function GetAbsolutePath(BasePath, RelativePath:string):string;
function GetFileSize(AFile: string):Integer;
Function SpFileSize(FileName : String) : Int64;
Function SpFileSize2(FileName : String) : Int64;

function GetShortName(sLongName:string):String;
procedure ExploreDir(APath: string; ShowDir: Boolean = True);
procedure ExploreFile(AFile: string; ShowDir: Boolean = True);
implementation
uses ComObj, ComConst, dialogs;

function PathCombine(lpszDest: PChar; const lpszDir, lpszFile: PChar):
PChar; stdcall; external 'shlwapi.dll' name 'PathCombineA';
function PathCombineA(lpszDest: PAnsiChar; const lpszDir, lpszFile:
PAnsiChar): PAnsiChar; stdcall; external 'shlwapi.dll';
function PathCombineW(lpszDest: PWideChar; const lpszDir, lpszFile:
PWideChar): PWideChar; stdcall; external 'shlwapi.dll';

procedure ExploreDir(APath: string; ShowDir: Boolean);
var
  strExecute: AnsiString;
begin
  if not ShowDir then
    strExecute := AnsiString(Format('EXPLORER.EXE "%s"', [APath]))
  else
    strExecute := AnsiString(Format('EXPLORER.EXE /e, "%s"', [APath]));
  WinExec(PAnsiChar(strExecute), SW_SHOWNORMAL);
end;

procedure ExploreFile(AFile: string; ShowDir: Boolean);
var
  strExecute: AnsiString;
begin
  if not ShowDir then
    strExecute := AnsiString(Format('EXPLORER.EXE /select, "%s"', [AFile]))
  else
    strExecute := AnsiString(Format('EXPLORER.EXE /e, /select, "%s"', [AFile]));
  WinExec(PAnsiChar(strExecute), SW_SHOWNORMAL);
end;

function GetShortName(sLongName: string): string;
var
  sShortName:    string;
  nShortNameLen: Integer;
begin
  SetLength(sShortName, MAX_PATH);
  nShortNameLen := GetShortPathName(PChar(sLongName), PChar(sShortName), MAX_PATH - 1);
  if (0 = nShortNameLen) then
  begin
    // handle errors...
  end;
  SetLength(sShortName, nShortNameLen);
  Result := sShortName;
end;

Function SpFileSize(FileName : String) : Int64;
var
  SearchRec : TSearchRec;
begin
  if FindFirst(FileName, faAnyFile, SearchRec ) = 0 then                  // if found
     Result := Int64(SearchRec.FindData.nFileSizeHigh) shl Int64(32) +    // calculate the size
               Int64(SearchREc.FindData.nFileSizeLow)
  else
     Result := 0;
  FindClose(SearchRec);                                                   // close the find
end;

Function SpFileSize2(FileName : String) : Int64;
var
  st:TFileStream;
begin
  st:=TFileStream.Create(FileName, fmOpenRead or fmShareCompat);
  try
    Result:=st.Size;
  finally
    st.Free;
  end;
end;

function GetAbsolutePath(BasePath, RelativePath:string):string;
var
  Dest:array [0..MAX_PATH] of char;
begin
  FillChar(Dest,MAX_PATH+1,0);
  PathCombine(Dest,PChar(BasePath), PChar(RelativePath));
  Result:=string(Dest);
end;
function GetFileSize(AFile: string):Integer;
var
  SearchRec: TSearchRec;
  sgPath: string;
  inRetval: Integer;
begin
  Result:=0;

  sgPath := ExpandFileName(AFile);
  try
    inRetval := FindFirst(ExpandFileName(AFile), faAnyFile, SearchRec);
    if inRetval = 0 then
      Result := SearchRec.Size
  finally
    SysUtils.FindClose(SearchRec);
  end;
end;

function ExtractFileBaseName(FileName:string): string;
var
  BaseFileExt: string;
  BaseFileName: string;
begin
  BaseFileName:=ExtractFileName(FileName);
  BaseFileExt:=ExtractFileExt(FileName);
  Result:=StringReplace(BaseFileName, BaseFileExt, '', [rfIgnoreCase]);
end;

function SpGetFileDateTimeModified(const FileName: string;
                                       var yyyy,mm,dd,h,m,s: word):boolean;
var
  dt,tm: word;
  DateTime: integer;
begin
  result := false;

  DateTime := FileAge(FileName);
  if DateTime = -1 then exit else result := true;
  
  tm := DateTime and $FFFF; {lower word}
  dt := DateTime shr 16; {upper word}

  h := tm shr 11;
  m := (tm shr 5) and $3F;
  s := (tm and $1F) * 2;

  dd := dt and $1F;
  mm := (dt shr 5) and $F;
  yyyy := (dt shr 9)+1980;
end;

function SpGetFileVersion(FileName: string): string;
var
  FileInfo:TSpVersionInfo;
begin
  Result := '';
  FileInfo:=TSpVersionInfo.Create(FileName);
  try
    Result:=FileInfo.FileVersion;
  finally
    FileInfo.Free;
  end;
end;

function EnumResourceNamesCallback(hModule: HMODULE; lpType, lpName: PAnsiChar;
  lParam: Longint): BOOL; stdcall;
var
  S: TStrings;
begin
  S := TStrings(lParam);
  if IsIntResource(lpName) then
    S.Add(format('%d', [word(lpName)]))
  else
    S.Add(Format('%s', [lpname]));
  Result := True;
end;

function ResToID(ResName: PChar): Integer;
begin
  Result := Word(ResName);
end;

function IsIntResource(ResName: PAnsiChar): Boolean;
begin
  Result := (ulong(ResName) and $FFFF0000) = 0;
end;

procedure GetExeIconResNames(ExeName: TFileName; ResNames: TStrings);
var
  AInstance: THandle;
begin
  Assert(ResNames <> nil);
  ResNames.Clear;
  AInstance := LoadLibraryEx(PChar(ExeName), 0, LOAD_LIBRARY_AS_DATAFILE);
  if AInstance <= 31 then
    raise Exception.Create('Can not load exename library');
  try
    EnumResourceNames(AInstance, {RT_STRING} RT_Group_ICON,
      @EnumResourceNamesCallback, Integer(Pointer(ResNames)));
  finally
    FreeLibrary(AInstance);
  end;
end;

procedure DeleteRegKeyValue(Root: DWORD; Key: string; ValueName: string = '');
var
  KeyHandle: HKEY;
begin
  if ValueName = '' then
    RegDeleteKey(Root, PChar(Key));
  if RegOpenKey(Root, PChar(Key), KeyHandle) = ERROR_SUCCESS then
  try
    RegDeleteValue(KeyHandle, PChar(ValueName));
  finally
    RegCloseKey(KeyHandle);
  end;
end;

procedure CreateRegKeyValue(Root: DWORD; const Key, ValueName, Value: string);
var
  Handle: HKey;
  Status, Disposition: Integer;
begin
  Status := RegCreateKeyEx(ROOT, PChar(Key), 0, '',
    REG_OPTION_NON_VOLATILE, KEY_READ or KEY_WRITE, nil, Handle,
    @Disposition);
  if Status = 0 then
  begin
    Status := RegSetValueEx(Handle, PChar(ValueName), 0, REG_SZ,
      PChar(Value), Length(Value) + 1);
    RegCloseKey(Handle);
  end;
  if Status <> 0 then
    raise EOleRegistrationError.CreateRes(@SCreateRegKeyError);

end;

function GetDllName: string;
var
  Buffer: array[0..261] of Char;
begin
  GetModuleFileName(HInstance, Buffer, SizeOf(Buffer));
  Result := string(Buffer);
end;

{ TVersionInfo }

constructor TSpVersionInfo.create(FileName: string);
begin
  Prefix := '\StringFileInfo\040904E4\'; { Prejudiced to U.S. character set }

  VSize := GetFileVersionInfoSize(PChar(FileName), VIHandle);
  if VSize <> 0 then
  begin
    GetMem(VData, VSize);
    GetFileVersionInfo(pChar(ParamStr(0)), VIHandle, VSize, VData);
  end;
end;

destructor TSpVersionInfo.destroy;
begin
  FreeMem(VData, VSize);
  inherited;
end;

function TSpVersionInfo.getComments: string;
begin
  result := value('Comments');
end;

function TSpVersionInfo.getCompanyName: string;
begin
  result := value('CompanyName');
end;

function TSpVersionInfo.getFileDescription: string;
begin
  result := value('FileDescription');
end;

function TSpVersionInfo.getFileVersion: string;
begin
  result := value('FileVersion');
end;

function TSpVersionInfo.getInternalName: string;
begin
  result := value('InternalName');
end;

function TSpVersionInfo.getLegalCopyright: string;
begin
  result := value('LegalCopyright');
end;

function TSpVersionInfo.getLegalTrademarks: string;
begin
  result := value('LegalTrademarks');
end;

function TSpVersionInfo.getOriginalFilename: string;
begin
  result := value('OriginalFilename');
end;

function TSpVersionInfo.getProductName: string;
begin
  result := value('ProductName');
end;

function TSpVersionInfo.getProductVersion: string;
begin
  result := value('ProductVersion');
end;


function TSpVersionInfo.value(name: string): string;
var
  ItemName: string;
begin
  ItemName := Prefix + name;
  Result := '';
  if VerQueryValue(VData, pChar(itemName), VVers, Len) then
    if Len > 0 then
    begin
      setLength(Result, Len-1);
      Move(VVers^, Result[1], Len-1);
    end;
end;

end.

