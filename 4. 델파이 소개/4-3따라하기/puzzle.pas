unit puzzle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Blank: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure SwapButton(Button1, Button2:TSpeedButton);
var
  iTemp : Integer;
begin
  iTemp := Button1.Left;
  Button1.Left := Button2.Left;
  Button2.Left := iTemp;

  iTemp := Button1.Top;
  Button1.Top := Button2.Top;
  Button2.Top := iTemp;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  Temp : TSpeedButton;
  x, y : Boolean;
begin
  Temp := TSpeedButton(Sender);

  x := (ABS(Temp.Left - Blank.Left) <= 24) and
       (Temp.Top = Blank.Top);

  y := (ABS(Temp.Top - Blank.Top) <= 24) and
       (Temp.Left = Blank.Left);

  if x or y then SwapButton(Temp, Blank);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  Loop : Integer;
  Buttons : array [1..8] of TSpeedButton;
begin
  Buttons[1] := SpeedButton1;
  Buttons[2] := SpeedButton2;
  Buttons[3] := SpeedButton3;
  Buttons[4] := SpeedButton4;
  Buttons[5] := SpeedButton5;
  Buttons[6] := SpeedButton6;
  Buttons[7] := SpeedButton7;
  Buttons[8] := SpeedButton8;

  Randomize;
  for Loop := 1 to 10000 do
    SpeedButton1Click(Buttons[Round(Random(8))+1]);
end;

end.
