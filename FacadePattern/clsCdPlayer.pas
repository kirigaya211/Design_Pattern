unit clsCdPlayer;

interface
uses clsAmplifier, intfSwitching;

type
  TCdPlayer = class(TInterfacedObject, ISwitching)
    private
    FAmplifier: TAmplifier;
    procedure SetAmplifier(const Value: TAmplifier);

    public
      property Amplifier: TAmplifier read FAmplifier write SetAmplifier;
      procedure TurningOn;
      procedure TurningOff;
      procedure ConvertString(AString: string);
      procedure Eject;
      procedure Pause;
      procedure Play;
      procedure Stop;
  end;


implementation

{ TCdPlayer }

procedure TCdPlayer.ConvertString(AString: string);
begin

end;

procedure TCdPlayer.Eject;
begin

end;

procedure TCdPlayer.Pause;
begin

end;

procedure TCdPlayer.Play;
begin

end;

procedure TCdPlayer.SetAmplifier(const Value: TAmplifier);
begin
  FAmplifier := Value;
end;

procedure TCdPlayer.Stop;
begin

end;

procedure TCdPlayer.TurningOff;
begin

end;

procedure TCdPlayer.TurningOn;
begin

end;


end.
