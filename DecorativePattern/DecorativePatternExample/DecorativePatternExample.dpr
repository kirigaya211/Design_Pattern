program DecorativePatternExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsGun in 'clsGun.pas',
  clsGlock in 'clsGlock.pas',
  ABehaviorDecorator in 'ABehaviorDecorator.pas',
  clsSilencer in 'clsSilencer.pas';

var Gun: TGun;
begin
  try
   Gun:= TGlock.Create;
   Writeln(Gun.getType);
   Writeln('TotalCost:' + FloatToStrF(Gun.GetCost,ffFixed,10,2));
   Gun:= TSilencer.Create(Gun);
   Writeln(Gun.getType);
   Writeln('TotalCost:' + FloatToStrF(Gun.GetCost,ffFixed,10,2));
   Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
