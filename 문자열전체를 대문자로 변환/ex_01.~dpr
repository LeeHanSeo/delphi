program ex_01;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Loop : integer;
  sTemp : string = 'This is a temporary variable.';

begin
  for Loop := 1 to Length(sTemp) do
    Write('"'+sTemp[Loop]+'"=', Byte(sTemp[Loop]), ', '+#13#10);
  WriteLn('Result : ', sTemp);

  for Loop := 1 to Length(sTemp) do
    if sTemp[Loop] in ['a'..'z'] then
      sTemp[Loop]:= Char( Byte(sTemp[Loop]) - 32 );
  WriteLn('Result : ', sTemp);

  ReadLn;
end.

