unit PDFBody;

interface
uses ReportBody, System.SysUtils;

type
  TPDFBody = class(TInterfacedObject, IReportBody)
    procedure PrintBody;
  end;

implementation

{ TPDFBody }

procedure TPDFBody.PrintBody;
begin
  Writeln('PDF Report: Body');
end;

end.
