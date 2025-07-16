unit clsSimulate;

interface
uses System.SysUtils,intfQuackable, clsMallardDuck, clsRedHeadDuck, clsRubberDuck, clsDuckCall, clsGooseAdapter,clsGeese, clsQuackCounter;
type
  TSimulate = class
    private
      FMallardDuck: IQuackable;
      FRedHeadDuck: IQuackable;
      FDuckCall: IQuackable;
      FRubberDuck: IQuackable;
      FGooseDuckAdapter: IQuackable;
      FGooseDuck: TGooseDuck;
      FQuackCount: IQuackable;
    public
      constructor Create;
      procedure Simulation;
  end;


implementation

{ TSimulate }

constructor TSimulate.Create;
begin
  FMallardDuck:= TQuackCounter.QuackCounter(FMallardDuck);
  FRedHeadDuck:= TRedHeadDuck.Create;
  FDuckCall:= TDuckCall.Create;
  FRubberDuck:= TRubberDuck.Create;
  FGooseDuckAdapter:= TGooseAdapter.Create(FGooseDuck);
end;

procedure TSimulate.Simulation;
begin
  FMallardDuck.Quack;
  FRedHeadDuck.Quack;
  FDuckCall.Quack;
  FRubberDuck.Quack;
  FGooseDuckAdapter.Quack;



end;

end.
