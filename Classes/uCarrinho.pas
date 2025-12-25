unit uCarrinho;

interface

uses System.SysUtils,
     System.Generics.Collections,
     uPessoa;

type
  TCarrinho = class

  private
    FItens: TObjectList<TPessoa>;

  public
    constructor Create;
    destructor Destroy; override;


    procedure AdicionarPessoa(APessoa: TPessoa);
    function TotalItens: Integer;

  end;
implementation

constructor TCarrinho.Create;
begin
  FItens := TObjectList<TPessoa>.Create(True);
end;

destructor TCarrinho.Destroy;
begin
  FItens.Free;
  inherited
end;

procedure TCarrinho.AdicionarPessoa(APessoa: TPessoa);
begin
  FItens.Add(APessoa);
end;

function TCarrinho.TotalItens: Integer;
begin
  Result := FItens.Count;

end;

end.
