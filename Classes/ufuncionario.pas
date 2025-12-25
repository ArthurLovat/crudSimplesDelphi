unit uFuncionario;

interface
uses System.SysUtils,
     uPessoa;

type
  TFuncionario = class(TPessoa)
  private
    FSalario: Double;
  public
    constructor Create(ANome: string; AIdade: Integer; ASalario: Double);

    property Salario: Double read FSalario write FSalario;

    function Apresentar: string; override;
  end;

implementation

constructor TFuncionario.Create(ANome: string; AIdade: Integer; ASalario: Double);
begin
  inherited Create(ANome, AIdade);
  Salario := ASalario;
end;

function TFuncionario.Apresentar: string;
begin
  Result := inherited Apresentar + ' e ganho R$' + FormatFloat('#,##0.00', Salario);
end;

end.
