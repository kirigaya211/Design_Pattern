unit ACondimentDecorator;

interface
uses ABeverage;

type
  CondimentDecorator = class(Beverage)

  protected
    FBeverage: Beverage;
  public
    constructor Create(ABeverage: Beverage);
    function getDescription:string;virtual; abstract;
  end;


implementation

constructor CondimentDecorator.Create(ABeverage: Beverage);
begin
  inherited Create;
  FBeverage := ABeverage
end;

end.
