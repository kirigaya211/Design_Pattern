unit ABehaviorDecorator;

interface
uses clsGun;

type
  ADecorator = class(TInterfacedObject, TGun)
    protected
      FGun: TGun;
    public
      constructor Create(AGun: TGun);
      function GetType: string; virtual;
      function GetCost: Double; virtual;
  end;


implementation

{ ADecorator }



constructor ADecorator.Create(AGun: TGun);
begin
  FGun:= AGun;
end;

function ADecorator.GetCost: Double;
begin
  Result:= FGun.GetCost;
end;

function ADecorator.GetType: string;
begin
  Result:= FGun.GetType;
end;

end.
