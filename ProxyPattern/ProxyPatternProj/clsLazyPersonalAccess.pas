unit clsLazyPersonalAccess;

interface
uses intfAccessParser, clsPersonalInformation,System.SysUtils, Vcl.Dialogs;

type
  TLazyPersonalAccessProxy = class(TInterfacedObject,IAccessParser)
    private
      FPersonalInformation: TPersonalInformation;
      FName: string;
      FStatus: Integer;
    public
      function PersonalInformation(): TPersonalInformation;
      procedure DisplayInformation;
      procedure EnterInformation;

  end;

implementation

{ TLazyPersonalAccessProxy }

procedure TLazyPersonalAccessProxy.DisplayInformation;
begin
  if(FPersonalInformation = nil) then
    begin
    EnterInformation;
    FPersonalInformation:= TPersonalInformation.Create(FName, FStatus)
    end;
  FPersonalInformation.DisplayInformation;
end;

procedure TLazyPersonalAccessProxy.EnterInformation;
begin
  FName:= InputBox('Input Box', 'Enter Name:','');
  FStatus:= StrToInt(InputBox('Input Box', 'Enter status code:', ''));
end;

function TLazyPersonalAccessProxy.PersonalInformation: TPersonalInformation;
begin
  Result:= FPersonalInformation;
end;

end.
