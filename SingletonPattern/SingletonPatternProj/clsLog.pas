unit clsLog;

interface

type
  TLog = class
    strict private
      class var FLog : TLog;
      FMessage: string;
      constructor Create;
    public
      class function GetLogInstantiate: TLog;
      procedure LogMessage(AMessage: string);
  end;

implementation

{ TLog }

constructor TLog.Create;
begin
  inherited;
  FMessage := 'gwapo ko';
  Writeln('Instantiated');
end;

class function TLog.GetLogInstantiate: TLog;
begin
  if not Assigned(FLog) then
    FLog := TLog.Create
  else
    Writeln('already instantiated one');
  Result:= FLog;
end;

procedure TLog.LogMessage(AMessage: string);
begin
  FMessage := FMessage + AMessage;
  Writeln(FMessage);
end;

end.
