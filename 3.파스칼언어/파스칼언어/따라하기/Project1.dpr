program Project1;

uses
  Forms,
  sum in 'sum.pas' {Form1},
  Ans in 'Ans.pas' {Form2},
  gop in 'gop.pas',
  gugudan in 'gugudan.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
