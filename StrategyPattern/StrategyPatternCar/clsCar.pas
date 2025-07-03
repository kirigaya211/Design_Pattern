unit clsCar;

interface
uses intfDriveType;

type
  TCar = class(TObject)

    protected
      FDriveType: IDriveType;
      FDisplayCar: string;
    public
      constructor Create;
      procedure DisplayCar();
      procedure displayType();
  end;

implementation

constructor TCar.Create;
begin
  FDisplayCar:= 'I am a Car';
end;

procedure TCar.DisplayCar();
begin
  Writeln(FDisplayCar);
end;

procedure TCar.displayType();
begin
  FDriveType.driveType();
end;

end.
