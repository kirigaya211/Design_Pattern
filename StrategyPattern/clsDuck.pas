unit clsDuck;

interface
uses intfFlyBehavior, intfQuackBehavior;

type
  TDuck = class(TObject)
    protected
      FFlyBehavior: IFlyBehavior;
      FQuackBehavior: IQuackBehavior;
    public
      procedure Display();virtual;
      procedure performQuack();
      procedure performFly();
  end;

implementation

procedure TDuck.Display();
begin
  Writeln('I am a Duck');
end;

procedure TDuck.performQuack();
begin
  FQuackBehavior.Quack();
end;

procedure TDuck.performFly();
begin
  FFlyBehavior.Fly();
end;

end.
