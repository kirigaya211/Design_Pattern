unit EmailNotifier;

interface
uses Notifier;

type
  TEmailNotifier = class(TInterfacedObject, INotifier)
    public
      procedure Display(AMessage: string);
  end;

implementation

{ TEmailNotifier }

procedure TEmailNotifier.Display(AMessage: string);
begin
  Writeln('Sending Email: ', AMessage);
end;

end.
