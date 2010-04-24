{-----------------------------------------------------------------------------
 Unit Name: SPSysLib
 Purpose:
 BeginDate: 2002-5-11
 History:
-----------------------------------------------------------------------------}


unit SPSysLib;

interface
uses Forms, Windows;

procedure OpenUrl(Url:string);
procedure SPOpenFile(AFile:string);
procedure SPSetCurrentThreadName(const Name: string);
Procedure RegisterFiletype( Const extension, filetype, description,
             verb, serverapp: String );
procedure RemoveFileType(const extension:string);

implementation
uses ShellApi, Registry, SysUtils;
Type
  ERegistryError = Class(Exception);
ResourceString
  eCannotCreateKey =
    'Cannot create key %s, the user account may not have the required '+
    'rights to create registry keys under HKEY_CLASSES_ROOT.';

procedure SPSetCurrentThreadName(const Name: string);
type
  TThreadNameInfo =
    record
      RecType: LongWord;
      Name: PChar;
      ThreadID: LongWord;
      Flags: LongWord;
    end;
var
  info:TThreadNameInfo;
begin
  // This code is extremely strange, but it's the documented way of doing it!
  info.RecType:=$1000;
  info.Name:=PChar(Name);
  info.ThreadID:=$FFFFFFFF;
  info.Flags:=0;
  try
    RaiseException($406D1388, 0, 
      SizeOf(info) div SizeOf(LongWord), PDWord(@info));
  except
  end;
end;

procedure OpenUrl(Url:string);
begin
  ShellExecute(0, 'open', PChar(Url),nil,nil,SW_NORMAL);
end;

procedure SPOpenFile(AFile:string);
begin
  ShellExecute(0, 'open', PChar(AFile), nil, nil, SW_NORMAL);
end;

{+------------------------------------------------------------
 | Procedure CreateKey
 |
 | Description:
 |   This is a helper routine which uses the passed reg object
 |   to create a registry key.
 | Error Conditions:
 |   If the key cannot be created a ERegistryError exception is
 |   raised.
 | Created: 14.03.99 by P. Below
 +------------------------------------------------------------}
Procedure CreateKey( reg: TRegistry; Const keyname: String );
Begin
  If not reg.OpenKey( keyname, True ) Then
    raise ERegistryError.CreateFmt( eCannotCreateKey, [keyname] );
End; { CreateKey }

{+------------------------------------------------------------
 | Procedure RegisterFiletype
 |
 | Parameters :
 |   extension  : file extension, including the dot, to register
 |   filetype   : string to use as key for the file extension
 |   description: string to show in Explorer for files with this
 |                extension. If description is empty the file
 |                type will not show up in Explorers list of
 |                registered associations!
 |   verb       : action to register, 'open', 'edit', 'print' etc.
 |                The action will turn up as entry in the files
 |                context menu in Explorer.
 |   serverapp  : full pathname of the executable to associate with
 |                the file extension, including any command line
 |                switches. Include the "%1" placeholder as well.
 |                Actions like printto may require more than one
 |                placeholder.
 | Description:
 |   Creates the three basic registry keys for a file extension.
 |   HKCR\<extension> = <filetype>
 |   HKCR\<filetype>  = <description>
 |   HKCR\<filetype>\shell\<verb>\command = <serverapp>
 |   If the keys already exist they are overwritten!
 | Error Conditions:
 |   A ERegistryError exception will result if a key cannot be
 |   created. Failure to create a key is usually due to insufficient
 |   user rights and only a problem on NT.
 | Created: 14.03.99 by P. Below
 +------------------------------------------------------------}
Procedure RegisterFiletype( Const extension, filetype, description,
             verb, serverapp: String );
Var
  reg: TRegistry;
  keystring: String;
Begin
  reg:= TRegistry.Create;
  Try
    reg.Rootkey := HKEY_CLASSES_ROOT;
    CreateKey( reg, extension );
    reg.WriteString( '', filetype );
    reg.CloseKey;
    CreateKey( reg, filetype );
    reg.WriteString('', description );
    reg.closekey;
    keystring := Format('%s\shell\%s\command', [filetype, verb] );
    CreateKey( reg, keystring );
    reg.WriteString( '', serverapp );
    reg.CloseKey;
  Finally
    reg.free;
  End;
End; { RegisterFiletype }

procedure RemoveFileType(const extension:string);
Var
  reg: TRegistry;
  keystring: String;
Begin
  reg:= TRegistry.Create;
  Try
    reg.Rootkey := HKEY_CLASSES_ROOT;
    reg.DeleteKey(extension);
  Finally
    reg.free;
  End;
End; { RegisterFiletype }


end.
