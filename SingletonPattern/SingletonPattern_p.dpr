program SingletonPattern_p;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DatabaseConnect in 'DatabaseConnect.pas';

var
  Database: TDatabaseConnect;
  DummyConnection: TDatabaseConnect;

begin
  try
    Database:=TDatabaseConnect.GetInstance;
    DummyConnection:= TDatabaseConnect.GetInstance;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
