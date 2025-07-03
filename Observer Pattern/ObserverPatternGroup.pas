unit ObserverPatternGroup;

interface
uses intfSubject,intfObserver, System.Generics.Collections, System.SysUtils;

type
  TWeatherData = class(TInterfacedObject, ISubject)

  private
    FObservers: TList<IObserver>;

  public
    constructor Create;
    procedure registerObserver(AObserver: IObserver);
    procedure removeObserver(AObserver: IObserver);
    procedure notifyObserver;
    function getTemperature: Double;
    function getHumidity: Double;
    function getPressure: Double;
    procedure measurementChanged;

  end;

implementation

constructor TWeatherData.Create;
begin
  FObservers := TList<IObserver>.Create;
end;

function TWeatherData.getHumidity: Double;
begin

end;

function TWeatherData.getPressure: Double;
begin

end;

function TWeatherData.getTemperature: Double;
begin

end;

procedure TWeatherData.measurementChanged;
begin

end;

procedure TWeatherData.notifyObserver;
begin

end;

procedure TWeatherData.registerObserver(AObserver: IObserver);
begin
  if FObservers.Contains(AObserver) then
    FObservers.Add(AObserver);
end;

procedure TWeatherData.removeObserver;
begin

end;

end.
