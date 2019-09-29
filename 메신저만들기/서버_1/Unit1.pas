unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPServer, IdThreadMgr,
  IdThreadMgrDefault;

type
  TForm1 = class(TForm)
    IdTCPServer1: TIdTCPServer;
    IdThreadMgrDefault1: TIdThreadMgrDefault;
    procedure IdTCPServer1Execute(AThread: TIdPeerThread);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.IdTCPServer1Execute(AThread: TIdPeerThread);
var
  stTemp: String;
  List: TList;
  Loop: Integer;
begin
  stTemp := AThread.Connection.ReadLn;

  List := IdTCPServer1.Threads.LockList;
  try
    for Loop := 0 to List.Count-1 do begin
     TIdPeerThread(List.Items[Loop]).Connection.WriteLn(stTemp);
    end;
  finally
    IdTCPServer1.Threads.UnlockList;
  end;
end;

end.
