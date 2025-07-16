unit clsRubberDuck;

interface
uses intfQuackable;

type
  TRubberDuck = class(TInterfacedObject, IQuackable)
    public
      procedure Quack;
  end;



implementation

{ TRubberDuck }

procedure TRubberDuck.Quack;
begin
  Writeln('Squeak');
end;

end.
