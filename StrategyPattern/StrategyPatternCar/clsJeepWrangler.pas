unit clsJeepWrangler;

interface
uses clsCar, clsFourWheelDrive;

type
  TJeepWrangler = class(TCar)

    public
      constructor Create;
  end;

implementation

constructor TJeepWrangler.Create;
begin
  inherited ;
  FDisplayCar:= 'I am a Jeep Wrangler';
  FDriveType:= TFourWheelDrive.Create;
end;



end.
