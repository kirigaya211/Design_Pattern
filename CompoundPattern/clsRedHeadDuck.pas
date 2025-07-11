unit clsRedHeadDuck;

interface
uses intfQuackable;

type
  TRedHeadDuck = class(TInterfacedObject, IQuackable)
    public
      procedure Quack;
  end;

implementation

{ RedHeadDuck }

procedure TRedHeadDuck.Quack;
begin
  Writeln('Quack');
end;

end.
