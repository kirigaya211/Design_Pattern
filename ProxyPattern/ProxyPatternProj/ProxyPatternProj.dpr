program ProxyPatternProj;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsPersonalAccess in 'clsPersonalAccess.pas',
  clsPersonalInformation in 'clsPersonalInformation.pas',
  intfAccessParser in 'intfAccessParser.pas',
  clsLazyPersonalAccess in 'clsLazyPersonalAccess.pas';

var
  PersonalAccess: TLazyPersonalAccessProxy;
  Personal:TPersonalInformation;
begin
  try
    PersonalAccess:= TLazyPersonalAccessProxy.Create;
    Personal:=PersonalAccess.PersonalInformation;
    Personal.DisplayInformation;
    Personal.SetAccess('Gwapo ko');
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
