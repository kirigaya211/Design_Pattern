unit clsBook;

interface
uses System.Generics.Collections;

type
  TBook = class
    private
      FTitle: string;
      FAuthors: TList<string>;
    public
      constructor Create(ATitle:string; AAuthors: TList<string>);
  end;

implementation

{ TBook }

constructor TBook.Create(ATitle: string; AAuthors: TList<string>);
begin
  FTitle:= ATitle;
  FAuthors:= AAuthors;
end;

end.
