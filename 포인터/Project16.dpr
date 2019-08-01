program Project16;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  PData = ^TData;
  TData = record
    Value : Integer;
    Prior : PData;
    Next  : PData;
  end;
var
  Data, Index : PData;
  Head : PData = nil;
  Tail : PData = nil;

function FindIndexOf(Value:integer):PData;
var
  Loop : Integer;
begin
  Result := Head.Next;
  while Result <> Tail do
    begin
      if Value < Result.Value then Break;

      Result := Result.Next;
    end;
end;

procedure DisplayDatas;
var
  Node : PData;
  Count : integer;
begin
  Count:= 0;
  Node:= Head.Next;
  while Node <> Tail do begin
    Count:= Count + 1;
    WriteLn(Count, ' : ', Node.Value);

    Node:= Node.Next;
  end;
end;

begin
  New(Head);
  New(Tail);
  Head^.Prior:= nil;
  Head^.Next:= Tail;
  Tail^.Prior:= Head;
  Tail^.Next:= nil;

  New(Data);
  Write('Data : ');  ReadLn(Data^.Value);
  while Data.Value > 0 do begin
    // �ڽź��� ū ���ڰ� �ִ� Index�� ã�´�.
    Index:= FindIndexOf(Data^.Value);

    Data.Next:= Index;
    Data.Prior:= Index.Prior;
    Index.Prior.Next:= Data;
    Index.Prior:= Data;

    // �ش� ��ġ�� �� ������ ������ �ʿ䰡 ����.

    New(Data);
    Write('Data : ');  ReadLn(Data^.Value);
  end;
  Dispose(Data);

  DisplayDatas;

  ReadLn;
end.


