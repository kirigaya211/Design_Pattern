program DecorativePatternCharacter;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Character in 'Character.pas',
  Custom in 'Custom.pas',
  CharacterEquipment in 'CharacterEquipment.pas',
  Armor in 'Armor.pas',
  Sword in 'Sword.pas';

var
    Character: ICustom;
    Armor: TArmor;
begin
  try
    Character:= TCharacter.Create;
    Character:= TArmor.Create(Character);
    Character:= TSword.Create(Character);
    Writeln('Character HP:'+IntToStr(Character.HPStatus));
    Writeln('Character Def:'+IntToStr(Character.DefStatus));

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
