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
  Text := '문자열 암호화를 테스트';

  Text := Encode(Text);
  Writeln('암호화 된 문자열 : ', Text);
  Writeln;

  Text := Encode(Text);
  Writeln('암호가 해제 된 문자열 : ', Text);
  Writeln;

  Readln;
end.
