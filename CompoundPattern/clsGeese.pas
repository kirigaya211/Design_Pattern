unit clsGeese;

interface

type
  TGoose = class
    public
      procedure Honk;
  end;

implementation

{ TGoose }

procedure TGoose.Honk;
begin
  Writeln('Honk');
end;

end.
