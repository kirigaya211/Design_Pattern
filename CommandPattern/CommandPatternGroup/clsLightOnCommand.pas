unit clsLightOnCommand;

interface
uses intfCommand, clsLight;

type
  TLightOnCommand = class(TInterfacedObject, ICommand)

    private
      FLight: TLight;
    public
      constructor Create(ALight: TLight);
      procedure Execute;
  end;



implementation

{ TLightCommand }

constructor TLightOnCommand.Create(ALight: TLight);
begin
  FLight:= ALight;
end;

procedure TLightOnCommand.Execute;
begin
  Flight.TurnOn;
end;

end.
