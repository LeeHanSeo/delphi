unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPServer, IdThreadMgr,
  IdThreadMgrDefault, StdCtrls;

type
  TForm1 = class(TForm)
    IdTCPServer1: TIdTCPServer;
    IdThreadMgrDefault1: TIdThreadMgrDefault;
    Memo1: TMemo;
    procedure IdTCPServer1Execute(AThread: TIdPeerThread);
    procedure IdTCPServer1Connect(AThread: TIdPeerThread);
    procedure IdTCPServer1Disconnect(AThread: TIdPeerThread);
  private
    procedure doLogin(AThread: TIdPeerThread; Strings:TStringList);
    procedure doTalk(AThread: TIdPeerThread; Strings:TStringList);
    procedure doMsg(AThread: TIdPeerThread; Strings:TStringList);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

type
  TClientInfo = class(TObject)
  public
    UserId: String;
  end;

{$R *.dfm}

procedure TForm1.IdTCPServer1Execute(AThread: TIdPeerThread);
var
  stTemp: String;
  st1Temp : TStringList;
begin
  stTemp := AThread.Connection.ReadLn;

  Memo1.Lines.Add(stTemp);

  st1Temp := TStringList.Create;
  st1Temp.Text := StringReplace(stTemp, ';', #13, [rfReplaceAll]);

  if st1Temp.Strings[0] = 'login' then doLogin(AThread, st1Temp)
  else if st1Temp.Strings[0] = 'talk' then doTalk(AThread, st1Temp)
  else if st1Temp.Strings[0] = 'msg' then domsg(AThread, st1Temp);

end;

procedure TForm1.IdTCPServer1Connect(AThread: TIdPeerThread);
var
  Client: TClientInfo;
begin
  Client := TClientInfo.Create;
  AThread.Data := Client;
end;

procedure TForm1.IdTCPServer1Disconnect(AThread: TIdPeerThread);
var
  Client : TClientInfo;
begin
  Client := Pointer(AThread.Data);
  AThread.Data := Nil;

  Client.Free;
end;

procedure TForm1.doLogin(AThread: TIdPeerThread; Strings: TStringList);
var
  Client : TClientInfo;
begin
  Client := Pointer(AThread.Data);

  Client.UserId := Strings.Strings[1];
end;

procedure TForm1.doMsg(AThread: TIdPeerThread; Strings: TStringList);
var
  List : TList;
  Loop : Integer;
  stTemp : String;
  Client : TClientInfo;
begin
  stTemp := StringReplace(Strings.Text, #13, ';', [rfReplaceAll]);
  List := IdTCPServer1.Threads.LockList;
  try
    for Loop := 0 to List.Count-1 do begin
      Client := Pointer(TIdPeerThread(List.Items[Loop]).Data);
      if Client = nil then Continue;
      if Client.UserId <> Strings.Strings[2] then Continue;

      TIdPeerThread(List.Items[Loop]).Connection.WriteLn(stTemp);
    end;
  finally
    IdTCPServer1.Threads.UnlockList;
  end;
end;

procedure TForm1.doTalk(AThread: TIdPeerThread; Strings: TStringList);
var
  List : TList;
  Loop : Integer;
  stTemp : String;
begin
  stTemp := StringReplace(Strings.Text, #13, ';', [rfReplaceAll]);
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
