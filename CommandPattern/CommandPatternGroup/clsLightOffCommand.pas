unit clsLightOffCommand;

interface
uses intfCommand, clsLight;

type
  TLightOffCommand = class(TInterfacedObject, ICommand)
    private
      FLight: TLight;
    public
      constructor Create(ALight: TLight);
      procedure Execute;
  end;

implementation

{ TLightOffCommand }

constructor TLightOffCommand.Create(ALight: TLight);
begin
  FLight:= ALight;
end;

procedure TLightOffCommand.Execute;
begin
  FLight.TurnOff;
end;

end.
