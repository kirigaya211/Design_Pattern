unit clsAdapter;

interface
uses intfNewTarget, intfOldTarget, System.SysUtils;

type
  TAdapter = class(TInterfacedObject, IOldTarget)
    private
      FNewTarget: INewTarget;
    public
      constructor Create(ANewTarget: INewTarget);
      procedure OldStartUp(ACommand: Integer);
  end;

implementation

{ TAdapter }

constructor TAdapter.Create(ANewTarget: INewTarget);
begin
  FNewTarget:= ANewTarget;
end;

procedure TAdapter.OldStartUp(ACommand: Integer);
var
  Command: string;
begin
  Command := IntToStr(ACommand);
  FNewTarget.StartUp(Command);
end;

end.
