unit clsQuack;

interface
uses intfQuackBehavior;

type
  TQuack = class(TInterfacedObject, IQuackBehavior)

    public
      procedure Quack();
  end;

implementation

procedure TQuack.Quack();
begin
  Writeln('Quacking Quacking Quacking');
end;

end.
