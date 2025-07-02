unit Testing_u;

interface
uses
  Gun_u, M16_u, Glock_u, Magazine_u, SysUtils;

procedure TestGunOrder;

implementation

procedure TestGunOrder;
var
  MyGun: AGun;
begin
  MyGun := TM16.Create;
  MyGun := TMagazine.Create(MyGun);

  Writeln(MyGun.getType);

end;


end.
