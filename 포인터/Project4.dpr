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
  Writeln('Int�� pInt^�� ���� �����Դϴ�.');

  Writeln;

  St := '������ �׽�Ʈ';
  pSt := @St;
  Writeln('St : ' , St);
  Writeln('St : ' , pSt^);
  Writeln('St pSt^�� ���� �����Դϴ�.');

  Readln;
end.

