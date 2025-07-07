unit clsPizza;

interface

type
  TPizza = class
    public
      procedure Prepare();
      procedure Bake();
      procedure Cut();
      procedure Box();
  end;

implementation

{ IPizza }


{ TPizza }

procedure TPizza.Bake;
begin
  Writeln('Baking Pizza');
end;

procedure TPizza.Box;
begin
  Writeln('Boxing the Pizza');
end;

procedure TPizza.Cut;
begin
  Writeln('Slicing the Pizza into 8 cuts');
end;

procedure TPizza.Prepare;
begin
  Writeln('Preparing the Pizza to be deliver');
end;

end.
