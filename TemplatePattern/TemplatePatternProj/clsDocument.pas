unit clsDocument;

interface
uses clsReport;

type
  TDocumentReport = class(TReport)
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

{ TDocument }

procedure TDocumentReport.AddContent;
begin
  inherited;
  Writeln('Adding the content of the Document file in the report '+'"'+ FContent+'"');
end;

procedure TDocumentReport.AddTitle;
begin
  inherited;
  Writeln('The title of the Document is '+ FTitle);
end;

procedure TDocumentReport.CloseDocument;
begin
  inherited;
  Writeln('Saving and closing the Document File');
end;

procedure TDocumentReport.OpenDocument;
begin
  inherited;
  Writeln('Opening the Document file');
end;



procedure TDocumentReport.SetContent(const Value: string);
begin
  FContent := Value;
end;

procedure TDocumentReport.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

end.
