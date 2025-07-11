
program CompoundPattern_p;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  intfQuackable in 'intfQuackable.pas',
  clsMallardDuck in 'clsMallardDuck.pas',
  clsRedHeadDuck in 'clsRedHeadDuck.pas',
  clsDuckCall in 'clsDuckCall.pas',
  clsRubberDuck in 'clsRubberDuck.pas',
  clsGeese in 'clsGeese.pas',
  clsGooseAdapter in 'clsGooseAdapter.pas',
  clsSimulate in 'clsSimulate.pas';

var Simulate: TSimulate;
begin
  try
    Simulate:= TSimulate.Create;
  except
    on E: Exception do


      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
