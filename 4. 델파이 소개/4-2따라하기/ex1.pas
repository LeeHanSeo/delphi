unit ex1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ImageList1: TImageList;
    N4: TMenuItem;
    Insert: TMenuItem;
    N6: TMenuItem;
    AAA1: TMenuItem;
    BBB1: TMenuItem;
    PopupMenu1: TPopupMenu;
    a1: TMenuItem;
    b1: TMenuItem;
    c1: TMenuItem;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure InsertClick(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.InsertClick(Sender: TObject);
begin
  Insert.Checked := not Insert.Checked;
end;

procedure TForm1.Label1MouseEnter(Sender: TObject);
begin
  Label1.Font.Color := clLime;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(Edit1.Text);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    Key := #0;
    ShowMessage(Edit1.Text);
  end;
end;

end.
