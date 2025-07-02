unit Gun_u;

interface

type
  AGun = class

  protected
    FType: string;

  public
    constructor Create; virtual;
    function getType: string; virtual; abstract;
    function Cost(): Double; virtual; abstract;
  end;
implementation

constructor AGun.Create;
begin
  FType := 'Type undefined';
end;

end.
