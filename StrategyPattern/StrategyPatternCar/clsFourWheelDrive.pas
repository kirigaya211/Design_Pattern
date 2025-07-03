unit clsFourWheelDrive;

interface
uses intfDriveType;

type
  TFourWheelDrive = class(TInterfacedObject, IDriveType)
  public
    procedure DriveType();
  end;

implementation

procedure TFourWheelDrive.DriveType();
begin
  Writeln('I am a Four Wheel Drive');
end;

end.
