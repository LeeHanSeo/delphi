program Begin40;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Text: String;

function Encode(Text:String):String;
var
  Loop : integer;
begin
  Result := '';
  for Loop := 1 to Length(Text) do
    Result := Result + Char( Byte(Text[Loop]) xor 75 );
end;

begin
  Text := '���ڿ� ��ȣȭ�� �׽�Ʈ';

  Text := Encode(Text);
  Writeln('��ȣȭ �� ���ڿ� : ', Text);
  Writeln;

  Text := Encode(Text);
  Writeln('��ȣ�� ���� �� ���ڿ� : ', Text);
  Writeln;

  Readln;
end.
