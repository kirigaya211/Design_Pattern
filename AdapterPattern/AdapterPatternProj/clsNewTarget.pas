unit clsNewTarget;

interface
uses intfNewTarget;

type
  TNewTarget = class(TInterfacedObject, INewTarget)
    private
      FCommand: string;
    public
      procedure StartUp(ACommand: string);
  end;

implementation

{ TNewTarget }

procedure TNewTarget.StartUp(ACommand: string);
begin
  FCommand:= ACommand;
  Writeln('This is the new StartUp process of this system');
end;

end.
