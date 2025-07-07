unit clsSimplePizzaFactory;

interface
uses clsPizza, clsCheesePizza,System.SysUtils;

type
  TSimplePizzaFactory = class(TPizza)

    private
      FPizza: TPizza;
    public
      constructor Create(PizzaType: string);
      function GetPizza(): TPizza;
  end;

implementation

{ TSimplePizzaFactory }

constructor TSimplePizzaFactory.Create(PizzaType: string);
begin
  if LowerCase(PizzaType) = 'cheese' then
    begin
    FPizza :=  TCheesePizza.Create;
    Writeln('Cheese Pizza created');
    end
  else
    Writeln('Unknow Pizza not in Menu');

  GetPizza();
end;



function TSimplePizzaFactory.GetPizza: TPizza;
begin
  Result:= FPizza;
end;

end.
