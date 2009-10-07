{-----------------------------------------------------------------------------
 Unit Name: SPCommonLib
 Author:    SharpPlus Software
 Purpose:   ÆÕÍ¨º¯Êý¿â
 BeginDate: 2002-12-24
 History:
-----------------------------------------------------------------------------}


unit SPCommonLib;

interface

function iif(const Test: Boolean; const True, False: Variant): Variant;
function Bool2Int(AValue:Boolean):Integer;

implementation

function Bool2Int(AValue:Boolean):Integer;
begin
  if AValue then
    Result:=1
  else
    Result:=0;
end;

function iif(const Test: Boolean; const True, False: Variant): Variant;
begin
  if Test then
    Result := True
  else
    Result := False;
end;

end.
