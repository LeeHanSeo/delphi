unit Ans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm2 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$APPTYPE CONSOLE}

var
  Loop, gop : integer;

begin
  for Loop := 1 to 100 do gop := gop * Loop;

  Writeln('1부터 100까지 곱은 : ', gop);

  Readln;

end.
 