unit clsMallardDuck;

interface
uses intfQuackable;

type
  TMallardDuck = class(TInterfacedObject,IQuackable)
    public
      procedure Quack;
  end;

implementation

{ MallardDuck }

procedure TMallardDuck.Quack;
begin
  Writeln('Quack');
end;

end.
