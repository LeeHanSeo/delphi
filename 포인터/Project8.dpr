program Project;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  a, b : integer;

procedure SwapIntegersFirstTry(a,b:integer);
var
  c : integer;
begin
  c := a;
  a := b;
  b := c;
end;

procedure SwapIntegersSecondTry(var a,b:integer);
var
  c : integer;
begin
  c := a;
  a := b;
  b := c;
end;

procedure SwapIntegersThirdTry(a,b:PInteger);
var
  c : integer;
begin
  c := a^;
  a^ := b^;
  b^ := c;
end;

begin
  a := 0;
  b := 1;

  SwapIntegersFirstTry(a, b);
  Writeln('SwapIntegersFirstTry');;
  Writeln('a = ', a);
  Writeln('b = ', b);
  Writeln;

  SwapIntegersSecondTry(a, b);
  Writeln('SwapIntegersSecondTry');;
  Writeln('a = ', a);
  Writeln('b = ', b);
  Writeln;

  SwapIntegersThirdTry(@a, @b);
  Writeln('SwapIntegersThirdTry');;
  Writeln('a = ', a);
  Writeln('b = ', b);
  Writeln;

  Readln;
end.

