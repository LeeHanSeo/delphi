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

  WriteLn('b狼 林家 蔼 : ', Integer(b));
  WriteLn('w狼 林家 蔼 : ', Integer(w));
  WriteLn('i狼 林家 蔼 : ', Integer(i));
  WriteLn('s狼 林家 蔼 : ', Integer(s));

  ReadLn;
end.

