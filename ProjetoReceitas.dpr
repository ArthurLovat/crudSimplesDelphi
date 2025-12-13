program ProjetoReceitas;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmCadReceitas},
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadReceitas, frmCadReceitas);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
