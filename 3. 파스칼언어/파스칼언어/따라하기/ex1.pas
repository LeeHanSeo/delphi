unit ex1;

interface

implementation

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  Length = 19;

var
  Loop1, Loop2, Middle, Index, Width : integer;

begin
  Middle := (Length div 2 ) + 1;

  for Loop1 := 1 to Length do begin
    Index := Middle - abs(Middle-Loop1);      //abs : Àý´ë°ª(+)
    Width := (Index-1) * 2 + 1;

    for Loop2 := 1 to Middle - Index do Write(' ');

    for Loop2 := 1 to Width do Write('*');

    Writeln;
end;
  Readln;

end.
