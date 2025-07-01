program ObserverPatternp;

uses
  Vcl.Forms,
  ObserverPatternu in 'ObserverPatternu.pas' {Form1},
  ObserverPatternGroup in 'ObserverPatternGroup.pas',
  Strength in 'Strength.pas',
  Speed in 'Speed.pas',
  Agility in 'Agility.pas',
  Dexterity in 'Dexterity.pas',
  Intelligence in 'Intelligence.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
