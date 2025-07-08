unit clsPopcornPopper;

interface
uses intfSwitching;

type
  TPopcornPopper = class(TInterfacedObject, ISwitching)

    public
      procedure TurningOn;
      procedure TurningOff;
      procedure ConvertString(AString: string);
      procedure Pop;
  end;

implementation

{ TPopcornPopper }

procedure TPopcornPopper.ConvertString(AString: string);
begin

end;

procedure TPopcornPopper.Pop;
begin
  Writeln('Popcorn popping');
end;

procedure TPopcornPopper.TurningOff;
begin

end;

procedure TPopcornPopper.TurningOn;
begin

end;

end.
