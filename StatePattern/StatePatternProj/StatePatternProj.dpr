program StatePatternProj;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsPlayer in 'clsPlayer.pas',
  intfPlayerState in 'intfPlayerState.pas',
  clsPlayingState in 'clsPlayingState.pas',
  clsPausedState in 'clsPausedState.pas',
  clsStoppedState in 'clsStoppedState.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
