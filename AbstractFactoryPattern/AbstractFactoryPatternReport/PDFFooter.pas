unit PDFFooter;

interface
uses ReportFooter, System.SysUtils;

type
  TPDFFooter = class(TInterfacedObject, IReportFooter)
    procedure PrintFooter;
  end;

implementation

{ TPDFFooter }

procedure TPDFFooter.PrintFooter;
begin
  Writeln('PDF Report: Footer');
end;

end.
