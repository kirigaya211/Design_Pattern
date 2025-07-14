program IteratorPatterProj;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  intfBookIterator in 'intfBookIterator.pas',
  clsBookIterator in 'clsBookIterator.pas',
  clsBookCollection in 'clsBookCollection.pas';

Collection: TBookCollection;
  Iterator: IBookIterator;

begin
  try
    Collection:= TBookCollection.Create;
    Collection.AddBook('Clean Code');
    Collection.AddBook('Design Pattern');
    Collection.AddBook('Delphi Programming');

    Iterator:= Collection.CreateIterator;

    while
      Iterator.HasNext do
        Writeln('Book:', Iteratator.Next);


    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
