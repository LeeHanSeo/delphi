program Project1;

{$APPTYPE CONSOLE}

//클래스 연산자

uses
  SysUtils;

type
  TPerson = class
    Name : string;
    Age : integer;
  end;

  TMan = class(TPerson)
  end;

  TWoman = class(TPerson)
  end;

var
  Person : TPerson;
  Lee : TMan;
  Park : TWoman;

begin
  Lee:= TMan.Create;
  Park:= TWoman.Create;

  WriteLn('Lee is TMan = ', Lee is TMan);
  WriteLn('Lee is TPerson = ', Lee is TPerson);

  Person:= Park as TPerson;
  Person.Name:= 'Mrs. Park';
  WriteLn('Person의 이름 : ', Park.Name);

  ReadLn;
end.

 
