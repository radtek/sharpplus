{-----------------------------------------------------------------------------
 Unit Name: SPStrLib
 Author:    SharpPlus
 Purpose:
 BeginDate  2001-11-9
 History:
 2001-11-9
-----------------------------------------------------------------------------}
unit SPStrLib;

interface
uses Sysutils, Math, classes{$IFDEF CX_debug}, udbg{$ENDIF}, graphics;

function HasPrefix(Prefix, AStr: string): Boolean;
function RemoveAfterNum(S: string): string;
function MergeStringList(SrcList1, SrcList2: TStringList): TStringList;
function BlankStr(I: Integer): string;
function RemoveStr(SrcStr, DelStr: string): string;
function StrToBool(Str: string): Boolean;
function IsInt(Str: string): Boolean;
function IsFloat(Str: string): Boolean;
function SameString(const S1, S2: string): Boolean;
function MinimizeName(const Filename: TFileName; Canvas: TCanvas;
  MaxLen: Integer): TFileName;
procedure CutFirstDirectory(var S: TFileName);
function SwapString(SrcStr:string;BeginPos1, EndPos1, BeginPos2, EndPos2:integer):string;
function GetLineOfText(SrcStr:string;BeginLine, EndLine:Integer):string;
function LeftSpaceCount(S:string):Integer;
function MostLeftSpaceCount(S:string):Integer;
function LineCount(S:string):Integer;
function AppendStrAtPos(SrcStr, BeforeStr, AfterStr:string;BeforeX, AfterX:Integer):string;

function SpSplitLength(const Delimiter: Char; Input: string): Integer;

function LowCase(ch:Char):Char;
function GetDelimitedText(Strings:TStrings;Delimiter:Char):string;

implementation

function GetDelimitedText(Strings:TStrings;Delimiter:Char):string;
var
  I: Integer;
begin
  Result:='';
  for I := 0 to Strings.Count - 1 do
  begin
    Result:=Result+Strings[i];
    if I<(Strings.Count-1) then
      if Trim(Strings[i+1])<>EmptyStr then
        Result:=Result+Delimiter;
  end;
end;

function LowCase(ch:Char):Char;
{$IFDEF PUREPASCAL}
begin
  Result := ch;
  case Result of
    'A'..'Z':  Dec(Result, Ord('A') - Ord('a'));
  end;
end;
{$ELSE}
asm
{ ->    AL      Character       }
{ <-    AL      Result          }
        CMP     AL,'A'
        JB      @@exit
        CMP     AL,'Z'
        JA      @@exit
        SUB     AL,'A' - 'a'
@@exit:
end;
{$ENDIF}

function SpSplitLength(const Delimiter: Char; Input: string): Integer;
var
  OutStrings: TStrings;
begin
  OutStrings := TStringList.Create;
  try
    OutStrings.Delimiter := Delimiter;
    OutStrings.DelimitedText := Input;
    Result := OutStrings.Count;
  finally
    OutStrings.Free;
  end;
end;

function AppendStrAtPos(SrcStr, BeforeStr, AfterStr:string;BeforeX, AfterX:Integer):string;
begin
  Result:=SrcStr;
  Insert(AfterStr,Result, AfterX);
  Insert(BeforeStr, Result, BeforeX);
end;

function MostLeftSpaceCount(S:string):Integer;
var
  StrList:TStringList;
  I:Integer;
  Line:string;
  Count:Integer;
begin
  Result:=0;
  StrList:=TStringList.Create;
  try
    StrList.Text:=S;
    for I:=0 to StrList.Count-1 do
    begin
      Line:=StrList.Strings[I];
      Count:=LeftSpaceCount(Line);
      if Result=0 then
        Result:=Count;
      Result:=Min(Result, Count);
    end;
  finally
    StrList.Free;
  end;
end;

function LineCount(S:string):Integer;
var
  StrList:TStringList;
begin
  Result:=0;
  if S='' then Exit;
  StrList:=TStringList.Create;
  try
    StrList.Text:=S;
    Result:=StrList.Count;
  finally
    StrList.Free;
  end;
end;

function LeftSpaceCount(S:string):Integer;
begin
  Result:=Length(S)-Length(TrimLeft(S));
end;

function GetLineOfText(SrcStr:string;BeginLine, EndLine:Integer):string;
var
  StrList:TStringList;
  I:Integer;
begin
  Result:='';
  StrList:=TStringList.Create;
  try
    StrList.Text:=SrcStr;
    if BeginLine>StrList.Count then
      raise Exception.Create('BeginLine out of range');
    if EndLine>StrList.Count then
      raise Exception.Create('EndLine out of range');
{$IFDEF CX_Debug}
  Debugger.LogFmtMsg('BeginLine:%d EndLine:%d', [BeginLine, EndLine]);
{$ENDIF}
    for I:=BeginLine to EndLine do
    begin
      Result:=Result+ StrList.Strings[I];
    end;
  finally
    StrList.Free;
  end;
end;

function SwapString(SrcStr:string;BeginPos1, EndPos1, BeginPos2, EndPos2:integer):string;
var
  Sub1, Sub2:string;
  LeftStr,RightStr,MidStr:string;
begin
  Sub1:=copy(SrcStr, BeginPos1, EndPos1-BeginPos1);
  Sub2:=copy(SrcStr, BeginPos2, EndPos2-BeginPos2);
  LeftStr:=Copy(SrcStr, 1, BeginPos1-1);
  RightStr:=copy(SrcStr, EndPos2, Length(SrcStr)-EndPos2+1);
  MidStr:=copy(SrcStr, EndPos1, BeginPos2-EndPos1);
  result:=LeftStr+Sub2+MidStr+Sub1+RightStr;
end;

procedure CutFirstDirectory(var S: TFileName);
var
  Root: Boolean;
  P: Integer;
begin
  if S = '\' then
    S := ''
  else
  begin
    if S[1] = '\' then
    begin
      Root := True;
      Delete(S, 1, 1);
    end
    else
      Root := False;
    if S[1] = '.' then
      Delete(S, 1, 4);
    P := AnsiPos('\', S);
    if P <> 0 then
    begin
      Delete(S, 1, P);
      S := '...\' + S;
    end
    else
      S := '';
    if Root then
      S := '\' + S;
  end;
end;

function MinimizeName(const Filename: TFileName; Canvas: TCanvas;
  MaxLen: Integer): TFileName;
var
  Drive: TFileName;
  Dir: TFileName;
  Name: TFileName;
begin
  Result := FileName;
  Dir := ExtractFilePath(Result);
  Name := ExtractFileName(Result);

  if (Length(Dir) >= 2) and (Dir[2] = ':') then
  begin
    Drive := Copy(Dir, 1, 2);
    Delete(Dir, 1, 2);
  end
  else
    Drive := '';
  while ((Dir <> '') or (Drive <> '')) and (Canvas.TextWidth(Result) > MaxLen)
    do
  begin
    if Dir = '\...\' then
    begin
      Drive := '';
      Dir := '...\';
    end
    else if Dir = '' then
      Drive := ''
    else
      CutFirstDirectory(Dir);
    Result := Drive + Dir + Name;
  end;
end;

function SameString(const S1, S2: string): Boolean;
begin
  Result := (CompareText(S1, S2) = 0);
end;

function BlankStr(I: Integer): string;
var
  K: Integer;
begin
  Result := '';
  for K := 0 to I - 1 do
    Result := Result + ' ';
end;

function RemoveStr(SrcStr, DelStr: string): string;
begin
  Result := StringReplace(SrcStr, DelStr, '', [rfReplaceAll, rfIgnoreCase]);
end;

function HasPrefix(Prefix, AStr: string): Boolean;
begin
  Result := Pos(LowerCase(Prefix), LowerCase(AStr)) = 1;
end;

function RemoveAfterNum(S: string): string;
var
  I: Integer;
begin
  for I := Length(S) downto 1 do
  begin
    if StrToIntDef(S[I], -1) <> -1 then
      continue;
    result := Copy(S, 1, I);
    Exit;
  end;
end;

function MergeStringList(SrcList1, SrcList2: TStringList): TStringList;
var
  AList, AList2: TStringList;
  AName, AValue: string;
  I {, Index}: Integer;
begin
  AList := TStringList.Create;
  AList2 := TStringList.Create;
  AList.Assign(SrcList1);
  for I := 0 to SrcList2.Count - 1 do
  begin
    AName := SrcList2.Names[I];
    AValue := SrcList2.Values[AName];
    if AList.IndexOfName(AName) <> -1 then
      AList.Values[AName] := AValue
    else
      AList2.Add(SrcList2.Strings[I]);
  end;
  AList.Text := AList.Text + AList2.Text;
  Result := AList;
end;

function StrToBool(Str: string): Boolean;
begin
  Result := False;
  if UpperCase(Str) = 'TRUE' then
    Result := True
  else if UpperCase(Str) = 'FALSE' then
    Result := False
  else if Str='1' then
    Result:=true;
end;

function IsInt(Str: string): Boolean;
var
  E: Integer;
  AResult: Integer;
begin
  Result := False;
  if Pos('.', Str) = 0 then
  begin
    Val(Str, AResult, E);
    if E = 0 then
      Result := True;
  end;
end;

function IsFloat(Str: string): boolean;
begin
  Result := TextToFloat(PChar(Str), Result, fvExtended);
  if Result then
    if Pos('.', Str) = 0 then
      Result := False;
end;

end.
