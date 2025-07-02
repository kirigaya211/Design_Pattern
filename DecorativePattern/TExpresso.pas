unit TExpresso;

interface
uses ABeverage;

type
  Expresso = class(Beverage)

  public
    constructor Create;
    function Cost(): Double; override;
  end;

implementation

constructor Expresso.Create;
begin
  inherited;
  FDescription := 'Expresso';
end;

function Expresso.Cost():Double;
begin
  Result := 1.99;
end;
end.
