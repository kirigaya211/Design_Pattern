unit ExcelFooter;

interface
uses ReportFooter, System.SysUtils;

type
  TExcelFooter = class(TInterfacedObject, IReportFooter)
    public
      procedure PrintFooter;
  end;

implementation

{ TExcelFooter }

procedure TExcelFooter.PrintFooter;
begin
  Writeln('Excel Report: Footer');
end;

end.
