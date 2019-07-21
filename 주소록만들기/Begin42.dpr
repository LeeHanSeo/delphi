program Begin42;

{$APPTYPE CONSOLE}

uses
  SysUtils, Crt;

type
  TAddress = record
    Name : String;
    Phone : String;
    Address : String;
  end;

var
  iDataSize : integer = 0;
  AddressList : array [1..100] of TAddress;

function SelectMenu:integer;
begin
  ClrScr;

  GotoXY(10, 6);
  Write(' 1.�ּ��Է�');

  GotoXY(10, 7);
  Write(' 2.�ּҰ˻�');

  GotoXY(10, 8);
  Write(' 3.�ּ� ��� ����');

  GotoXY(10, 9);
  Write(' 9.����');

  GotoXY(10, 11);
  Write('�޴��� �����ϼ��� : ');

  Readln(Result);
end;

procedure do_InputAddress;
begin
  ClrScr;

  iDataSize := iDataSize + 1;

  GotoXY(10, 6);
  Write(' 1. �̸�: ');
  Readln(AddressList[iDataSize].Name);

  GotoXY(10, 7);
  Write(' 2. ��ȭ��ȣ: ');
  Readln(AddressList[iDataSize].Phone);

  GotoXY(10, 8);
  Write(' 3. �ּ�: ');
  Readln(AddressList[iDataSize].Address);

  GotoXY(10, 11);
  Writeln('�Է��� ���������� �Ϸ�Ǿ����ϴ�.');

  Readln;
end;

procedure do_SearchAddress;
var
  Loop : integer;
  stName : string;
begin
  ClrScr;

  GotoXY(10, 6);
  Write(' �˻��� �̸��� �Է��ϼ��� : ');
  Readln(stName);

  for Loop := 1 to iDataSize do
    if stName = AddressList[Loop].Name then
      begin
        ClrScr;
        Writeln('No : ', Loop);
        Writeln('�̸� : ', AddressList[Loop].Name,
                ', ��ȭ��ȣ: ', AddressList[Loop].Phone);
        Writeln('�ּ� :', AddressList[Loop].Address, #13#10);
      end;
  Readln;
end;

procedure do_ListupAddress;
var
  Loop : integer;
begin
  ClrScr;

  for Loop := 1 to iDataSize do
    begin
      Writeln('No : ', Loop);
      Writeln('�̸�: ', AddressList[Loop].Name, ', ��ȭ��ȣ : ', AddressList[Loop].Phone);
      Writeln('�ּ�: ', AddressList[Loop].Address, #13#10);
    end;
  Readln;
end;

begin
  repeat
    case SelectMenu of
      1 : do_InputAddress;
      2 : do_SearchAddress;
      3 : do_ListupAddress;
      9 : Break;
    end;
  until false;
end.

