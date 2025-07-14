unit clsBookIterator;

interface
uses intfBookIterator, clsBookCollection;

type
  TBookIterator = class(TInterfacedObject, IBookIterator)
    private
      FCollection: TBookCollection;
      FIndex: Integer;
    public
      constructor Create(ACollection: TBookCollection);
      function HasNext: Boolean;
      function Next: string;

  end;


implementation

{ TBookIterator }

constructor TBookIterator.Create(ACollection: TBookCollection);
begin
  FCollection:= ACollection;
  FIndex:= 0;
end;

function TBookIterator.HasNext: Boolean;
begin
  Result:= FIndex< FCollection.FBooks.Count;
end;

function TBookIterator.Next: string;
begin
  Result:= FCollection.FBook[FIndex];
end;

end.
