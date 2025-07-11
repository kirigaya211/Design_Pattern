unit clsLazyBookParserProxy;

interface
uses intfBookParser, clsBookParser;

type
  TLazyBookParserProxy = class(TInterfacedObject, IBookParser)
    private
      FBookParser: TBookParser;
      FBook: string;
    public
      constructor Create(ABook: string);
      procedure GetNumPages;
  end;


implementation

{ TLazyBookParserProxy }

constructor TLazyBookParserProxy.Create(ABook: string);
begin
  FBook:= ABook;
  FBookParser:= nil;
end;

procedure TLazyBookParserProxy.GetNumPages;
begin
  if(FBookParser=nil) then
    FBookParser:= TBookParser.Create(FBook);
  FBookParser.GetNumPages;
end;

end.
