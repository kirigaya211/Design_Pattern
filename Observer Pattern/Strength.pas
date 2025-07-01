unit Strength;


interface


type
  TStrength = class(TObject)

  private
    var Strength: Integer;
  public
    constructor Create(AStrength:Integer);
    procedure setStrength(Level: Integer);
    function getStrength(): Integer;
  end;

implementation

constructor TStrength.Create(AStrength: Integer);
begin
  Strength := AStrength;
end;

procedure TStrength.setStrength(Level: Integer);
begin
  Strength := Level*5;
end;

function TStrength.getStrength(): Integer;
begin
  Result := Strength;
end;

end.
