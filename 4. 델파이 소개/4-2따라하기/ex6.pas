unit ex6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Grids;

type
  TForm6 = class(TForm)
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    MaskEdit2: TMaskEdit;
    StringGrid1: TStringGrid;
    DrawGrid1: TDrawGrid;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  ShowMessage(MaskEdit1.Text);
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  StringGrid1.Cells[1, 1] := 'sssss';
end;



procedure TForm6.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  DrawGrid1.Canvas.MoveTo(Rect.Left, Rect.Top);
  DrawGrid1.Canvas.LineTo(Rect.Right, Rect.Bottom);
end;

end.
