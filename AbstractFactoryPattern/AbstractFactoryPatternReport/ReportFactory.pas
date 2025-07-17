unit ReportFactory;

interface
uses ReportHeader, ReportBody, ReportFooter;

type
  IReportFactory = interface
    function CreateHeader: IReportHeader;
    function CreateBody: IReportBody;
    function CreateFooter: IReportFooter;
  end;

implementation

end.
