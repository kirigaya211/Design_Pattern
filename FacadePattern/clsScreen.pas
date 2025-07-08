unit clsScreen;

interface

type
  TScreen = class

    public
      procedure Up;
      procedure Down;
      procedure ConvertString(AString: string);
  end;

implementation

{ TScreen }

procedure TScreen.ConvertString(AString: string);
begin

end;

procedure TScreen.Down;
begin
  Writeln('Screen going down');
end;

procedure TScreen.Up;
begin
  Writeln('Screen going up');
end;

end.
