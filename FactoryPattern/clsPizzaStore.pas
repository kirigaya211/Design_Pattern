unit clsPizzaStore;

interface
uses clsSimplePizzaFactory, clsPizza;

type
  TPizzaStore = class(TObject)

    private
      FPizza: TPizza;
    public
      constructor Create(PizzaType: string);


  end;

implementation

{ TPizzaStore }

constructor TPizzaStore.Create(PizzaType: string);
begin
  FPizza := TSimplePizzaFactory.Create(PizzaType);
  FPizza.Bake;
  FPizza.Cut;
  FPizza.Box;
  FPizza.Prepare;
end;

end.
