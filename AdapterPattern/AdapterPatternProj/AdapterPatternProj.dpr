program AdapterPatternProj;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  intfNewTarget in 'intfNewTarget.pas',
  clsNewTarget in 'clsNewTarget.pas',
  intfOldTarget in 'intfOldTarget.pas',
  clsOldTarget in 'clsOldTarget.pas',
  clsAdapter in 'clsAdapter.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
