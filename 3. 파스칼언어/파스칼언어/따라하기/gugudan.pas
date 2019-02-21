unit gugudan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm3 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  Loop1, Loop2 : integer;
implementation

{$APPTYPE CONSOLE}

begin
  for Loop1 := 2 to 9 do begin
    for Loop2 := 1 to 9 do
      Writeln(Loop1, ' X ', Loop2, ' = ', Loop1 * Loop2);

    Writeln;
    end;
  Writeln;
end.
 