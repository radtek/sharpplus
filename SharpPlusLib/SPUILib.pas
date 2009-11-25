{-----------------------------------------------------------------------------
 Unit Name: SPUILib
 Purpose:   
 BeginDate  2001-12-11
 History:
-----------------------------------------------------------------------------}
unit SPUILib;

interface
uses Controls, Windows, ActnList, Sysutils, Stdctrls, Forms, Menus;

type
  THack = class(TCustomControl);

procedure MergeForm(AControl: TWinControl; AForm: TForm; Align: TAlign;
  Show: Boolean = True);
function GetMenuItemByName(MainMenu: TMenu; Name: string): TMenuItem; overload;
function GetMenuItemByTag(MainMenu: TMenu; Tag: Integer): TMenuItem;
function GetMenuItemByName(ParentMenu: TMenuItem; Name: string): TMenuItem;
overload;
function AddSepeartorToMenu(ParentMenu:TMenuItem; MenuName:string):TMenuItem;
procedure FreeSubMenus(ParentMenu:TMenuItem);
function GetActionByName(ActionList: TCustomActionList; Name: string): TAction;
function FindFormByClass(FormClass: TFormClass): TForm;
function ShowForm(AForm: TFormClass): TModalResult;
procedure FreeAction(Action:TAction);
function MenuItemIsSeparator(Item: TMenuItem): Boolean;
function ConfirmDlg(Text:string):Boolean;
procedure MsgDlg(Text:string);
//ErrorDlg
procedure ErrorDlg(Text:string);

procedure ShowFormModalLess(AForm: TFormClass);
procedure ShowOneForm(AForm:TFormClass);

implementation

function ConfirmDlg(Text:string):Boolean;
begin
  Result:=Application.MessageBox(PChar(Text),'Warning',MB_YESNO or MB_ICONQUESTION)=mrYes;
end;

procedure MsgDlg(Text:string);
begin
  Application.MessageBox(PChar(Text),'Information', MB_OK or MB_ICONINFORMATION);
end;

procedure ErrorDlg(Text:string);
begin
  Application.MessageBox(PChar(Text),'Error', MB_OK or MB_ICONERROR);
end;

function MenuItemIsSeparator(Item: TMenuItem): boolean;
begin
  Result := Item.IsLine;
end;

procedure FreeSubMenus(ParentMenu:TMenuItem);
var
  I:integer;
  SubMenu:TMenuItem;
begin
  for I:=ParentMenu.Count-1 downto 0 do
  begin
    SubMenu:=ParentMenu.Items[I];
    if Assigned(SubMenu.Action) then
    begin
      TAction(SubMenu.Action).ActionList :=nil;
      SubMenu.Action.Free;
      SubMenu.Action:=nil;
    end;
    ParentMenu.Delete(I);
    FreeAndNil(SubMenu);
  end;
end;

procedure FreeAction(Action:TAction);
begin
  Action.ActionList:=nil;
  FreeAndNil(Action);
end;

procedure InsertTextToMemo(Memo:TMemo; S:string);
var
  AText:string;
  Start:Integer;
begin
  Memo.ClearSelection;
  AText:=Memo.Lines.Text;
  Start:=Memo.SelStart;
  Insert(S, AText, Start+1);
  Memo.Lines.Text:=AText;
  Memo.SelStart:=Start+Length(S);
end;

function AddSepeartorToMenu(ParentMenu:TMenuItem; MenuName:string):TMenuItem;
begin
  Result:=nil;
  if Assigned(GetMenuItemByname(ParentMenu, MenuName)) then Exit;
  Result:=TMenuItem.Create(ParentMenu);
  Result.Caption:='-';
  Result.Name:=MenuName;
  ParentMenu.Add(Result);
end;

function FindFormByClass(FormClass: TFormClass): TForm;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[I] is FormClass then
    begin
      Result := Screen.Forms[I];
      Break;
    end;
  end;
end;

procedure MergeForm(AControl: TWinControl; AForm: TForm; Align: TAlign;
  Show: Boolean);
var
  R: TRect;
  AutoScroll: Boolean;
begin
  AutoScroll := AForm.AutoScroll;
  AForm.Hide;
  THack(AForm).DestroyHandle;
  with AForm do
  begin
    BorderStyle := bsNone;
    BorderIcons := [];
    Parent := AControl;
  end;
  AControl.DisableAlign;
  try
    if Align <> alNone then
      AForm.Align := Align
    else
    begin
      R := AControl.ClientRect;
      AForm.SetBounds(R.Left + AForm.Left, R.Top + AForm.Top, AForm.Width,
        AForm.Height);
    end;
    AForm.AutoScroll := AutoScroll;
    AForm.Visible := Show;
  finally
    AControl.EnableAlign;
  end;
end;

function GetMenuItemByName(MainMenu: TMenu; Name: string): TMenuItem;
var
  J: Integer;
begin
  Result := nil;
  if Assigned(MainMenu) then
  begin
    for J := 0 to MainMenu.Items.Count - 1 do
    begin
      if MainMenu.Items.Items[J].Name = Name then
      begin
        result := MainMenu.Items.Items[J];
        Break;
      end;
    end;
  end;
end;

function GetMenuItemByTag(MainMenu: TMenu; Tag: Integer): TMenuItem;
var
  J: Integer;
begin
  Result := nil;
  if Assigned(MainMenu) then
  begin
    for J := 0 to MainMenu.Items.Count - 1 do
    begin
      if MainMenu.Items.Items[J].Tag = Tag then
      begin
        result := MainMenu.Items.Items[J];
        Break;
      end;
    end;
  end;
end;

function GetMenuItemByName(ParentMenu: TMenuItem; Name: string): TMenuItem;
  overload;
var
  J: Integer;
begin
  Result := nil;
  if Assigned(ParentMenu) then
  begin
    for J := 0 to ParentMenu.Count - 1 do
    begin
      if ParentMenu.Items[J].Name = Name then
      begin
        result := ParentMenu.Items[J];
        Break;
      end;
    end;
  end;
end;

function GetActionByName(ActionList: TCustomActionList; Name: string): TAction;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to ActionList.ActionCount - 1 do
  begin
    if ActionList.Actions[I].Name = Name then
    begin
      Result := TAction(ActionList.Actions[I]);
      Break;
    end;
  end;
end;

function ShowForm(AForm: TFormClass): TModalResult;
var
  FormInstance: TForm;
begin
  FormInstance := AForm.Create(Application);
  try
    Result := FormInstance.ShowModal;
  finally
    FormInstance.Free;
  end;
end;

procedure ShowFormModalLess(AForm: TFormClass);
var
  FormInstance: TForm;
begin
  FormInstance := AForm.Create(Application);
  FormInstance.Show;
end;

procedure ShowOneForm(AForm:TFormClass);
var
  I:Integer;
begin
  for I:=0 to Screen.FormCount-1 do
  begin
    if Screen.Forms[I] is AForm then
    begin
      Screen.Forms[I].BringToFront;
      Exit;
    end;
  end;

  ShowFormModalLess(AForm);
end;

end.
