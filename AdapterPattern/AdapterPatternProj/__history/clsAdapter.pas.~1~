unit clsAdapter;

interface
uses clsNewTarget, intfOldTarget, System.SysUtils;

type
  TAdapter = class(TInterfacedObject, IOldTarget)
    private
      FNewTarget: TNewTarget;
    public
      constructor Create(ANewTarget: TNewTarget);
      procedure OldStartUp(ACommand: Integer);
  end;

implementation

{ TAdapter }

constructor TAdapter.Create(ANewTarget: TNewTarget);
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
