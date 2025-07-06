unit clsNotif;

interface

type
  TNotif = class
    public
      procedure SendNotif(ANotif: string); virtual; abstract;
  end;

implementation

end.
