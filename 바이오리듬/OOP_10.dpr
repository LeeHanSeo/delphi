program OOP_10;

{$APPTYPE CONSOLE}

uses               
  SysUtils,
  Base in 'Base.pas';

var
  Line : TLine;
  PCurve : TPCurve;
  ECurve : TECurve;
  ICurve : TICurve;
  CurrentDays : TCurrentDays;

procedure CreateObjects;
begin
  Line   := TLine.Create;
  PCurve := TPCurve.Create;
  ECurve := TECurve.Create;
  ICurve := TICurve.Create;
  CurrentDays := TCurrentDays.Create;
end;

procedure DestroyObjects;      //FreeAndNil : 객체들을 삭제하고 레퍼런스 변수에 nil값을 대입하는 함수
begin
  FreeAndNil(Line);
  FreeAndNil(PCurve);
  FreeAndNil(ECurve);
  FreeAndNil(ICurve);
  FreeAndNil(CurrentDays);
end;

procedure do_GetBirthday;
var
  Birthday, Today : integer;
begin
  Write('생일을 입력하세요(yyyymmdd) : ');
  Readln(Birthday);

  Write('바이오리듬을 출력할 날짜를 입력하세요 (yyyymmdd) : ');
  Readln(Today);

  CurrentDays.GetHowManyDayYouLived(Birthday, Today);
end;

procedure do_DrawBiorhythem;
var
  i, Days : integer;
begin
  Line.Draw;

  Days:= CurrentDays.Value;
  for i := 1 to 78 do begin
    PCurve.Draw(i, Days + i - 1);
    ECurve.Draw(i, Days + i - 1);
    ICurve.Draw(i, Days + i - 1);
  end;

{
  for i:= 1 to 77 do begin
    PCureve.Draw(i, Days + i + 1);
    ECureve.Draw(i, Days + i + 1);
    ICureve.Draw(i, Days + i + 1);
  end;
}

end;

procedure Run;
begin
  do_GetBirthday;
  do_DrawBiorhythem;
end;

begin
  CreateObjects;
  try
    Run;
  finally
    DestroyObjects;
  end;

  Readln;
end.
