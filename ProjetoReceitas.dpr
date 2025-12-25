program ProjetoReceitas;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmCadReceitas},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  uPessoa in 'Classes\uPessoa.pas',
  ufuncionario in 'Classes\ufuncionario.pas',
  uCarrinho in 'Classes\uCarrinho.pas',
  uPessoaIntf in 'Classes\uPessoaIntf.pas',
  uPessoaService in 'Classes\uPessoaService.pas',
  uIngrediente in 'ClassesReceitas\uIngrediente.pas',
  uReceita in 'ClassesReceitas\uReceita.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadReceitas, frmCadReceitas);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
