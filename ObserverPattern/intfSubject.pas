unit intfSubject;

interface
uses intfObserver;

type
  ISubject = interface

  procedure registerObserver(AObserver: IObserver);
  procedure removeObserver(AObserver: IObserver);
  procedure notifyObserver();
  end;

implementation

end.
