unit clsFlyWithWings;

interface
uses intfFlyBehavior;

type
  TFlyWithWings = class(TInterfacedObject,IFlyBehavior)

  public
    procedure Fly();
  end;


implementation

procedure TFlyWithWings.Fly();
begin
  Writeln('Flying with wings');
end;

end.
