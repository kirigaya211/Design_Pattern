unit StrategyPattern;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, clsDuck;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    objMallardDuck : TDuck;
    objRubberDuck: TDuck;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  objMallardDuck := TDuck.Create(True, True);
  objRubberDuck := TDuck.Create(False, False);


  ShowMessage(objMallardDuck.getFly);
  ShowMessage(objRubberDuck.getFly);

end;

end.
