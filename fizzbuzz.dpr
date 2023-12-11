program fizzbuzz;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

procedure main;
var
  num: integer;
begin
  Readln(num);
  Writeln(Unit1.main(num));
  Readln;
end;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    main;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
