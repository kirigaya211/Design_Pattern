unit clsGlock;

interface
uses clsGun;

type
  TGlock = class(TInterfacedObject,TGun)

  private
    FType: string;
    FCost: Double;
  public
    constructor Create;
    function GetType: string;
    function GetCost: Double;

  end;


implementation

{ TGlock }



constructor TGlock.Create;
begin
  FType:= 'Hand Gun';
  FCost:= 6940.00;
end;

function TGlock.GetCost: Double;
begin
  Result:= FCost;
end;

function TGlock.GetType: string;
begin
  Result:= FType;
end;

end.
