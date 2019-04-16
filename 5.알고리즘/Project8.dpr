program Project8;     //특정문자열 자르기

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Loop : Integer;
  sSource : string = '123|456|789';
  StackSize : Integer = 0;
  Stack : array [1..100] of char;

procedure Push(Value:char);
begin
  StackSize := StackSize + 1;
  Stack[StackSize] := Value;
end;

function Pop : String;
var
  Loop : Integer;
begin
  Result := '';
  for Loop := 1 to StackSize do
    Result := Result + Stack[Loop];
  StackSize := 0;
end;

begin
  for Loop := 1 to Length(sSource) do
    if sSource[Loop] <> '|' then Push(sSource[Loop])
    else Writeln(Pop);

  if StackSize > 0 then Writeln(Pop);

  Readln;

end.
