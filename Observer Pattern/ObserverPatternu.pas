unit ObserverPatternu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, TStatistics;

type
  TForm1 = class(TForm)
    lblCurrentLevel: TLabel;
    btnLevelDown: TButton;
    lblLevel: TLabel;
    gpbStat: TGroupBox;
    lblStrength: TLabel;
    lblSpeed: TLabel;
    lblAgility: TLabel;
    lblDexterity: TLabel;
    lblIntelligence: TLabel;
    lblCStrength: TLabel;
    lblCSpeed: TLabel;
    lblCAgility: TLabel;
    lblCDexterity: TLabel;
    lblCIntelligence: TLabel;
    btnLevelUp: TButton;
    procedure btnLevelUpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLevelDownClick(Sender: TObject);
  private
    Stat: TStatistic;
    procedure DisplayLevel();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}


procedure TForm1.btnLevelDownClick(Sender: TObject);
begin
  Stat.DownLevel();
  Displaylevel();

end;

procedure TForm1.btnLevelUpClick(Sender: TObject);
begin
  Stat.AddLevel(1);
  Displaylevel();
end;

procedure TForm1.DisplayLevel();
begin
  lblLevel.Caption := IntToStr(Stat.getLevel());
  lblCStrength.Caption := IntToStr(Stat.getStrength());
  lblCSpeed.Caption := IntToStr(Stat.getSpeed());
  lblCAgility.Caption := IntToStr(Stat.getAgility);
  lblCDexterity.Caption := IntToStr(Stat.getDexterity);
  lblCIntelligence.Caption := IntToStr(Stat.getIntelligence);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Stat:= TStatistic.Create();
  DisplayLevel();
end;

end.
