unit ExcelBody;

interface
uses ReportBody, System.SysUtils;

type
  TExcelBody = class(TInterfacedObject, IReportBody)
    public
      procedure PrintBody;
  end;

implementation

{ TExcelBody }

procedure TExcelBody.PrintBody;
begin
  Writeln('Excel Report: Body');
end;

end.
