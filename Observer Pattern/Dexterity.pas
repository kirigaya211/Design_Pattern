unit Dexterity;

interface
type
  TDexterity = class(TObject)
  private
    var Dexterity: Integer;

  public
    constructor Create(ADexterity: Integer);
    procedure setDexterity(Level: Integer);
    function getDexterity(): Integer;
  end;
implementation

{ TDexterity }

constructor TDexterity.Create(ADexterity: Integer);
begin
  Dexterity := ADexterity;
end;

function TDexterity.getDexterity: Integer;
begin
  Result := Dexterity;
end;

procedure TDexterity.setDexterity(Level: Integer);
begin
  Dexterity := Level *1;
end;

end.
