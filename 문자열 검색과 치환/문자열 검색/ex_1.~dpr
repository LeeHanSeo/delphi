program ex_1; //문자열 검색하기 

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  sSource : string = 'Find xxx from string!';
  sFind : string = 'xxx';
  iResult : integer = 0;
  Loop : integer;

begin
  for Loop := 1 to length(sSource) do
    if Copy(sSource, Loop, length(sFind)) = sFind then
      begin
        iResult := Loop;
        Break;
      end;

  Writeln('Result : ', iResult);

  Readln;
end.
