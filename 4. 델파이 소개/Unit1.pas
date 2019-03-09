unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ExtDlgs, ColorGrd, Grids;

type
  TForm1 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Create: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    ColorGrid1: TColorGrid;
    DrawGrid1: TDrawGrid;
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CreateClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;

  Image1.Picture.Bitmap.Width  := Image1.Width;
  Image1.Picture.Bitmap.Height := Image1.Width;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//  Image1.Picture.Bitmap.Canvas.Pixels[X, Y] := clBlack;
  if Shift = [ssLeft] then
    begin
    Image1.Picture.Bitmap.Canvas.Pen.Width := DrawGrid1.Row + 1;
    Image1.Picture.Bitmap.Canvas.Pen.Color := ColorGrid1.ForegroundColor;
    Image1.Picture.Bitmap.Canvas.LineTo(X, Y);
    end;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Image1.Picture.Bitmap.Canvas.MoveTo(X, Y);
end;

procedure TForm1.CreateClick(Sender: TObject);
begin
  Image1.Picture.Bitmap.Canvas.Brush.Color := clWhite;
  Image1.Picture.Bitmap.Canvas.FillRect(Rect(0, 0, Image1.Width, Image1.Height));
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute = True then
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  if SavePictureDialog1.Execute = True then
    Image1.Picture.SaveToFile(SavePictureDialog1.FileName);
end;

procedure TForm1.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  iLeft, iRight, iTop : Integer;
begin
  iLeft := Rect.Left;
  iRight := Rect.Right;
  iTop := (Rect.Top + Rect.Bottom) div 2;

  DrawGrid1.Canvas.Pen.Width := ARow + 1;
  DrawGrid1.Canvas.MoveTo(iLeft, iTop);
  DrawGrid1.Canvas.LineTo(iRight, iTop);
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  Close;
end;

end.

