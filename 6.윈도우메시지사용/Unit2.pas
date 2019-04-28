unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
  private
    { Private declarations }
    procedure doWM_User(Var Msg : TMessage); message WM_User;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TForm2 }

procedure TForm2.doWM_User(var Msg: TMessage);
begin
  Memo1.Lines.Add('...');
end;

end.
