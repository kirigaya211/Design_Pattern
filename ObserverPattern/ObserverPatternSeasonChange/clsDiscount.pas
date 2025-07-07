unit clsDiscount;

interface
uses intfObserver,System.Generics.Collections, System.SysUtils, clsSeasonChange;

type
  TDiscount = class(TInterfacedObject, IObserver)
    private
      FDiscount: Double;
      FDiscountList:array of Double;
      FSeason: string;
      FSale: Boolean;
      FSeasonChange: TSeasonChange;
    public
      constructor Create();
      procedure AddDiscount(ADiscount: Double);
      procedure Update;
      procedure SetDiscount(Index: Integer);
  end;

implementation

{ TDiscount }

constructor TDiscount.Create;
begin
  FDiscountList := [0.20,0.25,0.50,0.75];
  FDiscount:= 0;
end;

procedure TDiscount.SetDiscount(Index: Integer);
begin
  FDiscount := FDiscountList[Index];
end;

procedure TDiscount.AddDiscount(ADiscount: Double);
var I: Integer;
begin
  for I := 0 to Length(FDiscountList) do
    if FDiscountList[I] = ADiscount then
      Writeln('Discount already in the list, at index' + IntToStr(I))
    else
      FDiscountList[Length(FDiscountList)+1]:= ADiscount;
      Writeln('Discount '+FloatToStrF(ADiscount,ffFixed,15,2)+' added successfully');
end;


procedure TDiscount.Update;
begin
  FSeason := FSeasonChange.GetSeason;
  FSale:= FSeasonChange.GetSales;
end;


end.
