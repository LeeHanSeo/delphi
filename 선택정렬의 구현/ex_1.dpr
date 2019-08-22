program ex_1; //선택정렬 

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Loop1, Loop2 : Integer;
  Datas : array[1..5] of integer = (5,4,3,2,1);

procedure Swap(var a,b:integer);
var iTemp: integer;
begin
  iTemp := a;
  a := b;
  b := iTemp;
end;

begin
  for Loop1 := 1 to 5-1 do
    for Loop2 := Loop1+1 to 5 do
      if Datas[Loop1] > Datas[Loop2] then
        Swap(Datas[Loop1], Datas[Loop2]);

  for Loop1 := 1 to 5 do
    Writeln(Loop1, ' : ', Datas[Loop1]);

    Readln;

end.
 