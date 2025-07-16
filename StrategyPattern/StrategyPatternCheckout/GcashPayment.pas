unit GcashPayment;

interface
uses Payment;
type
  TGcashPayment = class(TInterfacedObject, IPayment)
    public
      procedure Payed;
  end;

implementation

{ TGcash }

procedure TGcashPayment.Payed;
begin
  Writeln('Paying with GCash');
end;

end.
