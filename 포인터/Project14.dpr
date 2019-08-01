program Project14;

{$APPTYPE CONSOLE}

uses
  SysUtils, Forms, Graphics;

type
  TRGB = record
    R, G, B : byte;
  end;

var
  MainForm : TForm;

  Color : TColor;
  RGB   : ^TRGB;

begin
  MainForm := TForm.CreateNew(nil);
  MainForm.Show;

  RGB := @Color;
  RGB^.R := $12;
  RGB^.G := $34;
  RGB^.B := $56;

  MainForm.Color := Color;
  MainForm.Repaint;

  Readln;
end.

