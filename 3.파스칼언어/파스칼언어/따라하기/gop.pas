unit gop;

interface

uses
  SysUtils;

{$APPTYPE CONSOLE}

implementation

var Loop, gop2 : integer;

begin
  gop2 := 1;

  for Loop := 1 to 10 do gop2 := gop2 * Loop;

  Writeln('1���� 10������ ��:  ', gop2);

  Readln;
end.
 