unit NewLabel;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, ExtCtrls;

type
  TNewLabel = class(TLabel)
  private
    { Private declarations }
    FTimer : TTimer;
    FValue : Integer;
    procedure SetValue(Value:Integer);
    procedure OnTimer(Sender:TObject);
  protected
    { Protected declarations }
  public
    { Public declarations }
    Constructor Create(AOwner:TComponent); Override;
    Destructor Destroy; Override;
  published
    { Published declarations }
    property Value : Integer read FValue write SetValue;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Standard', [TNewLabel]);
end;

{ TNewLabel }



constructor TNewLabel.Create(AOwner: TComponent);
begin
  inherited;

  FTimer := TTimer.Create(Self);
  FTimer.Interval := 300;
  FTimer.OnTimer := OnTimer;
  FTimer.Enabled := True;
end;

destructor TNewLabel.Destroy;
begin
  FTimer.Free;

  inherited;
end;

procedure TNewLabel.OnTimer(Sender: TObject);
begin
  Caption := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
end;

procedure TNewLabel.SetValue(Value: Integer);
begin
  FValue := Value;

  Caption := IntToStr(Value);
end;

end.
