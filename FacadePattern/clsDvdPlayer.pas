unit clsDvdPlayer;

interface
uses intfSwitching, clsAudio;


type
  TDvdPlayer = class(TInterfacedObject, ISwitching)

    private
    FSurroundAudio: TAudio;
    procedure SetSurroundAudio(const Value: TAudio);
    function TSurroundAudio: TAudio;



    public
      procedure TurningOn();
      procedure TurningOff();
      procedure ConvertString(AString: string);
      procedure Eject();
      procedure Pause();
      procedure Play();
      property SurroundAudio: TAudio read FSurroundAudio write SetSurroundAudio;
  end;

implementation

{ TDvdPlayer }

procedure TDvdPlayer.ConvertString(AString: string);
begin

end;

procedure TDvdPlayer.Eject;
begin

end;

procedure TDvdPlayer.Pause;
begin

end;

procedure TDvdPlayer.Play;
begin

end;

procedure TDvdPlayer.SetSurroundAudio(const Value: TAudio);
begin

end;

function TDvdPlayer.TSurroundAudio: TAudio;
begin

end;

procedure TDvdPlayer.TurningOff;
begin

end;

procedure TDvdPlayer.TurningOn;
begin

end;

end.
