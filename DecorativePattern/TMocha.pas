unit TMocha;

interface

uses ACondimentDecorator, ABeverage;

type
  Mocha = class(CondimentDecorator)

  public
    constructor Create(ABeverage: Beverage);
    function getDescription():string; override;
    function Cost(): Double; override;
  end;


implementation

constructor Mocha.Create(ABeverage: Beverage);
begin
  inherited Create(ABeverage);
end;

function Mocha.getDescription(): string;
begin
  Result := FBeverage.getDescription() + ', Mocha';
end;

function Mocha.Cost(): Double;
begin
  Result := FBeverage.Cost() + 0.20;
end;

end.
