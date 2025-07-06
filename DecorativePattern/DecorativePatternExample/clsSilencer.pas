unit clsSilencer;

interface
uses ABehaviorDecorator;

type
  TSilencer = class(ADecorator)

  public
    function GetType: string; override;
    function GetCost: Double; override;
  end;


implementation

{ TSilencer }





{ TSilencer }

function TSilencer.GetCost: Double;
begin
  Result:= FGun.GetCost + 995.00;
end;

function TSilencer.GetType: string;
begin
  Result:= FGun.GetType + ' with silencer,';
end;

end.
