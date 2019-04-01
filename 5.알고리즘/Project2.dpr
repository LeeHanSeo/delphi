program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  iData : Integer = 1234432;
  sTemp : String;
  sResult : String = '';

begin
  sTemp := IntToStr(iData);
  sResult := '';

  while Length(sTemp) > 3 do begin
    sResult := Copy(sTemp, Length(sTemp) - 2, 3) + ',' + sResult;
    SetLength(sTemp, Length(sTemp)-3);
  end;

  sResult := sTemp + ',' + sResult;

  SetLength(sResult, Length(sResult)-1);
  Writeln('Result : ', sResult);

  Readln;
end.
