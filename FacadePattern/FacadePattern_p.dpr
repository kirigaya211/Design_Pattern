program FacadePattern_p;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsAmplifier in 'clsAmplifier.pas',
  clsDvdPlayer in 'clsDvdPlayer.pas',
  clsTuner in 'clsTuner.pas',
  intfSwitching in 'intfSwitching.pas',
  clsAudio in 'clsAudio.pas',
  clsCdPlayer in 'clsCdPlayer.pas',
  clsProjector in 'clsProjector.pas',
  clsTheaterLight in 'clsTheaterLight.pas',
  clsScreen in 'clsScreen.pas',
  clsPopcornPopper in 'clsPopcornPopper.pas',
  HomeTheaterFacade in 'HomeTheaterFacade.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
