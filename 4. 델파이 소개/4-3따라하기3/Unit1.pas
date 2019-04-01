unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    imgAir: TImage;
    imgMissile: TImage;
    tmMisa: TTimer;
    tmEnemy: TTimer;
    imgEnemy: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tmMisaTimer(Sender: TObject);
    procedure tmEnemyTimer(Sender: TObject);
  private
    { Private declarations }
    Enemis : TList;
    procedure do_fire;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.do_fire;
begin
  if imgMissile .Visible = True then Exit;

  imgMissile.Top := imgAir.Top - imgMissile.Height;
  imgMissile.Left := imgAir.Left + (imgAir.Width div 2)- (imgMissile.Width div 2);
  imgMissile.Visible := True;
  tmMisa.Enabled := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;

    Enemis := TList.Create;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_LEFT  : imgAir.Left := imgAir.Left -1;
    VK_RIGHT : imgAir.Left := imgAir.Left +1;
    VK_SPACE : do_fire;
  end;
end;

procedure TForm1.tmEnemyTimer(Sender: TObject);
var
  Enemy : TImage;
  Loop  : Integer;
begin
  Randomize;
  if Round(Random(30)) = 4 then begin
      Enemy := TImage.Create(Self);
      Enemy.Picture.Bitmap.Assign(imgEnemy.Picture.Bitmap);
      Enemy.Top := 0;
      Enemy.Left := Round(Random(ClientWidth));
      Enemy.AutoSize := True;
      Enemy.Transparent := True;
      Enemy.Parent := Self;
      Enemy.Visible := True;
      Enemis.Add(Enemy);
    end;

    for Loop := 0 to Enemis.Count - 1 do begin
      Enemy := TImage(Enemis.Items[Loop]);
      Enemy.Top := Enemy.Top + 2;
    end;
end;

procedure TForm1.tmMisaTimer(Sender: TObject);
begin
  imgMissile.Top := imgMissile.Top - 5;
  imgMissile.Visible := (imgMissile.Top + imgMissile.Height) > 0;
  tmMisa.Enabled := imgMissile.Visible;
end;

end.
