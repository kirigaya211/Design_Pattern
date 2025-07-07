unit clsLight;

interface

type
  TLight = class

    public
      procedure TurnOn;
      procedure TurnOff;
  end;

implementation

{ TLight }

procedure TLight.TurnOff;
begin
  Writeln('Light is OFF');
end;

procedure TLight.TurnOn;
begin
  Writeln('Light is ON');
end;

end.
