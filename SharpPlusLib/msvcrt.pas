unit msvcrt;

interface

const
  szMSVCRT = 'MSVCRT.DLL';
function _vsnprintf(buffer: PAnsiChar; count: Cardinal; format: PAnsiChar)
  : integer; cdecl; varargs; external szMSVCRT name '_vsnprintf';
function _memcpy(dest, src: pointer; count: Cardinal): pointer; cdecl;
external szMSVCRT name 'memcpy';
function sscanf(buffer: PAnsiChar; fmt: PAnsiChar): integer; cdecl; varargs;
external szMSVCRT name 'sscanf';
function _free(buffer: PAnsiChar): integer; cdecl;
external szMSVCRT name 'free';

implementation

end.
