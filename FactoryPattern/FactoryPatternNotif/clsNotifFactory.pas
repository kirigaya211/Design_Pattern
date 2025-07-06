unit clsNotifFactory;

interface
uses clsNotif, clsEmailNotif, clsSMSNotif, System.SysUtils;


type
  TNotifFactory = class
    public
      class function CreateNotif(AType: string):TNotif;
  end;


implementation

{ TNotifFactory }


class function TNotifFactory.CreateNotif(AType: string): TNotif;
begin
  AType := LowerCase(AType);
  if AType = 'email' then
    Result:= TEmailNotif.Create
  else if AType = 'sms' then
    Result:= TSMSNotif.Create
  else
    Writeln('No valid type of Notification');
end;

end.
