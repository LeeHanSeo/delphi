program Project1;

{$APPTYPE CONSOLE}

//Method�� ������ ������ġ, Virtual�� Override

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
  inherited;  //�θ��� �ڵ带 �״�� �����϶�.(#001)

  Age:= Age + 1;
end;

procedure TWoman.GrowUp;
begin
  Age:= Age - 1;
end;

begin
  Lee:= TMan.Create;
  Lee.Name:= '���Ѽ�';
  Lee.Age:= 26;
  Lee.GrowUp;

  Park:= TWoman.Create;
  Park.Name:= '�ں���';
  Park.Age:= 30;
  Park.GrowUp;

  WriteLn(' �̸� : ', Lee.Name);
  WriteLn(' ���� : ', Lee.Age);
  WriteLn;

  WriteLn(' �̸� : ', Park.Name);
  WriteLn(' ���� : ', Park.Age);
  WriteLn;

  ReadLn;
end.
 
