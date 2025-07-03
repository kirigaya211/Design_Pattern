unit clsLearner;

interface

type
  TLearner = class(TObject)
    private
    var
      Name: string;
      Mark: Integer;
      TotalMarks: Integer;

      procedure setTotalMark(AMark: Integer);
    public
      constructor Create(AName: string);
      procedure setMark(AMark: Integer);
      function getMark(): Integer;
      function getTotalMark(): Integer;
      procedure setName(AName: string);
  end;

implementation

constructor TLearner.Create(AName: string);
begin
  inherited Create;
  Name:= AName;
  Mark:= 0;
  TotalMarks:= 0;

end;

procedure TLearner.setMark(AMark: Integer);
begin
  Mark:= Mark + AMark;
  setTotalMark(Mark);
end;

function TLearner.getMark: Integer;
begin
  Result:= Mark;
end;

procedure TLearner.setTotalMark(AMark: Integer);
begin
  TotalMarks:= TotalMarks + AMark;
end;

function TLearner.getTotalMark(): Integer;
begin
  Result:= TotalMarks;
end;

procedure TLearner.setName(AName: string);
begin
  Name:= AName;
end;



end.
