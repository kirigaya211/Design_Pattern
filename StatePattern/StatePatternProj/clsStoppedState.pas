unit clsStoppedState;

interface
uses intfPlayerState;

type
  TStop = class(TInterfacedObject, IPlayerState)

    public
      procedure Play;
      procedure Pause;
      procedure Stop;
  end;

implementation

{ TStop }

procedure TStop.Pause;
begin

end;

procedure TStop.Play;
begin

end;

procedure TStop.Stop;
begin

end;

end.
