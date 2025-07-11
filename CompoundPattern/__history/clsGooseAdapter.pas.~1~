unit clsGooseAdapter;

interface
uses intfQuackable, clsGeese;
type
  GooseAdapter = class(TInterfacedObject, IQuackable)
    private
      FGoose: TGoose;
    public
      constructor Create(AGoose: TGoose);
      procedure Quack;
  end;

implementation

{ GooseAdapter }

constructor GooseAdapter.Create(AGoose: TGoose);
begin
  FGoose:= AGoose;
end;

procedure GooseAdapter.Quack;
begin
  FGoose.Honk;
end;

end.
