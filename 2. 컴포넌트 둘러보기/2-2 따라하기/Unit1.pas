unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, Menus;

type
  TForm1 = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
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
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  WebBrowser1.Navigate('https://www.delmadang.com');
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  if OpenDialog1.Execute = True then
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

end.
