program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  p : pointer;
  a, b : integer;

begin
  a := 3;

  Writeln('a의 주소 : ', integer(@a));
  Writeln('b의 주소 : ', integer(@b));

  p := @a;
  Writeln('p의 값 = a 의 주소 : ', integer(p));

  Writeln('a의 값 : ', a);
  Writeln('p에 저장된 주소에 있는 정수형태 박스의 값 : ', integer(p^));

  Readln;
end.

