program Project15; //���� �迭�� ����� ����

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
    // �ڽź��� ū ���ڰ� �ִ� Index�� ã�´�.
    Index:= FindIndexOf(Data);

    // �ش� ��ġ�� �� ������ �����Ѵ�.
    MakeVacancy(Index);

    Datas[Index]:= Data;
    Count:= Count + 1;

    Write('Data : ');  ReadLn(Data);
  end;

  DisplayDatas;

  ReadLn;
end.

