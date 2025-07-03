unit clsFlyNoWay;

interface

uses intfFlyBehavior;

type
  TFlyNoWay = class(TInterfacedObject,IFlyBehavior)

  public
    procedure Fly();
  end;

implementation

procedure TFlyNoWay.Fly();
begin
  Writeln('Cannot fly');
end;

end.
