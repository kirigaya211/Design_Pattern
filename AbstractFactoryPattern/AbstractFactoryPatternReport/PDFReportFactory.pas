unit PDFReportFactory;

interface
uses ReportFactory, ReportHeader, ReportBody, ReportFooter, PDFHeader,
      PDFBody, PDFFooter;

type
  TPDFReportFactory = class(TInterfacedObject, IReportFactory )
    function CreateHeader: IReportHeader;
    function CreateBody: IReportBody;
    function CreateFooter: IReportFooter;
  end;

implementation

{ TPDFReportFactory }

function TPDFReportFactory.CreateFooter: IReportFooter;
begin
  Result:= TPDFFooter.Create;
end;

function TPDFReportFactory.CreateBody: IReportBody;
begin
  Result:= TPDFBody.Create;
end;

function TPDFReportFactory.CreateHeader: IReportHeader;
begin
  Result:= TPDFHeader.Create;
end;

end.
