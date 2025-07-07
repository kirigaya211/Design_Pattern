unit intfSubject;

interface
uses intfObserver;

type
  ISubject = interface

  procedure RegisterObserver(AObserver: IObserver);
  procedure RemoveObserver(AObserver: IObserver);
  procedure NotifyObserver;
  end;

implementation


end.
