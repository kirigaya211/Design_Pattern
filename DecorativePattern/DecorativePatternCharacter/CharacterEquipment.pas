unit CharacterEquipment;

interface
uses Custom;

type
  TCharacterEquipment = class(TInterfacedObject, ICustom)
    protected
      FCharacter: ICustom;
    public
      constructor Create(ACharacter: ICustom);
      function HPStatus: Integer; virtual;abstract;
      function DefStatus: Integer; virtual; abstract;
  end;

implementation

{ TCharacterEquipment }

constructor TCharacterEquipment.Create(ACharacter: ICustom);
begin
  FCharacter:= ACharacter;
end;

end.
