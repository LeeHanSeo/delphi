program ex_1; //문자열 치환

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  sSource : string = 'Replace xxx from string!';
  sFind : string = 'xxx';
  sTarget : string = 'LeeHanSeo';
  sResult : string = '';
  iPos : integer = 0;
  Loop : integer;

begin
  for Loop := 1 to Length(sSource) do
    if Copy(sSource, Loop, Length(sFind)) = sFind then begin
      iPos:= Loop;
      Break;
    end;

  sResult:= Copy(sSource, 1, iPos-1);
  sResult:= sResult + sTarget;
  sResult:= sResult + Copy(sSource, iPos+Length(sFind), Length(sSource));

  WriteLn('Result : ', sResult);

  ReadLn;
end.
