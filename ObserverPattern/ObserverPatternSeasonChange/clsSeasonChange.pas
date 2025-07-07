unit clsSeasonChange;

interface
uses intfSubject,System.Generics.Collections, System.SysUtils, intfObserver;

type
  TSeasonChange = class(TInterfacedObject, ISubject)

    private
      FMonth: Integer;
      FSeason: string;
      FSales: Boolean;
      FObserverList: TList<IObserver>;
    public
      constructor Create(AMonth: Integer; ASeason: string; ASales: Boolean);
      procedure RegisterObserver(AObserver: IObserver);
      procedure RemoveObserver(AObserver: IObserver);
      procedure NotifyObserver;
      procedure SetMonth(AMonth: Integer);
      procedure SetSeason(ASeason: string);
      procedure SetSales(ASales: Boolean);
      function GetMonth(): Integer;
      function GetSeason(): string;
      function GetSales(): Boolean;
  end;

implementation

{ TSeasonChange }

constructor TSeasonChange.Create(AMonth: Integer; ASeason: string;
  ASales: Boolean);
begin
  FObserverList := TList<IObserver>.Create;
  FMonth:= AMonth;
  FSeason:= ASeason;
  FSales:= ASales;
end;

function TSeasonChange.GetMonth: Integer;
begin
  Result:= FMonth;
end;

function TSeasonChange.GetSales: Boolean;
begin
  Result:= FSales;
end;

function TSeasonChange.GetSeason: string;
begin
  Result:= FSeason;
end;

procedure TSeasonChange.NotifyObserver;
var Observer: IObserver;
begin
  for Observer in FObserverList do
    Observer.Update;

end;

procedure TSeasonChange.RegisterObserver(AObserver: IObserver);
begin
  if FObserverList.Contains(AObserver) then
    FObserverList.Add(AObserver);
end;

procedure TSeasonChange.RemoveObserver(AObserver: IObserver);
begin
  FObserverList.Remove(AObserver);
end;


procedure TSeasonChange.SetMonth(AMonth: Integer);
begin
  FMonth:= AMonth;
end;

procedure TSeasonChange.SetSales(ASales: Boolean);
begin
  FSales:= ASales;
end;

procedure TSeasonChange.SetSeason(ASeason: string);
begin
  FSeason:= ASeason;
end;

end.
