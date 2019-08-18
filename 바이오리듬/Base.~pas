unit Base;

interface

uses
  Classes, SysUtils, Crt;

type
  TLine = class
  public
    procedure Draw;
  end;

  TPCurve = class
  public
    procedure Draw(Index,CurrentDays:integer);
  end;

  TECurve = class
  public
    procedure Draw(Index,CurrentDays:integer);
  end;

  TICurve = class
  public
    procedure Draw(Index,CurrentDays:integer);
  end;

  TDateRec = record
    Year, Month, Day : word;
  end;

  TCurrentDays = class
  private
    FValue : integer;
    function DayOfYear(Year:integer):integer;
    function DayOfMonth(Year,Month:integer):Integer;
    function IntToDate(Value:integer):TDateRec;
  public
    function Value:integer;
    function GetHowManyDayYouLived(Birthday,Today:integer):integer;
  end;

implementation

procedure TLine.Draw;
var
  i : integer;
begin
  ClrScr;
  for i := 1 to 78 do begin
    GotoXY(i, 12);
    TextColor(White);
    Write('-');
  end;
end;

procedure TPCurve.Draw(Index, CurrentDays: integer);
var iY : integer;
begin
  iY := Round(Sin(CurrentDays*Pi*2/23)*10 ) + 12;
  GotoXY(Index, iY);
  TextColor(Blue);
  Write('P');
end;

procedure TECurve.Draw(Index, CurrentDays: integer);
var iY : integer;
begin
  iY := Round(sin(CurrentDays*Pi*2/28)*10)+12;
  GotoXY(Index, iY);
  TextColor(Red);
  Write('E');
end;

procedure TICurve.Draw(Index, CurrentDays: integer);
var
  iY : integer;
begin
  iY:= Round( Sin(CurrentDays*Pi*2/33)*10 ) + 12;
  GotoXY(Index, iY);
  TextColor(Yellow);
  Write('I');
end;

function TCurrentDays.DayOfYear(Year: Integer): integer;
begin
  if ((Year Mod 4) = 0) then begin
    if ((Year Mod 100) = 0) then begin
      if ((Year Mod 400) = 0) then DayOfYear:=366
      else DayOfYear:=365;
    end else
      DayOfYear:=366;
  end else
    DayOfYear:=365;
end;

function TCurrentDays.IntToDate(Value: integer): TDateRec;
begin
  Result.Year:= Value div 10000;
  Result.Month:= (Value - Result.Year*10000) div 100;
  Result.Day:= Value - Result.Year*10000 - Result.Month*100;
end;

function TCurrentDays.DayOfMonth(Year, Month: integer): Integer;
begin
  Result:= 0;
  case Month of
    1, 3, 5, 7, 8,10, 12 : Result:= 31;
    4, 6, 9, 11          : Result:= 30;
    2                    : if DayOfYear(Year) = 365 then Result:= 28
    else Result:= 29;
  end;
end;

function TCurrentDays.GetHowManyDayYouLived(Birthday, Today: integer): integer;
var
  Loop : Integer;
  StartDate, EndDate : TDateRec;
begin
  StartDate:= IntToDate(Birthday);
  EndDate:=   IntToDate(Today);

  Result:= 0;

  for Loop:= StartDate.Year to EndDate.Year-1 do
    Result:= Result + DayOfYear(Loop);

  for Loop:= 1 to StartDate.Month-1 do
    Result:= Result - DayOfMonth(StartDate.Year, Loop);

  Result:= Result - StartDate.Day;

  for Loop:= 1 to EndDate.Month-1 do
    Result:= Result + DayOfMonth(EndDate.Year, Loop);

  Result:= Result + EndDate.Day;
  FValue:= Result;
end;


function TCurrentDays.Value: integer;
begin
  Result:= FValue;
end;
{
var
  Line : TLine;
  PCurve : TPCurve;
  ECurve : TECurve;
  ICurve : TICurve;

  i : integer;

begin
  Line:= TLine.Create;
  Line.Draw;

  PCurve := TPCurve.Create;
  ECurve := TECurve.Create;
  ICurve := TICurve.Create;

  for i := 1 to 78 do
    begin
      PCurve.Draw(i, i + 1000);
      ECurve.Draw(i, i + 1000);
      ICurve.Draw(i, i + 1000);
    end;
  ReadLn;
 }
end.

