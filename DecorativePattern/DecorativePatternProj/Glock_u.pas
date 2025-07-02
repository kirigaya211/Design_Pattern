unit Glock_u;

interface
uses
  Gun_u;

type
  TGlock = class(AGun)

  public
    constructor Create;
    function Cost():Double; override;
  end;

implementation

constructor TGlock.Create;
begin
  inherited;
  FType := 'Glock 19';
end;

function TGlock.Cost():Double;
begin
  Result := 6940.00;
end;

end.
