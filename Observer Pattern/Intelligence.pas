unit Intelligence;

interface
type
  TIntelligence = class(TObject)

  private
    var Intelligence: Integer;

  public
    constructor Create(AIntelligence: Integer);
    procedure setIntelligence(Level: Integer);
    function getIntelligence(): Integer;

  end;

implementation

{ TIntelligence }

constructor TIntelligence.Create(AIntelligence: Integer);
begin
  Intelligence := AIntelligence;
end;

function TIntelligence.getIntelligence: Integer;
begin
  Result := Intelligence;
end;

procedure TIntelligence.setIntelligence(Level: Integer);
begin
  Intelligence := Level *4;

end;

end.
