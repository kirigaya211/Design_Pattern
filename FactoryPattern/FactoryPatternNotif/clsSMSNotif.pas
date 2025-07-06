unit clsSMSNotif;

interface
uses clsNotif;

type
  TSMSNotif = class(TNotif)

    public
      procedure SendNotif(ASMSNotif: string);override;
  end;

implementation

{ TSMSNotif }

procedure TSMSNotif.SendNotif(ASMSNotif: string);
begin
  inherited;
  Writeln('SMS Notification sent!!!');
end;

end.
