program Project5;

{$APPTYPE CONSOLE}

// �޸� �Ҵ� : �޸� ������ Ȯ���ϰ�, �ش� �ּҰ��� ������ �Է��ϴ� ����.

uses
  SysUtils;

var
  n : integer;
  i : ^integer;

begin
  n:= 1;
  i:= @n;
  WriteLn('n : ', n);     //1
  WriteLn('i^ : ', i^);   //1
  WriteLn;

  i^:= 2;
  WriteLn('n : ', n);    //2
  WriteLn('i^ : ', i^);  //2
  WriteLn;

  New(i);
  i^:= 3;
  WriteLn('n : ', n);   //2
  WriteLn('i^ : ', i^); //3
  WriteLn;

  Dispose(i);

  ReadLn;
end.

