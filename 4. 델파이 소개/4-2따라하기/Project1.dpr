program Project1;

uses
  Forms,
  ex1 in 'ex1.pas' {Form1},
  ex2 in 'ex2.pas' {Form2},
  ex3 in 'ex3.pas' {Form3},
  ex4 in 'ex4.pas' {Form4},
  ex5 in 'ex5.pas' {Form5},
  ex6 in 'ex6.pas' {Form6},
  ex7 in 'ex7.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  //Application.CreateForm(TForm1, Form1);
  //Application.CreateForm(TForm2, Form2);
  //Application.CreateForm(TForm3, Form3);
  //Application.CreateForm(TForm4, Form4);
  //Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
