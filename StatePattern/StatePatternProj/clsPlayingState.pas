unit clsPlayingState;

interface
uses intfPlayerState;

type
  TPlaying = class(TInterfacedObject, IPlayerState)
    public
      procedure Play;
      procedure Pause;
      procedure Stop;
  end;

implementation

{ TPlaying }

procedure TPlaying.Pause;
begin

end;

procedure TPlaying.Play;
begin

end;

procedure TPlaying.Stop;
begin

end;

end.
