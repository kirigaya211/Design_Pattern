unit Dog_p;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, clsDog;

type
  TfrmDogDetails = class(TForm)
    btnBack: TButton;
    btnDisplayDetails: TButton;
    btnEnterDetails: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnEnterDetailsClick(Sender: TObject);
    procedure btnDisplayDetailsClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
    theDog: TDog;
  public
    { Public declarations }
  end;

var
  frmDogDetails: TfrmDogDetails;

implementation

{$R *.dfm}

procedure TfrmDogDetails.btnBackClick(Sender: TObject);
begin
 ShowMessage(theDog.Bark);
end;

procedure TfrmDogDetails.btnDisplayDetailsClick(Sender: TObject);
var
  sMsg : string;
begin
  sMsg := 'Name : ' + theDog.Name + chr(13);
  sMsg := sMsg + 'Colour : ' + theDog.Colour + chr(13);
  sMsg := sMsg + 'Weight : ' + FloatToStr(theDog.Weight);
  MessageBox(0,PChar(sMsg),'DOG DETAILS',MB_OK);
end;

procedure TfrmDogDetails.btnEnterDetailsClick(Sender: TObject);
begin
  theDog.Name := InputBox('DATA ENTRY','Give the dog''s name:', theDog.Name);
  theDog.Colour := InputBox('DATA ENTRY','Give the dog''s name:', theDog.Colour);
  theDog.Weight := StrToFloat(InputBox('DATA ENTRY','Give the dog''s weight:',FloatToStr(theDog.Weight)));
end;

procedure TfrmDogDetails.FormCreate(Sender: TObject);
begin
  theDog := TDog.Create;
end;



end.
