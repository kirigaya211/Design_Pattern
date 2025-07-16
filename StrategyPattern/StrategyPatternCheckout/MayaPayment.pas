unit MayaPayment;

interface
uses Payment;
type
  TMaya = class(TInterfacedObject,IPayment)
    public
      procedure Payed;
  end;

implementation

{ TMaya }

procedure TMaya.Payed;
begin
  Writeln('Paying with Maya');
end;

end.
