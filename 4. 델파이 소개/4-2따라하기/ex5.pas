unit ex5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var Loop : Integer;
begin
  for Loop := 0 to ListBox1.Items.Count - 1 do
    if ListBox1.Selected[Loop] then ShowMessage(IntToStr(Loop));
  //Caption:= IntToStr(ListBox1.ItemIndex);

end;

end.
