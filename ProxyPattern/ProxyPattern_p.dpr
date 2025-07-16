program ProxyPattern_p;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  intfBookParser in 'intfBookParser.pas',
  clsBookParser in 'clsBookParser.pas',
  clsLazyBookParserProxy in 'clsLazyBookParserProxy.pas';

var Parser: TLazyBookParserProxy;
  var Book: TBookParser;

begin
  try
    Parser:=  TLazyBookParserProxy.Create('Gwapo ko');
    Parser.GetNumPages;


    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
