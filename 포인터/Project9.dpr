program Project9;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  b : ^byte;
  w : ^word;
  i : ^integer;
  s : ^string;

  Data : integer = 12345;

begin
  b:= @Data;
  w:= @Data;
  i:= @Data;
  s:= @Data;

  WriteLn('b�� �ּ� �� : ', Integer(b));
  WriteLn('w�� �ּ� �� : ', Integer(w));
  WriteLn('i�� �ּ� �� : ', Integer(i));
  WriteLn('s�� �ּ� �� : ', Integer(s));

  ReadLn;
end.

