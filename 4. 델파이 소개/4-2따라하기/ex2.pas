unit ex2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  //ShowMessage(Memo1.Lines.Text);
  //if Memo1.Modified then ShowMessage('Modified');
  Memo1.Lines.Clear;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  //Memo1.Lines.Clear;
  Memo1.Lines.Add('XXXXX');
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Delete(0);
end;
                                                                                              
procedure TForm2.Button4Click(Sender: TObject);
begin
  Memo1.Lines.SaveToFile('C:\a.txt');
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Memo1.Lines.LoadFromFile('C:\a.txt');
end;

procedure TForm2.Button7Click(Sender: TObject);
var
  Loop : Integer;
begin
  for Loop := 0 to Memo1.Lines.Count-1 do
    ShowMessage(Memo1.Lines.Names[Loop]);
  //ShowMessage(Memo1.Lines.Values['Text']);
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    Key := #0;
    Memo1.Lines.Values['Text'] := Edit1.Text;
  end;
end;

end.
