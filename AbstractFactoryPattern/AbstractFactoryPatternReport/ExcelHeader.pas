unit ExcelHeader;

interface
uses ReportHeader;

type
  TExcelHeader = class(TInterfacedobject, IReportHeader)
    public
      procedure PrintHeader;
  end;

implementation

{ IExcelHeader }

procedure TExcelHeader.PrintHeader;
begin
  Writeln('Excel Report: Header');
end;

end.
