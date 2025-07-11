unit clsGooseAdapter;

interface
uses intfQuackable, clsGeese;
type
  TGooseAdapter = class(TInterfacedObject, IQuackable)
    private
      FGoose: TGooseDuck;
    public
      constructor Create(AGoose: TGooseDuck);
      procedure Quack;
  end;

implementation

{ GooseAdapter }

constructor TGooseAdapter.Create(AGoose: TGooseDuck);
begin
  FGoose:= AGoose;
end;

procedure TGooseAdapter.Quack;
begin
  FGoose.Honk;
end;

end.
