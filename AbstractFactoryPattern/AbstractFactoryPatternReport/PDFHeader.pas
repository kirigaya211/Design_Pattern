unit PDFHeader;

interface
uses ReportHeader, System.SysUtils;

type
  TPDFHeader = class(TInterfacedObject, IReportHeader)
    public
      procedure PrintHeader;
  end;

implementation

{ TPDFHeader }

procedure TPDFHeader.PrintHeader;
begin
  Writeln('PDF Report: Header');
end;

end.
