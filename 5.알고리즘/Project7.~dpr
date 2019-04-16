program Project7;       //문자열 뒤집기

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Loop : Integer;
  sSource : string = '123456789';
  sReverse : string = '';
  StackSize : integer = 0;
  Stack : array [1..100] of char;

procedure Push(Value:char);
begin
  StackSize := StackSize + 1;
  Stack[StackSize] := Value;
end;

function Pop : char;
begin
  Result := Stack[StackSize];
  StackSize := StackSize - 1;
end;

begin
  for Loop := 1 to Length(sSource) do
    Push(sSource[Loop]);

  while StackSize > 0 do
    sReverse := sReverse + Pop;

  Writeln('Reslut : ', sReverse);

  Readln;

end.
