program ObserverPatternCheckout;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  EventManager in 'EventManager.pas',
  EventListeners in 'EventListeners.pas',
  SmsListener in 'SmsListener.pas',
  EmailListener in 'EmailListener.pas',
  Checkout in 'Checkout.pas';

var
  Checkout: TCheckout;
  Email: TEmailListener;
  SMS: TSmsListener;

begin
  try
    Checkout:= TCheckout.Create;
    Email:= TEmailListener.Create;
    SMS:= TSmsListener.Create;
    Checkout.FEvent.Subscribe(Email);
    Checkout.FEvent.Subscribe(SMS);
    Checkout.Payment;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
