unit clsProjector;

interface
uses intfSwitching,clsDvdPlayer;

type
  TProjector = class(TInterfacedObject, ISwitching)
  private
    FDvdPlayer: TDvdPlayer;
    procedure SeDvdPlayer(const Value: TDvdPlayer);

    public
      property DvdPlayer: TDvdPlayer read FDvdPlayer write SeDvdPlayer;
      procedure TurningOn;
      procedure TurningOff;
      procedure ConvertString(AString: string);

  end;

implementation

{ TProjector }

procedure TProjector.ConvertString(AString: string);
begin

end;

procedure TProjector.SeDvdPlayer(const Value: TDvdPlayer);
begin
  FDvdPlayer := Value;
end;

procedure TProjector.TurningOff;
begin

end;

procedure TProjector.TurningOn;
begin

end;

end.
