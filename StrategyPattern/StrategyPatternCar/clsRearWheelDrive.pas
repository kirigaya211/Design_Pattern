unit clsRearWheelDrive;

interface
uses intfDriveType;

type
  TRearWheelDrive = class(TInterfacedObject, IDriveType)

    public
      procedure Drivetype();
  end;

implementation

procedure TRearWheelDrive.Drivetype();
begin
  Writeln('I am a Rear Wheel Drive');
end;

end.
