program ExVeiculos;

uses
  Vcl.Forms,
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal},
  Dm.Conexao in 'Dm.Conexao.pas' {Conexao: TDataModule},
  Frm.Proprietarios in 'Frm.Proprietarios.pas' {FrmProprietarios},
  Frm.VeiculosMultas in 'Frm.VeiculosMultas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TConexao, Conexao);
  Application.Run;
end.
