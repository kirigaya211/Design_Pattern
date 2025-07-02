unit clsDog_u;

interface

type
  TDog = class(TObject)

    private
      FName: string;
      FColour: string;
      FWeight: Real;
   published
      property Name: String read FName write FName;
      property Colour: String read FColour write FColour;
      property Weight: Real read FWeight write FWeight;

   public
    function Bark(): string;
  end;

implementation

function TDog.Bark(): string;
begin
  Result := 'arf arf arf';
end;

end.
