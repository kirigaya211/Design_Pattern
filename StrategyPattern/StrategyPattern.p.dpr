program StrategyPattern.p;

uses
  Vcl.Forms,
  StrategyPattern in 'StrategyPattern.pas' {Form1},
  clsDuck in 'clsDuck.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
