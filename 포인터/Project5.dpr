program Project5;

{$APPTYPE CONSOLE}

// 메모리 할당 : 메모리 공간을 확보하고, 해당 주소값을 변수에 입력하는 과정.

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

