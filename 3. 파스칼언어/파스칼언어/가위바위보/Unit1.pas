unit Unit1;

interface

implementation

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  PC, Player : integer;
  stPC, stPlayer : string;

begin
  Randomize;  //랜덤으로 뽑히게 함(무작위 패턴)

  PC := Round(Random(3));

  Write('가위(1),바위(2),보(3)를 입력하세요 :');
  Readln(Player);
  Player := Player - 1;

  case PC of
    0 : stPC := '가위';
    1 : stPC := '바위';
    2 : stPC := '보';
  end;

  case Player of
    0 : stPlayer := '가위';
    1 : stPlayer := '바위';
    2 : stPlayer := '보';
  end;

  Writeln('컴퓨터 : ', stPC, '  사용자 : ', stPlayer);

  if PC = Player then Writeln('비겼습니다.')
  else if PC = ((Player + 2) mod 3) then Writeln('이겼습니다')
  else Writeln('졌습니다.');

  Readln;

end.
 