program FactoryPattern_p;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsPizzaStore in 'clsPizzaStore.pas',
  clsSimplePizzaFactory in 'clsSimplePizzaFactory.pas',
  clsPizza in 'clsPizza.pas',
  clsCheesePizza in 'clsCheesePizza.pas';

var PizzaStore: TPizzaStore;

begin
  try
    PizzaStore:= TPizzaStore.Create('Cheese');

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
