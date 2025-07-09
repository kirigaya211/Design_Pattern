unit intfBookIterator;

interface

type
  IBookIterator = interface
    function HasNext: Boolean;
    function Next: string;
  end;

implementation

end.
