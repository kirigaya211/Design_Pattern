unit clsPersonalAccess;

interface
uses System.SysUtils;

type
  TPersonalAccess = class(TInterfacedObject)
    private
      FAccess: string;
    public
      procedure SetAccess(const Value: string);
  end;

implementation

{ TPersonalAccess }

procedure TPersonalAccess.SetAccess(const Value: string);
begin
  FAccess := Value;
  Writeln(FAccess);
end;

end.
