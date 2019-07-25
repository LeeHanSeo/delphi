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

  WriteLn('b의 주소 값 : ', Integer(b));  // 4231832
  WriteLn('w의 주소 값 : ', Integer(w));  // 4231832
  WriteLn('i의 주소 값 : ', Integer(i));  // 4231832
  WriteLn('s의 주소 값 : ', Integer(s));  // 4231832
  ReadLn;

  WriteLn('b^의 값 : ', b^);
  ReadLn;

  WriteLn('w^의 값 : ', w^);
  ReadLn;

  WriteLn('i^의 값 : ', i^);
  ReadLn;

  try
    WriteLn('s^의 값 : ', s^);
  except
    on E : Exception do WriteLn(E.Message);
  end;
  ReadLn;
end.

