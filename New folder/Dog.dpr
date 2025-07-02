program Dog;

uses
  Vcl.Forms,
  Dog_p in 'Dog_p.pas' {frmDogDetails},
  clsDog_u in 'clsDog_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDogDetails, frmDogDetails);
  Application.Run;
end.
