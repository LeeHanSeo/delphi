program Project1;

{$APPTYPE CONSOLE}
//���
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
  Writeln('���ڴ� ���밣��!');
end;

{ TWoman }
procedure TWoman.woman_growup;
begin
  Writeln('���ڴ� ����Ѵ�!');
end;

begin
  Lee := TMan.Create;
  Lee.Name := '���Ѽ�';
  Lee.Age  := 20 + 6;

  Park := TWoman.Create;
  Park.Name := '�ں���';
  Park.Age  := Lee.Age + 3;

  Writeln(' �̸� : ', Lee.Name);
  Writeln(' ���� : ', Lee.Age);

  Writeln(' ���� �Ʒ� �ޱ� �Ұ� : ');
  Lee.man_growup;

  Writeln;

  Writeln(' �̸� : ', Park.Name);
  Writeln(' ���� : ', Park.Age);

  Writeln(' ��� �� �Ұ� : ');
  Park.woman_growup;

  Writeln;

  Readln;

end.
 
