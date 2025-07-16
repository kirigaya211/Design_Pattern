unit Sword;

interface
uses CharacterEquipment;

type
  TSword = class(TCharacterEquipment)

    public
      function HPStatus: Integer; override;
      function DefStatus: Integer; override;
  end;

implementation

{ TSword }

function TSword.DefStatus: Integer;
begin
  Result:= FCharacter.DefStatus+2;
end;

function TSword.HPStatus: Integer;
begin
  Result:= FCharacter.HPStatus;
end;

end.
