program Project1;

{$APPTYPE CONSOLE}

//Method의 유전자 변형장치, Virtual과 Override

uses
  SysUtils;

type
  TPerson = class
    Name : string;
    Age : integer;
    procedure GrowUp;
virtual;
  end;

  TMan = class(TPerson)
    procedure GrowUp; override;
  end;

  TWoman = class(TPerson)
    procedure GrowUp; override;
  end;

var
  Lee : TMan;
  Park : TWoman;

procedure TPerson.GrowUp;
begin
  Age:= Age + 1;  //#001
end;

procedure TMan.GrowUp;
begin
  inherited;  //부모의 코드를 그대로 실행하라.(#001)

  Age:= Age + 1;
end;

procedure TWoman.GrowUp;
begin
  Age:= Age - 1;
end;

begin
  Lee:= TMan.Create;
  Lee.Name:= '이한서';
  Lee.Age:= 26;
  Lee.GrowUp;

  Park:= TWoman.Create;
  Park.Name:= '박보영';
  Park.Age:= 30;
  Park.GrowUp;

  WriteLn(' 이름 : ', Lee.Name);
  WriteLn(' 나이 : ', Lee.Age);
  WriteLn;

  WriteLn(' 이름 : ', Park.Name);
  WriteLn(' 나이 : ', Park.Age);
  WriteLn;

  ReadLn;
end.
 
