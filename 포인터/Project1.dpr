program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  a, b : integer;

begin
  Writeln('a狼 林家 : ', integer(@a));
  Writeln('b狼 林家 : ', integer(@b));

  Readln;
end.

