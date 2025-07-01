unit Agility;

interface
type
  TAgility = class(TObject)

  private
    var Agility: Integer;

  public
    constructor Create(AAgility: Integer);
    procedure setAgility(Level: Integer);
    function getAgility(): Integer;

  end;

implementation

{ TAgility }

constructor TAgility.Create(AAgility: Integer);
begin
  Agility:= AAgility;
end;

function TAgility.getAgility: Integer;
begin
  Result := Agility;
end;

procedure TAgility.setAgility(Level: Integer);
begin
  Agility := Level *2;
end;

end.
