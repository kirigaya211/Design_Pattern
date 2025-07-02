unit THouseBlend;

interface
uses ABeverage;

type
  HouseBlend = class(Beverage)

  public
    constructor Create;
    function Cost(): Double; override;
  end;

implementation

constructor HouseBlend.Create;
begin
  inherited;
  FDescription := 'House Blend';
end;

function HouseBlend.Cost(): Double;
begin
  Result := 0.89;
end;



end.
