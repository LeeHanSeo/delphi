program Project1;

uses
  Forms,
  ex1 in 'ex1.pas' {Form1},
  ex2 in 'ex2.pas' {Form2},
  ex3 in 'ex3.pas' {Form3},
  ex4 in 'ex4.pas' {Form4},
  ex5 in 'ex5.pas' {Form5},
  ex6 in 'ex6.pas' {Form6},
  ex7 in 'ex7.pas' {Form7},
  ex8 in 'ex8.pas' {Form8},
  ex9 in 'ex9.pas' {Form9},
  ex10 in 'ex10.pas' {Form10},
  ex11 in 'ex11.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  //Application.CreateForm(TForm1, Form1);
  //Application.CreateForm(TForm2, Form2);
  //Application.CreateForm(TForm3, Form3);
  //Application.CreateForm(TForm4, Form4);
  //Application.CreateForm(TForm5, Form5);
  //Application.CreateForm(TForm6, Form6);
  //Application.CreateForm(TForm7, Form7);
  //Application.CreateForm(TForm8, Form8);
  //Application.CreateForm(TForm9, Form9);
  //Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.
