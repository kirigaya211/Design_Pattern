unit Speed;

interface
type
  TSpeed = class(TObject)

  private
    var Speed: Integer;
  public
    constructor Create(ASpeed: Integer);
    procedure setSpeed(Level: Integer);
    function getSpeed(): Integer;
  end;

implementation

{ TSpeed }

constructor TSpeed.Create(ASpeed: Integer);
begin
  Speed := ASpeed;
end;

function TSpeed.getSpeed(): Integer;
begin
  Result := Speed;
end;

procedure TSpeed.setSpeed(Level: Integer);
begin
  Speed := Level *2;
end;

end.
