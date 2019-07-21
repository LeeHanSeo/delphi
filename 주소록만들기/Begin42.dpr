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
  Write(' 1.주소입력');

  GotoXY(10, 7);
  Write(' 2.주소검색');

  GotoXY(10, 8);
  Write(' 3.주소 목록 보기');

  GotoXY(10, 9);
  Write(' 9.종료');

  GotoXY(10, 11);
  Write('메뉴를 선택하세요 : ');

  Readln(Result);
end;

procedure do_InputAddress;
begin
  ClrScr;

  iDataSize := iDataSize + 1;

  GotoXY(10, 6);
  Write(' 1. 이름: ');
  Readln(AddressList[iDataSize].Name);

  GotoXY(10, 7);
  Write(' 2. 전화번호: ');
  Readln(AddressList[iDataSize].Phone);

  GotoXY(10, 8);
  Write(' 3. 주소: ');
  Readln(AddressList[iDataSize].Address);

  GotoXY(10, 11);
  Writeln('입력이 정상적으로 완료되었습니다.');

  Readln;
end;

procedure do_SearchAddress;
var
  Loop : integer;
  stName : string;
begin
  ClrScr;

  GotoXY(10, 6);
  Write(' 검색할 이름을 입력하세요 : ');
  Readln(stName);

  for Loop := 1 to iDataSize do
    if stName = AddressList[Loop].Name then
      begin
        ClrScr;
        Writeln('No : ', Loop);
        Writeln('이름 : ', AddressList[Loop].Name,
                ', 전화번호: ', AddressList[Loop].Phone);
        Writeln('주소 :', AddressList[Loop].Address, #13#10);
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
      Writeln('이름: ', AddressList[Loop].Name, ', 전화번호 : ', AddressList[Loop].Phone);
      Writeln('주소: ', AddressList[Loop].Address, #13#10);
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

