unit clsBookCollection;

interface
uses intfBookIterator,clsBookIterator,System.Generics.Collections;

type
  TBookCollection = class
    public
      FBooks: TList<string>;
      constructor Create;
      procedure AddBook(ABook: string);
      function CreateIterator: IBookIterator;

  end;



implementation

{ TBookCollection }

procedure TBookCollection.AddBook(ABook: string);
begin
  FBooks.Add(ABook);
end;

constructor TBookCollection.Create;
begin
  FBooks:= TList<string>.Create;
end;

function TBookCollection.CreateIterator: IBookIterator;
begin
  Result:= TBookIterator.Create(Self);
end;

end.
