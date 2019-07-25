program Project11;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i1, i2 : ^integer;

begin
  New(i1);
  GetMem(i2, SizeOf(integer));

  i1^:= 123456;
  i2^:= i1^;

  WriteLn('i1^의 값 : ', i1^);
  WriteLn('i2^의 값 : ', i2^);

  FreeMem(i1);
  Dispose(i2);

  ReadLn;
end.

