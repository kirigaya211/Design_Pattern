unit CreatorNotifier;

interface
uses Notifier;

type
  TCreatorNotifier = class
    private
      Notifier: INotifier;
    public
      function CreateNotif: INotifier; virtual; abstract;
      procedure NotifyUser(AMessage: string);
  end;

implementation

{ TCreatorNotifier }

procedure TCreatorNotifier.NotifyUser(AMessage: string);
begin
  Notifier := CreateNotif;
  Notifier.Display(AMessage);
end;

end.
