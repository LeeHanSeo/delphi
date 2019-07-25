program Project4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Int : integer;
  pInt : ^integer;

  St : string;
  pSt : ^string;

begin
  Int := 12345;
  pInt := @Int;
  Writeln('Int : ', Int);
  Writeln('pInt^ : ', pInt^);
  Writeln('Int와 pInt^는 같은 변수입니다.');

  Writeln;

  St := '포인터 테스트';
  pSt := @St;
  Writeln('St : ' , St);
  Writeln('St : ' , pSt^);
  Writeln('St pSt^는 같은 변수입니다.');

  Readln;
end.

