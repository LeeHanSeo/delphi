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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
  if Memo1.Modified then ShowMessage('Modified');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Add('xxxxxx');
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Delete();
end;

end.
