program StrategyPatternCar_p;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsCar in 'clsCar.pas',
  intfDriveType in 'intfDriveType.pas',
  clsFourWheelDrive in 'clsFourWheelDrive.pas',
  clsJeepWrangler in 'clsJeepWrangler.pas',
  clsFrontWheelDrive in 'clsFrontWheelDrive.pas',
  clsRearWheelDrive in 'clsRearWheelDrive.pas';

var Car:TCar;
begin
  try
    Car := TJeepWrangler.Create;
    Car.DisplayCar;
    Car.displayType;

    Writeln;
    Writeln('Press [Enter] to exit...');
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
