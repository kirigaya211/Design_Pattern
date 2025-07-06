program FactoryPatternNotif;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsNotif in 'clsNotif.pas',
  clsEmailNotif in 'clsEmailNotif.pas',
  clsSMSNotif in 'clsSMSNotif.pas',
  clsNotifFactory in 'clsNotifFactory.pas';

var Notif: TNotif;
begin
  try
    Notif:= TNotifFactory.CreateNotif('SMS');
    Notif.SendNotif('Gwapo ko');
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
