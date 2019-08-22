program ex_1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  sTemp : String;
  sResult : String;
  iData : Integer;
begin
  iData := 123456789;
  sTemp := IntToStr(iData);
  sResult := '';

  while Length(sTemp) > 3 do begin
    sResult := Copy(sTemp, Length(sTemp)-2, 3) + ',' + sResult;

    SetLength(sTemp, Length(sTemp)-3);
  end;
  sResult := sTemp + ',' + sResult;
  SetLength(sResult, Length(sResult)-1);

  Writeln('Result : ', sResult);

  Readln;

end.
