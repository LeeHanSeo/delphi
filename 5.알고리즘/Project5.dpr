program Project5;

{$APPTYPE CONSOLE}
//���ڿ� ġȯ�ϱ�
uses
  SysUtils;

var
  sSource : String = 'Replace xxx from string!!';
  sFind : String = 'xxx';
  sTarget : String = 'Ryu';
  sResult : String = '';
  iPos : Integer = 0;
  Loop : Integer;

begin
  for Loop := 1 to Length(sSource) do
    if Copy(sSource, Loop, Length(sFind)) = sFind then begin
      iPos := Loop;
      Break;
  end;

  sResult := Copy(sSource, 1, iPos-1);
  sResult := sResult + sTarget;
  sResult := sResult + Copy(sSource, iPos + Length(sFind), Length(sSource));

  Writeln('Result :', sResult);

  Readln;

end.
 