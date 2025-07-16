unit Character;

interface
uses
  Custom,
  System.SysUtils;

type
  TCharacter = class(TInterfacedObject, ICustom)
    private
      FHp: Integer;
      FDef: Integer;
    public
      constructor Create;
      function HPStatus: Integer;
      function DefStatus: Integer;

  end;

implementation

{ TUnit }



{ TCharacter }

constructor TCharacter.Create;
begin
  FHp:= 100;
  FDef:= 100;
end;



function TCharacter.DefStatus: Integer;
begin
  Result:= FHp;
end;

function TCharacter.HPStatus: Integer;
begin
  Result:= FHp;
end;

end.
