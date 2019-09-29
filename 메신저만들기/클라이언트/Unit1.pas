unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Button1: TButton;
    IdTCPClient1: TIdTCPClient;
    Timer1: TTimer;
    Memo2: TMemo;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    function ReceiveText(IdTCPClinect:TIdTCPClient): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  IdTCPClient1.Connect;
  IdTCPClient1.WriteLn(Format('Login;%s', [Edit2.Text]));
  //if IdTCPClient1.Connected = True then ShowMessage('접속완료');
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    key := #0;
    IdTCPClient1.WriteLn(Format('Talk;%s;%s;', [Edit2.Text, Edit1.Text]));
    Edit1.Text := '';
  end;
end;

function TForm1.ReceiveText(IdTCPClinect: TIdTCPClient): String;
var
  Data: Pointer;
  DataSize: Integer;
  ssData: TStringStream;
begin
  DataSize := IdTCPClinect.ReadFromStack(True, 5, False);
  if DataSize = 0 then
    begin
      Result := '';
      Exit;
    end;

  GetMem(Data, DataSize);
  ssData := TStringStream.Create('');
  try
    IdTCPClinect.ReadBuffer(Data^, DataSize);
    ssData.Write(Data^, DataSize);
    ssData.Position := 0;
    Result := ssData.DataString;
  finally
    FreeMem(Data);
    ssData.Free;
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var stTemp: String;
begin
  if IdTCPClient1.Connected = False then exit;

  //stTemp := IdTCPClient1.ReadLn(#10, 5);
  stTemp := ReceiveText(IdTCPClient1);
  if stTemp <> '' then Memo1.Lines.Add(stTemp);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  IdTCPClient1.WriteLn(Format('Msg;%s%s%s', [Edit2.Text, Edit3.Text, Edit1.Text]));
end;

end.
