unit Checkout;

interface
uses Payment;
type
  TCheckout = class
    private
      FPayment: IPayment;
      procedure ExecutePayment;
    public
      constructor Create;
      procedure Payment(APayment: IPayment);

  end;


implementation

{ TCheckout }

constructor TCheckout.Create;
begin

end;

procedure TCheckout.ExecutePayment;
begin
  FPayment.Payed;
end;

procedure TCheckout.Payment(APayment: IPayment);
begin
  FPayment := APayment;
  ExecutePayment;
end;

end.
