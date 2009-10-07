unit SPSecurity;

interface

function CheckTrialDate(Corp, Key:string;TrialMonth:Integer):Boolean;

implementation
uses Registry, SysUtils, Windows;

function CheckTrialDate(Corp, Key:string;TrialMonth:Integer):Boolean;
const
  szStartDate='StartDate';
var
  Reg:TRegistryIniFile;
  StartTime:TDateTime;
begin
  Result:=True;

  Reg:=TRegistryIniFile.Create(Corp);

  try
    if Reg.ValueExists(Key, szStartDate) then
      StartTime:=Reg.ReadDate(Key, szStartDate, Now)
    else
    begin
      Reg.WriteDate(Key, szStartDate, Now);
      StartTime:=Now;
    end;

    if (IncMonth(StartTime, TrialMonth)>Now) then
      Result:=False;
  finally
    Reg.Free;
  end;
end;

end.
