program Project3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  sData : string = '123456789';
  iResult : Integer = 0;
  Loop : Integer;
  iDigit : integer = 1;

begin
  for Loop := Length(sData) downto 1 do begin
    iResult := iResult + (Byte(sData[Loop])-48) * iDigit;
    iDigit := iDigit * 10;

  end;

  Writeln('Result : ', iResult);
end.
