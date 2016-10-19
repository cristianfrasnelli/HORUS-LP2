program PrjFutebol;

uses
  Vcl.Forms,
  UntFrmPrincipal in 'UntFrmPrincipal.pas' {FrmPrincipal},
  DmConexaoBanco in 'DmConexaoBanco.pas' {DmConexao: TDataModule},
  UntFrmPais in 'UntFrmPais.pas' {FrmPais},
  DmConexaoQuy in 'DmConexaoQuy.pas' {DmConexaoQuery: TDataModule},
  UntFrmTatica in 'UntFrmTatica.pas' {FrmTatica},
  UntFrmTecnico in 'UntFrmTecnico.pas' {FrmTecnico},
  UntFrmClubeJogador in 'UntFrmClubeJogador.pas' {FrmClubeJogador};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmConexaoQuery, DmConexaoQuery);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
