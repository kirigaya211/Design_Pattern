unit ExcelReportFactory;

interface
uses ReportFactory,ReportHeader, ReportBody,ReportFooter,
    ExcelHeader, ExcelBody, ExcelFooter;

type
  TExcelReportFactory = class(TInterfacedObject, IReportFactory)
    public
      function CreateHeader: IReportHeader;
      function CreateBody: IReportBody;
      function CreateFooter: IReportFooter;
  end;

implementation

{ TExcelReportFactory }

function TExcelReportFactory.CreateBody: IReportBody;
begin
  Result:= TExcelBody.Create;
end;

function TExcelReportFactory.CreateFooter: IReportFooter;
begin
  Result:= TExcelFooter.Create;
end;

function TExcelReportFactory.CreateHeader: IReportHeader;
begin
  Result:= TExcelHeader.Create;
end;

end.
