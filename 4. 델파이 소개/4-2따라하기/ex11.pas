unit ex11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm11 = class(TForm)
    Timer1: TTimer;
    Shape1: TShape;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.Timer1Timer(Sender: TObject);
begin
  Shape1.Left := Shape1.Left + 5;
end;

end.
