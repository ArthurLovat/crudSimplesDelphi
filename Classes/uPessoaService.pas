unit uPessoaService;

interface
uses uPessoaIntf;

type
  TPessoaService = class
    private
      FPessoa: IPessoa;

    public
      constructor Create(APessoa: IPessoa);
      function Execultar: string;
  end;

implementation
constructor TPessoaService.Create(APessoa: IPessoa);
begin
  FPessoa := APessoa
end;

function TPessoaService.Execultar: string;
begin
  Result := FPessoa.Apresentar;
end;

end.
