unit clsForecastDisplay;

interface
uses intfObserver, intfDisplayElement;

type
  TForecastDisplay = class(TInterfacedObject, IObserver, IDisplayElement)

    public
      procedure display;
      procedure update;
  end;

implementation

{ TForecastDisplay }

procedure TForecastDisplay.display;
begin

end;

procedure TForecastDisplay.update;
begin

end;

end.
