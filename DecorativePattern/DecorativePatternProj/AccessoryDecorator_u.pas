unit AccessoryDecorator_u;

interface
uses
  Gun_u;

type
  AAccessoryDecorator = class(AGun)

  protected
    FGun: AGun;
  public
    constructor Create(AGun: AGun);
    function getType:string; virtual; abstract;
  end;

implementation

constructor AAccessoryDecorator.Create(AGun: AGun);
begin
  inherited Create;
  FGun := AGun;
end;


end.
