unit clsStaticsDisplay;

interface
uses intfObserver, intfDisplayElement;

type
  TStatistics = class(TInterfacedObject, IObserver, IDisplayElement)

    public
      procedure display;
      procedure update;
  end;

implementation

{ TStatistics }

procedure TStatistics.display;
begin

end;

procedure TStatistics.update;
begin

end;

end.
