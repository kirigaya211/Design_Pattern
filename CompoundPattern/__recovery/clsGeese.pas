unit clsGeese;

interface

type
  TGooseDuck = class
    public
      procedure Honk;
  end;

implementation

{ TGoose }

procedure TGooseDuck.Honk;
begin
  Writeln('Honk');
end;

end.
