unit DatabaseConnect;

interface

type
  TDatabaseConnect = class
    private
      class var FDatabase: TDatabaseConnect;
      constructor Create;
    public
      class function GetInstance:TDatabaseConnect;
  end;

implementation

{ TChat }

constructor TDatabaseConnect.Create;
begin
  Writeln('Creating Database');
end;

class function TDatabaseConnect.GetInstance:TDatabaseConnect;
begin
  if FDatabase = nil then
    FDatabase:=TDatabaseConnect.Create;
  Writeln('Connecting Database');
  Result := FDatabase;
end;

end.
