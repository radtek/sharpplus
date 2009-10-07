unit SPRTTILib;
interface
uses Classes, TypInfo, Sysutils, contnrs;

procedure GetPropNames(AObject: TObject; var List: TStringList);

procedure CloneObject(SrcObj, DesObj: TPersistent);

procedure CloneObjectList(SrcObjList, DesObjList: TObjectList);

function InheritsFromClassName(Instance: TObject; const CName: string): Boolean;
//
function ParseProp(var AObj: TObject; var PropName: string): Boolean;

function GetVariantType(const v: variant): string;
function HasPublishedProp(AObj: TObject; PropName: string): Boolean;
function GetBoolProp(AObj: TObject; PropName: string): Boolean;

function CloneComponent(AComponent: TComponent ): TComponent;
implementation
uses Controls;

procedure CloneObjectList(SrcObjList, DesObjList: TObjectList);
var
  SrcObj, DesObj: TPersistent;
  I: Integer;
begin
  try
    if not Assigned(DesObjList) then
      raise Exception.Create('DesObjList can not be null');
    if not Assigned(SrcObjList) then
      raise Exception.Create('SrcObjList can not be null');
    DesObjList.Clear;
    for I := 0 to SrcObjList.Count - 1 do
    begin
      SrcObj := TPersistent(SrcObjList.Items[I]);
      DesObj := TPersistent(SrcObj.NewInstance);
      CloneObject(SrcObj, DesObj);
      DesObjList.Add(DesObj);
    end;
  except
  end;
end;

function GetBoolProp(AObj: TObject; PropName: string): Boolean;
var
  S: string;
begin
  S := UpperCase(GetEnumProp(AObj, PropName));
  if S = 'FALSE' then
    Result := false
  else if S = 'TRUE' then
    Result := True
  else
    raise Exception.Create(format('Get bool value from property %s failed', [PropName]));
end;

function HasPublishedProp(AObj: TObject; PropName: string): Boolean;
begin
  Result := GetPropInfo(AObj, PropName) <> nil;
end;

procedure GetPropNames(AObject: TObject; var List: TStringList);
var
  I, Count: Integer;
  PropList: PPropList;
  PKinds: TTypeKinds;
begin
  List.Clear;
  PKinds := [tkUnknown, tkInteger, tkChar, tkEnumeration, tkFloat,
    tkString, tkSet, tkClass, tkMethod, tkWChar, tkLString, tkWString,
    tkVariant, tkArray, tkRecord, tkInterface, tkInt64, tkDynArray, tkUString];

  Count := GetPropList(AObject.ClassInfo, PKinds, nil);
  GetMem(PropList, Count * SizeOf(Pointer));
  GetPropList(AObject.ClassInfo, PKinds, PropList);
  for I := 0 to Count - 1 do
    List.Add(PropList^[i].Name);
  FreeMem(PropList, Count * SizeOf(Pointer));
end;

procedure CloneObject(SrcObj, DesObj: TPersistent);
var
  NameList: TStringList;
  I: Integer;
  V: Variant;
  PropInfo: PPropInfo;
  ref:Integer;
begin
  if SrcObj.ClassName <> SrcObj.ClassName then
    raise Exception.Create('Source Object does not have the same type of Dest Object');
  if (not Assigned(SrcObj)) or (not Assigned(DesObj)) then
    raise Exception.Create('Source or DestObject can not be nil');

  NameList := TStringList.Create;
  GetPropNames(SrcObj, NameList);
  try
    for I := 0 to NameList.Count - 1 do
    begin
      // get the prop info
      PropInfo := GetPropInfo(SrcObj, NameList.Strings[I]);
      if PropInfo = nil then
         raise Exception.CreateFmt('Can not find the %s property', [NameList.Strings[I]]);
      if PropInfo^.PropType^^.Kind =tkClass then
      begin
        ref := GetOrdProp(SrcObj, PropInfo);
        SetOrdProp(DesObj,NameList.Strings[I], ref);
      end
      else
      begin
        V := GetPropValue(SrcObj, NameList.Strings[I]);
        SetPropValue(DesObj, NameList.Strings[I], V);
      end;
    end;
  finally
    NameList.Free;
  end;
end;

function InheritsFromClassName(Instance: TObject; const CName: string): boolean;
var
  c: TClass;
begin
  result := Instance <> nil;
  if not result then
    exit;

  c := Instance.ClassType;

  repeat
    if CompareText(c.ClassName, CName) = 0 then
      exit;
    c := c.ClassParent
  until c = nil;

  result := false;
end;

function ParseProp(var AObj: TObject; var PropName: string): Boolean;
var
  Index: Integer;
  ObjName: string;
begin
  Result := false;
  Index := Pos('.', PropName);
  if Index = 0 then
  begin
    Result := True;
  end
  else
  begin
    ObjName := Copy(PropName, 0, Index - 1);
    PropName := Copy(PropName, Index + 1, Length(PropName) - Index);
    AObj := GetObjectProp(AObj, ObjName);
    if AObj = nil then
      Exit; 
    Result := ParseProp(AObj, PropName);
  end;
end;

function GetVariantType(const v: variant): string;
begin
  case TVarData(v).vType of
    varEmpty: result := 'Empty';
    varNull: result := 'Null';
    varSmallInt: result := 'SmallInt';
    varInteger: result := 'Integer';
    varSingle: result := 'Single';
    varDouble: result := 'Double';
    varCurrency: result := 'Currency';
    varDate: result := 'Date';
    varOleStr: result := 'OleStr';
    varDispatch: result := 'Dispatch';
    varError: result := 'Error';
    varBoolean: result := 'Boolean';
    varVariant: result := 'Variant';
    varUnknown: result := 'Unknown';
    varByte: result := 'Byte';
    varString: result := 'String';
    varTypeMask: result := 'TypeMask';
    varArray: result := 'Array';
    varByRef: result := 'ByRef';
  end; // case
end;

type
  TUniqueReader = class(TReader)
    LastRead: TComponent;
    procedure ComponentRead(Component: TComponent);
    procedure SetNameUnique(Reader: TReader; Component: TComponent;var Name: string );
  end;


procedure TUniqueReader.ComponentRead(Component: TComponent);
begin
  LastRead := Component;
end;

procedure TUniqueReader.SetNameUnique(
  // sets the name of the read
  //component to something like "Panel2" if "Panel1" already exists
  Reader: TReader;
  Component: TComponent; // component being read
  var Name: string // Name to use and modify
  );
var
  i: Integer;
  tempname: string;
begin
  i := 0;
  tempname := Name;
  while Component.Owner.FindComponent(Name) <> nil do
  begin
    Inc(i);
    Name := Format('%s%d', [tempname, i]);
  end;
end;

function CloneComponent(AComponent: TComponent ): TComponent;
  procedure RegisterComponentClasses(AComponent: TComponent);
  var
    i: integer;
  begin
    RegisterClass(TPersistentClass(AComponent.ClassType));
    if AComponent is TWinControl then
      if TWinControl(AComponent).ControlCount > 0 then
        for i := 0 to (TWinControl(AComponent).ControlCount - 1) do
          RegisterComponentClasses(TWinControl(AComponent).Controls[i]);
  end;
var
  Stream: TMemoryStream;
  UniqueReader: TUniqueReader;
  Writer: TWriter;
begin
  result := nil;
  UniqueReader := nil;
  Writer := nil;

  try
    Stream := TMemoryStream.Create;
    RegisterComponentClasses(AComponent);

    try
      Writer := TWriter.Create(Stream, 4096);
      Writer.Root := AComponent.Owner;
      Writer.WriteSignature;
      Writer.WriteComponent(AComponent);
      Writer.WriteListEnd;
    finally
      Writer.Free;
    end;

    Stream.Position := 0;
    try
      UniqueReader := TUniqueReader.Create(Stream, 4096); // create reader
      // should probably move these routines into theconstructor
      UniqueReader.OnSetName := UniqueReader.SetNameUnique;
      UniqueReader.LastRead := nil;

      if AComponent is TWinControl then
        UniqueReader.ReadComponents(// read in components and sub-components
          TWinControl(AComponent).Owner, TWinControl(AComponent).Parent,
          UniqueReader.ComponentRead)
      else
        UniqueReader.ReadComponents(// read in components
          AComponent.Owner, nil, UniqueReader.ComponentRead);
      result := UniqueReader.LastRead;
    finally
      UniqueReader.Free;
    end;
  finally
    Stream.Free;
  end;
end;
end.

