program Project1;

{$APPTYPE CONSOLE}
//상속
uses
  SysUtils;

type
  TPerson = class
    Name : String;
    Age  : Integer;
    procedure Growup;
  end;

  TMan = class(TPerson)
    procedure man_growup;
  end;

  TWoman = class(TPerson)
    procedure woman_growup;
  end;

var
  Lee  : TMan;
  Park : TWoman;

{ TPerson }
procedure TPerson.Growup;
begin
  Age := Age + 1;
end;

{ TMan }
procedure TMan.man_growup;
begin
  Writeln('남자는 군대간다!');
end;

{ TWoman }
procedure TWoman.woman_growup;
begin
  Writeln('여자는 출산한다!');
end;

begin
  Lee := TMan.Create;
  Lee.Name := '이한서';
  Lee.Age  := 20 + 6;

  Park := TWoman.Create;
  Park.Name := '박보영';
  Park.Age  := Lee.Age + 3;

  Writeln(' 이름 : ', Lee.Name);
  Writeln(' 나이 : ', Lee.Age);

  Writeln(' 군대 훈련 받기 소감 : ');
  Lee.man_growup;

  Writeln;

  Writeln(' 이름 : ', Park.Name);
  Writeln(' 나이 : ', Park.Age);

  Writeln(' 출산 후 소감 : ');
  Park.woman_growup;

  Writeln;

  Readln;

end.
 
