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
  Inc(G);   //Inc()�� ������ ���� ���� ��Ű�� �Լ�

  B := G;
  Inc(B);

  R^ := $12;
  G^ := $34;
  B^ := $56;

  MainForm.Color := Color;
  MainForm.Repaint;

  Readln;
end.

