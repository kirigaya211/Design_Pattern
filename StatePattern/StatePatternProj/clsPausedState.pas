unit clsPausedState;

interface
uses intfPlayerState;

type
  TPaused = class(TInterfacedObject, IPlayerState)

    public
      procedure Play;
      procedure Pause;
      procedure Stop;
  end;


implementation

{ TPausedState }

procedure TPaused.Pause;
begin

end;

procedure TPaused.Play;
begin

end;

procedure TPaused.Stop;
begin

end;

end.
