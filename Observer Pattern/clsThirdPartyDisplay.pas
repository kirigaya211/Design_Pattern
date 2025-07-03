unit clsThirdPartyDisplay;

interface
uses intfObserver, intfDisplayElement;

type
  TThirdPartyDisplay = class(TInterfacedObject, IObserver, IDisplayElement)

    public
      procedure display;
      procedure update;
  end;

implementation

{ TThirdPartyDisplay }

procedure TThirdPartyDisplay.display;
begin

end;

procedure TThirdPartyDisplay.update;
begin

end;

end.
