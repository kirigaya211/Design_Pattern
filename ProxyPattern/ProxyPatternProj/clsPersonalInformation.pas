unit clsPersonalInformation;

interface
uses clsPersonalAccess, intfAccessParser, System.SysUtils;

type
  TPersonalInformation = class(TPersonalAccess, IAccessParser)
    private
      FName: string;
      FStatus: Integer;
    public
      constructor Create(AName: string; AStatus: Integer);
      procedure DisplayInformation;
  end;


implementation

{ TPersonalInformation }

constructor TPersonalInformation.Create(AName: string; AStatus: Integer);
begin
  FName:= AName;
  FStatus:= AStatus;
end;

procedure TPersonalInformation.DisplayInformation;
begin
  Writeln('Name: '+FName);
  Write('Status: '+IntToStr(FStatus));
end;


end.

