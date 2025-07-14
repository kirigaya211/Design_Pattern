unit clsQuackCounter;

interface
uses intfQuackable;

type
  TQuackCounter = class(TInterfacedObject, IQuackable)
    private
      FQuack: IQuackable;
      FNumberOfQuacks: Integer;
    public
      constructor QuackCounter(AQuack: IQuackable);
      procedure Quack;
      function GetQuacks: Integer;
  end;


implementation

{ TQuackCounter }

constructor TQuackCounter.QuackCounter(AQuack: IQuackable);
begin
  FQuack:= AQuack;
end;

function TQuackCounter.GetQuacks: Integer;
begin
  Result:= FNumberOfQuacks;
end;

procedure TQuackCounter.Quack;
begin
  FQuack.Quack;
  FNumberOfQuacks := FNumberOfQuacks +1;
end;

end.
