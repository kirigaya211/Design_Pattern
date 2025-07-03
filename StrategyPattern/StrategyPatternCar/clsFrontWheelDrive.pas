unit clsFrontWheelDrive;

interface
uses intfDriveType;

type
  TFrontWheelDrive = class(TInterfacedObject, IDriveType)

  public
    procedure DriveType();
  end;


implementation

procedure TFrontWheelDrive.DriveType();
begin
  Writeln('I am a Front Wheel Drive');
end;


end.
