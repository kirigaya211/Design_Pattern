program SeasonChange;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  intfSubject in 'intfSubject.pas',
  clsSeasonChange in 'clsSeasonChange.pas',
  intfObserver in 'intfObserver.pas',
  clsDiscount in 'clsDiscount.pas';

var
    Season: TSeasonChange;
    Discount: TDiscount;
begin
  try
    Season:= TSeasonChange.Create(7,'N/A',False);
    Discount := TDiscount.Create();
    Season.RegisterObserver(Discount);
    Discount.AddDiscount(0.22);


    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
