unit Armor;

interface
uses CharacterEquipment;

type
  TArmor = class(TCharacterEquipment)

    public
      function HPStatus: Integer; override;
      function DefStatus: Integer; override;
  end;



implementation

{ TArmor }


function TArmor.DefStatus: Integer;
begin
  Result:= FCharacter.DefStatus+5;
end;

function TArmor.HPStatus: Integer;
begin
  Result:= FCharacter.HPStatus+3;
end;

end.
