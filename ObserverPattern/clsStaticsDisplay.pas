unit clsStaticsDisplay;

interface
uses intfObserver, intfDisplayElement,clsWeatherData, System.SysUtils;

type
  TStatistics = class(TInterfacedObject, IObserver, IDisplayElement)

    private
      FWeatherData: TWeatherData;
      FTemperatureList: array of Double;
    public
      procedure display;
      procedure update;
  end;

implementation

{ TStatistics }

procedure TStatistics.display;
begin
  Writeln(FloatToStrF(FWeatherData.getTemperature, ffFixed, 15,10));
end;

procedure TStatistics.update;
begin

end;

end.
