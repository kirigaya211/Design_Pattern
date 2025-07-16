unit EmailNotifierApp;

interface
uses CreatorNotifier,Notifier,EmailNotifier;

type
  TEmailNotifierApp = class(TCreatorNotifier)
    function CreateNotif: INotifier; override;
  end;

implementation

{ TEmailNotifierApp }

function TEmailNotifierApp.CreateNotif: INotifier;
begin
  Result := TEmailNotifier.Create;
end;

end.
