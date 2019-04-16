program Project10;       //하위폴더찾기(추가수정해야함)

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure SearchDirectory(Path:String);
var
  Found : Integer;
  SearchRec : TSearchRec;

begin
  if Copy(Path, Length(Path), 1) <> '\' then Path := Path + '\';

  Writeln(Path);

  Found := FindFirst(Path+'*.*', faAnyFile, SearchRec);

  while Found = 0 do begin
    if (SearchRec.Name = '.') or (SearchRec.Name = '..') then begin
      FOund := FindNext(SearchRec);
      Continue;
  end;

  if (SearchRec.Attr and faDirectory) = faDirectory then
    SearchDirectory(Path+SearchRec.Name);

  Found := FindNext(SearchRec);
  end;
end;

end.
 