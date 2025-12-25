unit uIngrediente;

interface
uses System.SysUtils;
type
  TIngrediente = class
    private
      FNome: string;
      FQuantidade: Integer;

    public
      constructor Create(ANome: string; AQuantidade: Integer);

      property Nome: string read FNome write FNome;
      property Quantidade: Integer read FQuantidade write FQuantidade;

      function Descricao: string;
  end;

implementation

constructor TIngrediente.Create(ANome: string; AQuantidade: Integer);
begin
  Nome := ANome;
  Quantidade := AQuantidade;
end;

function TIngrediente.Descricao: string;
begin
  result := ' O igrediente ' + Nome + ' tem ' + Quantidade.ToString + ' em estoque! ';
end;

end.
