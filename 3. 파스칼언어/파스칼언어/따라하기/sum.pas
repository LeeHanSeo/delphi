unit sum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$APPTYPE CONSOLE}

var
  Loop, hap : integer;

begin
  hap := 0;

  for Loop := 1 to 100 do hap := hap + Loop;

  Writeln('1���� 100���� ���� : ', hap);

  Readln;

end.
 