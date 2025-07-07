unit clsRemoteControl;

interface
uses intfCommand;

type
  TRemoteControl = class
    private
      FCommand: ICommand;
    public
      procedure SetCommand(ACommand: ICommand);
      procedure PressButton;
  end;

implementation

{ TRemoteControl }

procedure TRemoteControl.PressButton;
begin
  if Assigned(FCommand) then
    FCommand.Execute;
end;

procedure TRemoteControl.SetCommand(ACommand: ICommand);
begin
  FCommand:= ACommand;
end;

end.
