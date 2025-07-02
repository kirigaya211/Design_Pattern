program DecorativePatternp;

uses
  Vcl.Forms,
  DecorativePatternu in 'DecorativePatternu.pas' {Form1},
  ABeverage in 'ABeverage.pas',
  ACondimentDecorator in 'ACondimentDecorator.pas',
  TExpresso in 'TExpresso.pas',
  THouseBlend in 'THouseBlend.pas',
  TMocha in 'TMocha.pas',
  TestingDecoratorPattern in 'TestingDecoratorPattern.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
