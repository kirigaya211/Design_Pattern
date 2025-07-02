unit TestingDecoratorPattern;

interface

uses ABeverage, TExpresso, TMocha, SysUtils;

procedure TestCoffeeOrder;


implementation

procedure TestCoffeeOrder;
var
  MyCoffee: Beverage;
begin
  MyCoffee := Expresso.Create;
  MyCoffee := Mocha.Create(MyCoffee);
  MyCoffee := Mocha.Create(MyCoffee);

  Writeln(MyCoffee.getDescription);
  Writeln(FormatFloat('$0.00', MyCoffee.Cost));
end;

end.
