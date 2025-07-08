unit clsTheaterLight;

interface
uses intfSwitching;

type
  TTheaterLight = class(TInterfacedObject, ISwitching)

    public
      procedure TurningOn;
      procedure TurningOff;
      procedure ConvertString(AString: string);
      procedure Dim();
  end;

implementation

{ TTheaterLight }

procedure TTheaterLight.ConvertString(AString: string);
begin

end;

procedure TTheaterLight.Dim;
begin

end;

procedure TTheaterLight.TurningOff;
begin

end;

procedure TTheaterLight.TurningOn;
begin

end;

end.
