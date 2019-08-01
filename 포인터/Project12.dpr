program Project12;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  b : ^byte;
  w : ^word;
  i : ^integer;
  p : pointer;

begin
  GetMem(p, 1024);
  b := p;
  w := p;
  i := p;

  WriteLn('b의 값 : ', Integer(b));
  WriteLn('w의 값 : ', Integer(w));
  WriteLn('i의 값 : ', Integer(i));
  WriteLn('p의 값 : ', Integer(p));
  WriteLn;

  Inc(b, 1);
  Inc(w);
  Inc(i);

//컴파일 불가
//  Inc(p);

  p := Ptr(Integer(p) + 1);

  WriteLn('b의 값 : ', Integer(b));
  WriteLn('w의 값 : ', Integer(w));
  WriteLn('i의 값 : ', Integer(i));
  WriteLn('p의 값 : ', Integer(p));
  WriteLn;

  Readln;
end.

