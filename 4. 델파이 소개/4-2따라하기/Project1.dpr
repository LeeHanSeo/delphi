program Project1;

uses
  Forms,
  ex1 in 'ex1.pas' {Form1},
  ex2 in 'ex2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
