program Project9;      //n!±¸ÇÏ±â

{$APPTYPE CONSOLE}

uses
  SysUtils;

function Factorial(n:integer):integer;
begin
  if n = 1 then Result := 1
  else Result := n * Factorial(n-1);
end;

begin
  Writeln('3! = 1 x 2 x 3 = ', Factorial(3));

  Readln;
end.
