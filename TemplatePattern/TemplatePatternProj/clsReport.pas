unit clsReport;

interface

type
  TReport = class
    public
      procedure GenerateReport;
      procedure OpenDocument; virtual; abstract;
      procedure AddTitle; virtual; abstract;
      procedure AddContent; virtual; abstract;
      procedure CloseDocument; virtual; abstract;

  end;

implementation

{ TReport }

procedure TReport.GenerateReport;
begin
  OpenDocument;
  AddTitle;
  AddContent;
  CloseDocument;
end;

end.
