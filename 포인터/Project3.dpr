program Project3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  p : ^integer;
  a, b : integer;

begin
  a := 3;

  Writeln('a�� �ּ� : ', integer(@a));
  Writeln('b�� �ּ� : ', integer(@b));

  p := @a;
  Writeln('p�� �� = a�� �ּ� : ', integer(p));

  Writeln('a�� �� : ', a);
  Writeln('p�� ����� �ּҿ� �ִ� �������� �ڽ��� �� : ', integer(p^));

  Readln;
end.

