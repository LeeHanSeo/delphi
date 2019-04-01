program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  iData : integer = 123456789;
  sResult : string = '';
  iDigit : integer = 1;
  iTemp : integer;

begin
  repeat  //루프의 마지막에서 조건이 오고 조건이 성립할 때 까지 반복하는 문이다.
    iDigit := iDigit * 10;
    iTemp  := iData - (iData div iDigit) * iDigit;
    iTemp  := iTemp div (iDigit div 10);
    sResult := Char(iTemp + 48) + sResult;
  until (iData div iDigit) = 0;

  Writeln('Result : ', sResult);

  Readln;

end.
