unit clsCurrentConditionDisplay;

interface

uses intfObserver, intfDisplayElement, clsWeatherData, System.SysUtils;

type
  TCurrentConditionDisplay = class(TInterfacedObject, IObserver, IDisplayElement)
    private
      Temperature: Double;
      Humidity: Double;
      Pressure: Double;
      WeatherData: TWeatherData;
    public
      constructor Create(AWeatherData: TWeatherData);
      procedure update();
      procedure display;
  end;

implementation

{ TCurrentConditionDisplay }

constructor TCurrentConditionDisplay.Create(AWeatherData: TWeatherData);
begin
  WeatherData:= AWeatherData;
  WeatherData.registerObserver(Self);
end;

procedure TCurrentConditionDisplay.display;
begin
  Writeln('Current conditions:'+(FloatToStrF(WeatherData.getTemperature, ffFixed,15,2))+'F degeress and '
                                      +(FloatToStrF(WeatherData.getHumidity, ffFixed,15,2))+'% humidity');
end;

procedure TCurrentConditionDisplay.update();
begin
  display();
end;

end.
