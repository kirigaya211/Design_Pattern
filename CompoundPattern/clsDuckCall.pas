unit clsDuckCall;

interface
uses intfQuackable;

type
  TDuckCall = class(TInterfacedObject, IQuackable)
    public
      procedure Quack;
  end;
implementation

{ TDuckCall }

procedure TDuckCall.Quack;
begin
  Writeln('Kwak');
end;

end.
