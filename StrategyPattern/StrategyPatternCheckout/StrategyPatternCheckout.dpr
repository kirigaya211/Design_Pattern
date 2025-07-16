program StrategyPatternCheckout;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Checkout in 'Checkout.pas',
  Payment in 'Payment.pas',
  GcashPayment in 'GcashPayment.pas',
  MayaPayment in 'MayaPayment.pas';

var
    FCheckout: TCheckout;
    FGcash: TGcashPayment;

begin
  try
    FCheckout:= TCheckout.Create;
    FGcash:= TGcashPayment.Create;
    FCheckout.Payment(FGcash);

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
