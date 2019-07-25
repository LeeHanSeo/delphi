program Project7;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TPerson = class
    Name: string;
    Age : Integer;
    procedure Growup;
  end;

{ TPerson }

procedure TPerson.Growup;
begin
  Age := Age + 1;
end;

var
  a : TPerson;

begin
  a := TPerson.Create;
  try
    a.Name := '·ùÁ¾ÅÃ';
    a.Age  := 1;
    a.Growup;

    Writeln(a.Name, ' : ', a.Age);
  finally
    a.Free;
  end;

  Readln;
end.

