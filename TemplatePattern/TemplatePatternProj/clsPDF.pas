unit clsPDF;

interface
uses clsReport;

type
  TPDFReport = class(TReport)
    private
      FTitle: string;
      FContent: string;
      procedure SetTitle(const Value: string);
      procedure SetContent(const Value: string);

    public
      property Title: string read FTitle write SetTitle;
      property Content: string read FContent write SetContent;
      procedure OpenDocument; override;
      procedure AddTitle; override;
      procedure AddContent; override;
      procedure CloseDocument; override;
  end;

implementation

{ TPDFReport }

procedure TPDFReport.AddContent;
begin
  inherited;
  Writeln('Adding the content of the PDF file in the report '+'"'+ FContent+'"');
end;

procedure TPDFReport.AddTitle;
begin
  inherited;
  Writeln('The title of the PDF is '+ FTitle);
end;

procedure TPDFReport.CloseDocument;
begin
  inherited;
  Writeln('Saving and closing the PDF File');
end;

procedure TPDFReport.OpenDocument;
begin
  inherited;
  Writeln('Opening the PDF file');

end;

procedure TPDFReport.SetContent(const Value: string);
begin
  FContent := Value;
end;

procedure TPDFReport.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

end.
