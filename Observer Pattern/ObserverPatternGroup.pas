unit ObserverPatternGroup;


interface

uses Strength, Speed, Agility, Dexterity, Intelligence, Vcl.Dialogs;


type
  TStatistic = class(TObject)

  private
  var
    Level: Integer;
    Strength: TStrength;
    Speed: TSpeed;
    Agility: TAgility;
    Dexterity: TDexterity;
    Intelligence: TIntelligence;
  public
  constructor Create();
  procedure AddLevel(ALevel:Integer);
  procedure DownLevel();
  procedure Notify(Level: Integer);
  function getLevel(): Integer;
  function getStrength(): Integer;
  function getSpeed(): Integer;
  function getAgility(): Integer;
  function getDexterity(): Integer;
  function getIntelligence(): Integer;

  end;


implementation

constructor TStatistic.Create();
begin
  Level := 1;
  Strength := TStrength.Create(1);
  Speed := TSpeed.Create(1);
  Agility := TAgility.Create(1);
  Dexterity :=TDexterity.Create(1);
  Intelligence := TIntelligence.Create(1);

end;

procedure TStatistic.DownLevel;
begin
  if Level =0 then
    ShowMessage('Currently at the lowest possible level 0')
  else
    Level := Level -1;
    Notify(Level);
end;

procedure TStatistic.AddLevel(ALevel: Integer);
begin
  Level := Level + ALevel;
  Notify(Level);
end;

procedure TStatistic.Notify(Level: Integer);
begin
  Strength.setStrength(Level);
  Speed.setSpeed(Level);
  Agility.setAgility(Level);
  Dexterity.setDexterity(Level);
  Intelligence.setIntelligence(Level);
end;

function TStatistic.getAgility(): Integer;
begin
  Result := Agility.getAgility();
end;

function TStatistic.getDexterity(): Integer;
begin
  Result := Dexterity.getDexterity();
end;

function TStatistic.getIntelligence(): Integer;
begin
  Result := Intelligence.getIntelligence();
end;

function TStatistic.getLevel(): Integer;
begin
  Result := Level;
end;

function TStatistic.getSpeed: Integer;
begin
  Result := Speed.getSpeed();
end;

function TStatistic.getStrength: Integer;
begin
  Result := Strength.getStrength();
end;



end.
