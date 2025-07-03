unit clsSqueak;

interface
uses intfQuackBehavior;

type
  TSqueak = class(TInterfacedObject, IQuackBehavior)

    public
      procedure Quack();
  end;

implementation

procedure TSqueak.Quack();
begin
    Writeln('Squeaking Squeaking Squeaking');
end;

end.
