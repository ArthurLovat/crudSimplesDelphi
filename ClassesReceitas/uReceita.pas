unit uReceita;

interface

uses
  System.Generics.Collections,
  uIngrediente;

type
  TReceita = class
    private
      FNome: string;
      FIngrediente: TObjectList<TIngrediente>;

    public
      constructor Create(ANome: string; AIngrediente: TObjectList<TIngrediente>);
      destructor Destroy; override;

      property Nome: string read FNome write FNome;
      property Ingrediente: TObjectList<TIngrediente> read FIngrediente write FIngrediente;

      procedure AdicionarIngrediente(AIngrediente: TIngrediente);
      function Descricao: string;
  end;



implementation

constructor TReceita.Create(ANome: string; AIngrediente: TObjectList<TIngrediente>);
begin
  Nome := ANome;
  Ingrediente := AIngrediente;
end;


destructor TReceita.Destroy;
begin
  Ingrediente.Free;
  inherited
end;


procedure TReceita.AdicionarIngrediente(AIngrediente: TIngrediente);
begin
  Ingrediente.Add(AIngrediente);
end;


function TReceita.Descricao: string;
var
  Ing: TIngrediente;
begin
  Result := 'Receita: ' + Nome + sLineBreak;

  for ing in Ingrediente do
    begin
      Result := Result + '- ' + ing.Descricao + sLineBreak;
    end;
end;

end.
