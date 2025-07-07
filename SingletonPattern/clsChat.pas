unit clsChat;

interface

type
  TChat = class

    private
      FChat: TChat;
      constructor Create;
    public
      function GetInstance():TChat;
  end;

implementation

{ TChat }

constructor TChat.Create;
begin
  FChat := TChat.Create;
end;

function TChat.GetInstance():TChat;
begin
  if FChat = nil then
    TChat.Create;
  Result := FChat;
end;

end.
