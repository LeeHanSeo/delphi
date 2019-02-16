unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, MPlayer;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    XXXX1: TMenuItem;
    AAAA1: TMenuItem;
    BBBB1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N2: TMenuItem;
    PopupMenu1: TPopupMenu;
    A1: TMenuItem;
    B1: TMenuItem;
    C1: TMenuItem;
    Timer1: TTimer;
    BitBtn1: TBitBtn;
    MediaPlayer1: TMediaPlayer;
    Panel1: TPanel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  BitBtn1.Left := BitBtn1.Left + 5; //InterVal 1000 -> 1ÃÊ
end;

end.
