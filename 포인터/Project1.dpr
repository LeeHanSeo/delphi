program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  a, b : integer;

begin
  Writeln('a의 주소 : ', integer(@a));
  Writeln('b의 주소 : ', integer(@b));

  Readln;
end.

