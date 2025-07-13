unit clsBookCollection;

interface

uses
  intfBookIterator, System.Generics.Collections;

type
  TBookCollection = class
  public
    FBooks: TList<string>;
    constructor Create;
    destructor Destroy; override;
    procedure AddBook(ABook: string);
    function CreateIterator: IBookIterator;
  end;

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



constructor TBookCollection.Create;
begin
  FBooks := TList<string>.Create;
end;

destructor TBookCollection.Destroy;
begin
  FBooks.Free;
  inherited;
end;

procedure TBookCollection.AddBook(ABook: string);
begin
  FBooks.Add(ABook);
end;

function TBookCollection.CreateIterator: IBookIterator;
begin
  Result := TBookIterator.Create(Self);
end;



constructor TBookIterator.Create(ACollection: TBookCollection);
begin
  FCollection := ACollection;
  FIndex := 0;
end;

function TBookIterator.HasNext: Boolean;
begin
  Result := FIndex < FCollection.FBooks.Count;
end;

function TBookIterator.Next: string;
begin
  Result := FCollection.FBooks[FIndex];
  Inc(FIndex);
end;

end.

