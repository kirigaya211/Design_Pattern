unit clsOldTarget;

interface
uses intfOldTarget;

type
  TOldTarget = class(TInterfacedObject, IOldTarget)
    private
      FCommand: Integer;
    procedure OldStartUp(ACommand: Integer);
  end;

implementation

{ TOldTarget }

procedure TOldTarget.OldStartUp(ACommand: Integer);
begin
  FCommand:= ACommand;
end;

end.
