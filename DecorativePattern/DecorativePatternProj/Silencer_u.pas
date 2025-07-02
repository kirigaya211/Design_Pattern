unit Silencer_u;

interface
uses
  AccessoryDecorator_u,Gun_u;

type
  TSilencer  = class(AAccessoryDecorator)

  public
    constructor Create(AGun: AGun);
    function getType(): string; override;
    function Cost(): Double;override;
  end;

implementation

constructor TSilencer.Create(AGun: AGun);
begin
  inherited Create(AGun);
end;

function TSilencer.getType(): string;
begin
  Result := FGun.getType() + ', Silencer';
end;

function TSilencer.Cost(): Double;
begin
  Result := FGun.Cost() + 995.00;
end;

end.
