program Project4;

{$APPTYPE CONSOLE}
//���ڿ� �˻��ϱ� 
uses
  SysUtils;

var
  sSource : String = 'Find xxx from string!!';
  sFind : String = 'xxx';
  iResult : Integer = 0;
  Loop : Integer;

begin
  for Loop := 1 to Length(sSource) do
    if Copy(sSource, Loop, Length(sFind)) = sFind then begin
      iResult := Loop;
      Break;
    end;

  Writeln('Result : ', iResult);

  Readln;
end.
