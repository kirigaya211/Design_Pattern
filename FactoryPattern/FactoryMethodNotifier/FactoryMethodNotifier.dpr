program FactoryMethodNotifier;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Notifier in 'Notifier.pas',
  EmailNotifier in 'EmailNotifier.pas',
  SmsNotifier in 'SmsNotifier.pas',
  CreatorNotifier in 'CreatorNotifier.pas',
  EmailNotifierApp in 'EmailNotifierApp.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
