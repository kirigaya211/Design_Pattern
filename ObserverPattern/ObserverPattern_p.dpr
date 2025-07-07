program ObserverPattern_p ;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  intfSubject in 'intfSubject.pas',
  clsWeatherData in 'clsWeatherData.pas',
  intfObserver in 'intfObserver.pas',
  intfDisplayElement in 'intfDisplayElement.pas',
  clsCurrentConditionDisplay in 'clsCurrentConditionDisplay.pas',
  clsStaticsDisplay in 'clsStaticsDisplay.pas',
  clsThirdPartyDisplay in 'clsThirdPartyDisplay.pas',
  clsForecastDisplay in 'clsForecastDisplay.pas';


var
  WeatherData: TWeatherData;
  DisplayCondition: TCurrentConditionDisplay;

begin
  try
    WeatherData := TWeatherData.Create(28,40.6, 10.1);
    DisplayCondition := TCurrentConditionDisplay.Create(WeatherData);
    WeatherData.registerObserver(DisplayCondition);
    WeatherData.notifyObserver;
    DisplayCondition.display;
    WeatherData.setTemperature(31.0);
    DisplayCondition.display;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
