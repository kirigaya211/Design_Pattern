unit ABeverage;

interface

type
  Beverage = class

  protected
    FDescription: string;
  public
    constructor Create;virtual;
    function getDescription: string; virtual; abstract;
    function Cost(): Double; virtual; abstract;
  end;

implementation

constructor Beverage.Create;
begin
  FDescription := 'Unknown Beverage';
end;

end.
