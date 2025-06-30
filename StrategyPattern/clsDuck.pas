unit clsDuck;

interface

type
  TDuck = class(TObject)

  private
    Fly: Boolean;
    Quack: Boolean;
  public
    constructor Create(sFly:Boolean; sQuack:Boolean);

    //mutators -> setter

    //accessor -> getter
      function getFly: string;
    //auxillary
  end;


implementation

{ TDuck }

constructor TDuck.Create(sFly, sQuack: Boolean);
begin
  Fly := sFly;
  Quack := sQuack
end;

function TDuck.getFly: string;
begin
  if Fly = True then
    Result := 'This Duck can Fly'
  else
    Result := 'This Duck cannot fly';
end;

end.
