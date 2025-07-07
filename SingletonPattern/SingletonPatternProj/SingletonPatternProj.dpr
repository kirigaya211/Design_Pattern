program SingletonPatternProj;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsLog in 'clsLog.pas';

var Log:TLog;

begin
  try
    TLog.GetLogInstantiate;
    Log.LogMessage('Gwapo kaayo ko');
    TLog.GetLogInstantiate;
    Log.LogMessage('2nd instance');
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
