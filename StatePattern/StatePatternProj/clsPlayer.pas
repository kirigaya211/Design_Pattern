unit clsPlayer;

interface
uses intfPlayerState;

type
  TPlayer = class
    private
      FState: IPlayerState;
    public
      procedure SetState(AState: IPlayerState);
      procedure Play;
      procedure Pause;
      procedure Stop;
  end;

implementation

{ TPlayer }

procedure TPlayer.Pause;
begin
  FState.Pause;
end;

procedure TPlayer.Play;
begin
  FState.Play;
end;

procedure TPlayer.SetState(AState: IPlayerState);
begin
  FState:= AState;
end;

procedure TPlayer.Stop;
begin
  FState.Stop;
end;

end.
