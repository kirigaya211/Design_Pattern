unit SmsListener;

interface
uses EventListeners;

type
  TSmsListener = class(TInterfacedObject, IEventListeners)
    private
      FMessage: string;
    public
      constructor Create;
      procedure Update(AMessage: string);
  end;

implementation

{ TSmsListener }

constructor TSmsListener.Create;
begin
  FMessage:= 'SMS received a notification: ';
end;

procedure TSmsListener.Update(AMessage: string);
begin
  FMessage:= FMessage + AMessage;
  Writeln(FMessage);
end;

end.
