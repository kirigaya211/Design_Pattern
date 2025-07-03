program StrategyPatternDuck_p;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsDuck in 'clsDuck.pas',
  intfFlyBehavior in 'intfFlyBehavior.pas',
  clsFlyWithWings in 'clsFlyWithWings.pas',
  clsFlyNoWay in 'clsFlyNoWay.pas',
  intfQuackBehavior in 'intfQuackBehavior.pas',
  clsQuack in 'clsQuack.pas',
  clsSqueak in 'clsSqueak.pas',
  clsMallardDuck in 'clsMallardDuck.pas';

var
  Duck: TDuck;

begin
  try
    Duck := TMallardDuck.Create;

    Duck.Display;
    Duck.performQuack;
    Duck.performFly;

    Writeln;
    Writeln('Press [Enter] to exit...');
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
