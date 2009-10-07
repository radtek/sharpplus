{-----------------------------------------------------------------------------
 Unit Name: SPSysLib
 Author:    SharpPlus
 Purpose:   系统函数单元
 BeginDate: 2002-5-11
 History:
-----------------------------------------------------------------------------}


unit SPSysLib;

interface
uses Forms, Windows;

procedure OpenUrl(Url:string);
procedure SPSetCurrentThreadName(const Name: string);


implementation
uses ShellApi;

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

end.
