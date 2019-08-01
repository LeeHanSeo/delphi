program Project13;

{$APPTYPE CONSOLE}

uses
  SysUtils, Forms, Graphics;

var
  MainForm : TForm;

  Color : TColor;
  R, G , B : ^byte;

begin
  MainForm := TForm.CreateNew(nil);
  MainForm.Show;

  R := @Color;

  G := R;
  Inc(G);   //Inc()는 정수의 값을 증가 시키는 함수

  B := G;
  Inc(B);

  R^ := $12;
  G^ := $34;
  B^ := $56;

  MainForm.Color := Color;
  MainForm.Repaint;

  Readln;
end.

