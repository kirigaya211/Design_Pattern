unit clsTuner;

interface
uses intfSwitching;


type
  TTuners = class(TInterfacedObject, ISwitching)
    private
      FFM: string;
      FAM: string;
    procedure SetFM(const Value: string);
    public
      property Channel: string read FFM write SetFM;
      procedure TurningOn;
      procedure TurningOff;
      procedure ConvertString(AString: string);

  end;


implementation

{ TTuner }

procedure TTuners.SetFM(const Value: string);
begin
  FFM := Value;
end;

procedure TTuners.ConvertString(AString: string);
begin
  Writeln('Tuner is converted to');
end;

procedure TTuners.TurningOff;
begin
  Writeln('Turning off');
end;

procedure TTuners.TurningOn;
begin
  Writeln('Turning on');
end;

end.
