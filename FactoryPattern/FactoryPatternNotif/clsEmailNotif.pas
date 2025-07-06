unit clsEmailNotif;

interface
uses clsNotif;

type
  TEmailNotif = class(TNotif)

    public
      procedure SendNotif(AEmailNotif: string); override;
  end;

implementation

{ TEmailNotif }

procedure TEmailNotif.SendNotif(AEmailNotif: string);
begin
  inherited;
  Writeln('Email Notification sent!!!');
end;

end.
