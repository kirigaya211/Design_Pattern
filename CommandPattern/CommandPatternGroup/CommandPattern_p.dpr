program CommandPattern_p;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  intfCommand in 'intfCommand.pas',
  clsLight in 'clsLight.pas',
  clsLightOnCommand in 'clsLightOnCommand.pas',
  clsLightOffCommand in 'clsLightOffCommand.pas',
  clsRemoteControl in 'clsRemoteControl.pas';

var
  Light: TLight;
  Remote: TRemoteControl;
  LightOn: ICommand;
  LightOff: ICommand;

begin
  try
    Light:= TLight.Create;
    Remote:= TRemoteControl.Create;

    LightOn:= TLightOnCommand.Create(Light);
    LightOff:= TLightOffCommand.Create(Light);

    Remote.SetCommand(LightOn);
    Remote.PressButton;

    Remote.SetCommand(LightOff);
    Remote.PressButton;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
