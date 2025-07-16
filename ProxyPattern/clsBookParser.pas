unit clsBookParser;

interface
uses intfBookParser;

type
  TBookParser = class(TInterfacedObject, IBookParser)
    private
      FBook: string;
    public
      constructor Create(ABook: string);
      procedure GetNumPages;
  end;



implementation

{ TBookParser }

constructor TBookParser.Create(ABook: string);
begin
  FBook:= ABook;
end;

procedure TBookParser.GetNumPages;
begin
  Writeln(FBook);
end;

end.
