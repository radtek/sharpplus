
unit SPShellLib;

interface
uses ShlObj, Controls, windows, ComObj, Sysutils, ShellApi, dialogs,
  shdocvw, Forms, Graphics, Classes;

type
  TSpecialFolder = (sfApplicationData = $1A,
    sfCommonApplicationData = $23,
    sfCommonProgramFiles = $2B,
    sfCookies = $21,
    sfDesktop = 0,
    sfDesktopDirectory = $10,
    sfFavorites = 6,
    sfHistory = $22,
    sfInternetCache = $20,
    sfLocalApplicationData = $1C,
    sfMyComputer = $11,
    sfMyMusic = 13,
    sfMyPictures = $27,
    sfPersonal = 5,
    sfProgramFiles = $26,
    sfPrograms = 2,
    sfRecent = 8,
    sfSendTo = 9,
    sfStartMenu = 11,
    sfStartup = 7,
    sfSystem = $25,
    sfTemplates = $15
    );
  TCXPickIconDialog = class(TComponent)
  public {Constructors/Destructors}
    constructor Create(AOwner: TComponent); override;
  private
    FFileName: TFileName;
    FIconIndex: DWORD;
  public {Public methods}
    function Execute: Boolean;
  published
    property FileName: TFileName read FFileName write FFileName;
    property IconIndex: DWORD read FIconIndex write FIconIndex default 0;
  end;
//œ‘ æÃ·»°Õº±ÅEƒΩÁ√Ê£¨∑µªÿŒƒº˛√˚≥∆º∞Õº±ÅE˜“˝÷µ
function GetIconAndIndex(FileName:string):string;
function  PickIconDlg(Owner: HWND; FileName: Pointer; MaxFileNameChars: DWORD;
                  var IconIndex: DWORD): LongBool; stdcall;
procedure SetSysImageList(var ImageList: TImageList);

function IsWMIAvailable: Boolean;
function GetSpecialFolder(Folder:TSpecialFolder):string;

procedure CreateLink(const PathObj, PathLink, IconLocation,WorkingDir,Desc, Param: string;ShowCmd, IconIndex:Integer);
implementation
uses SPIOLib, SPStrLib, SHFolder, ActiveX;
const
  PickIconDlg_Index                = 62;
procedure CreateLink(const PathObj, PathLink, IconLocation,WorkingDir,Desc, Param: string;ShowCmd, IconIndex:Integer);
var
  IObject: IUnknown;
  SLink: IShellLink;
  PFile: IPersistFile;
begin
  IObject:=CreateComObject(CLSID_ShellLink);
  SLink:=IObject as IShellLink;
  PFile:=IObject as IPersistFile;
  with SLink do
  begin
    SetArguments(PChar(Param));
    SetDescription(PChar(Desc));
    SetPath(PChar(PathObj));
    SetShowCmd(ShowCmd);
    SetIconLocation(PChar(IconLocation),IconIndex);
    SetWorkingDirectory(PChar(WorkingDir));
  end;
  PFile.Save(PWChar(WideString(PathLink)), FALSE);
end;
  
function IsWMIAvailable: Boolean;
var
  sFolder: string;
begin
  sFolder:=GetSpecialFolder(sfSystem)+ 'WBEM';
  Result := DirectoryExists(sFolder);
end;

function GetSpecialFolder(Folder:TSpecialFolder):string;
var
  pFolder: array[0..4096 - 1] of char;
begin
  SHGetFolderPath(0, Ord(Folder), 0, 0, pFolder);
  Result:=string(pFolder)+'\';
end;

//Todo:º”…œÀ˜“˝
function GetIconAndIndex(FileName:string):string;
var
  Dialog:TCXPickIconDialog;
  ResourceNames:TStrings;
  ResName:string;
begin
  Result:='';
  Dialog:=TCXPickIconDialog.Create(nil);
  try
    Dialog.FileName:=FileName;
    if Dialog.Execute then
    begin
      //Result:=Format('%s, %d', [Dialog.FileName, Dialog.IconIndex]);
      //∏˘æ›IconIndexªÒµ√∂‘”¶resource identifier
      ResourceNames:=TStringList.Create;
      try
        GetExeIconResNames(Dialog.FileName, ResourceNames);
        ResName:=ResourceNames.Strings[Dialog.IconIndex];
        if not isInt(ResName) then
          raise Exception.Create('selected icon has not resource identifier')
        else
          //note:∂∫∫≈÷Æº‰≤ªƒ‹”–ø’∏ÅE
          Result:=Format('%s,%s',[Dialog.FileName, ResName]);
      finally
        ResourceNames.Free;
      end;
    end;
  finally
    Dialog.Free;
  end;
end;

function  PickIconDlg;             external Shell32  index PickIconDlg_Index;
procedure SetSysImageList(var ImageList: TImageList);
var
  SysIL: THandle;
  SFI: TSHFILEINFO;
begin
  Assert(ImageList <> nil);
  SysIL := SHGetFileInfo('', 0, SFI, SizeOf(SFI), SHGFI_SYSICONINDEX or
    SHGFI_SMALLICON);
  if SysIL <> 0 then
  begin
    ImageList.ShareImages := True;
    ImageList.Handle := SysIL;
  end;
end;

{ TCXPickIconDialog }

constructor TCXPickIconDialog.Create(AOwner: TComponent);
begin
  inherited;

  {Initialize simple-type properties.}
  FFileName := '';
  FIconIndex := 0;
end;

function TCXPickIconDialog.Execute: Boolean;
var
  FileNameBuffer: PChar;
begin
  {Allocate a suitably sized PWideChar buffer and transliterate the
   initial filename into the buffer.}
  GetMem(FileNameBuffer, MAX_PATH * SizeOf(Char));
  try {..finally}
    StringToWideChar(Self.FileName, FileNameBuffer, MAX_PATH + 1);

    {Call the dialog and use the return value as the function result.}
    Result := PickIconDlg(Application.Handle, FileNameBuffer, MAX_PATH,
      Self.FIconIndex);

    {If function was successful, transliterate the returned filename back to a string.}
    if (Result) then
    begin
      Self.FileName := WideCharToString(FileNameBuffer);
    end; {if}

    {Ensure the buffer is freed.}
  finally
    FreeMem(FileNameBuffer);
  end; {try..finally}
end;

end.

