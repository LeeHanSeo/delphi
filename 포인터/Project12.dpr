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

  WriteLn('b�� �� : ', Integer(b));
  WriteLn('w�� �� : ', Integer(w));
  WriteLn('i�� �� : ', Integer(i));
  WriteLn('p�� �� : ', Integer(p));
  WriteLn;

  Inc(b, 1);
  Inc(w);
  Inc(i);

//������ �Ұ�
//  Inc(p);

  p := Ptr(Integer(p) + 1);

  WriteLn('b�� �� : ', Integer(b));
  WriteLn('w�� �� : ', Integer(w));
  WriteLn('i�� �� : ', Integer(i));
  WriteLn('p�� �� : ', Integer(p));
  WriteLn;

  Readln;
end.

