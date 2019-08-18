program Self;

//Self : Ŭ���� ���忡�� �ڽ��� �޸𸮿� ������ ��, �ش� �ּҸ� ����Ű�� ������ ����

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TList = class;

  TItem = class
    Parent : TList;
    destructor Destroy; override;
  end;

  TList = class
    Items : array [1..10] of TItem;
    constructor Create;
    procedure DeleteItem(Index:integer);
    procedure DeletedNotify(Child:TItem);
  end;

{ TClassA }

constructor TList.Create;
var
  Loop : Integer;
begin
  for Loop := 1 to 10 do begin
    Items[Loop]:= TItem.Create;
    Items[Loop].Parent:= Self;
    WriteLn(Loop, '�� ��ü�� �����Ǿ����ϴ�.');
  end;
end;

procedure TList.DeletedNotify(Child: TItem);
var
  Loop : Integer;
begin
  for Loop := 10 downto 1 do begin
    if Items[Loop] = Child then begin
      Items[Loop]:= nil;
      WriteLn(Loop, '�� ��ü�� �����Ǿ����ϴ�.');
    end;
  end;
end;

procedure TList.DeleteItem(Index: integer);
begin
  Items[Index].Free;
end;

{ TClassB }

destructor TItem.Destroy;                             
begin
  Parent.DeletedNotify(Self);

  inherited;
end;

var
  List  : TList;
  List2 : TList;

begin
  List := TList.Create;
  List.DeleteItem(3);

  List2 := TList.Create;
  List2.DeleteItem(3);
  ReadLn;
end.

