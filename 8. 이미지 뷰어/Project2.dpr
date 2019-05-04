program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {frFolder: TFrame},
  Unit3 in 'Unit3.pas' {frImagelist: TFrame},
  Unit4 in 'Unit4.pas' {frImage: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
