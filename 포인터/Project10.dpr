program Project10;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  b : ^byte;
  w : ^word;
  i : ^integer;
  s : ^string;

  Data : integer = 1234567890;

begin
  b:= @Data;
  w:= Pointer(b);
  i:= Pointer(w);
  s:= Pointer(i);

  WriteLn('b�� �ּ� �� : ', Integer(b));  // 4231832
  WriteLn('w�� �ּ� �� : ', Integer(w));  // 4231832
  WriteLn('i�� �ּ� �� : ', Integer(i));  // 4231832
  WriteLn('s�� �ּ� �� : ', Integer(s));  // 4231832
  ReadLn;

  WriteLn('b^�� �� : ', b^);
  ReadLn;

  WriteLn('w^�� �� : ', w^);
  ReadLn;

  WriteLn('i^�� �� : ', i^);
  ReadLn;

  try
    WriteLn('s^�� �� : ', s^);
  except
    on E : Exception do WriteLn(E.Message);
  end;
  ReadLn;
end.

