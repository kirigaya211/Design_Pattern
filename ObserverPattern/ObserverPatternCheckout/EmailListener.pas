unit EmailListener;

interface
uses EventListeners;

type
  TEmailListener = class(TInterfacedObject, IEventListeners)
    private
      FMessage: string;
    public
      constructor Create;
      procedure Update(AMessage: string);
  end;
implementation

{ TEmailListener }

constructor TEmailListener.Create;
begin
  FMessage:= 'Email ';
end;

procedure TEmailListener.Update(AMessage: string);
begin
  FMessage:= FMessage+AMessage;
  Writeln(FMessage);
end;

end.
