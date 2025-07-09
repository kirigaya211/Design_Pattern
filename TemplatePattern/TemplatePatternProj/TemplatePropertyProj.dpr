program TemplatePropertyProj;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Vcl.Forms,
  Vcl.Dialogs,
  clsReport in 'clsReport.pas',
  clsPDF in 'clsPDF.pas',
  clsDocument in 'clsDocument.pas';

var PDF: TPDFReport;

begin
  try
    PDF := TPDFReport.Create;
    PDF.Title:= InputBox('Enter title', 'Please input the title of the PDF File','');
    PDF.Content:= InputBox('Enter Content', 'Please input the content of the PDF File','');
    PDF.GenerateReport;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
