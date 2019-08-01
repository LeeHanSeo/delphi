program Project15; //정적 배열을 사용한 예제

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Data, Index : integer;
  Count : integer = 0;
  Datas : array [1..1024] of integer;

function FindIndexOf(Value:integer):integer;
var
  Loop : Integer;
begin
  Result:= Count + 1;
  for Loop := 1 to Count do
    if Value < Datas[Loop] then
      begin
        Result:= Loop;
        Break;
      end;
end;

procedure MakeVacancy(Value:integer);
var
  Loop : integer;
begin
  for Loop := Count downto Value do Datas[Loop+1]:= Datas[Loop];
end;

procedure DisplayDatas;
var
  Loop : integer;
begin
  for Loop := 1 to Count do
    WriteLn(Loop, ' : ', Datas[Loop]);
end;

begin
  Write('Data : ');  ReadLn(Data);
  while Data > 0 do begin
    // 자신보다 큰 숫자가 있는 Index를 찾는다.
    Index:= FindIndexOf(Data);

    // 해당 위치에 빈 공간을 마련한다.
    MakeVacancy(Index);

    Datas[Index]:= Data;
    Count:= Count + 1;

    Write('Data : ');  ReadLn(Data);
  end;

  DisplayDatas;

  ReadLn;
end.

