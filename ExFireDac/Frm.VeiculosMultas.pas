unit Frm.VeiculosMultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Dm.Conexao, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Data.DB;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBGrid2: TDBGrid;
    DsVeiculo: TDataSource;
    DsMultas: TDataSource;
    DsProprietarios: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Dm.Conexao.Conexao.QryProprietario.Open;
Dm.Conexao.Conexao.QryVeiculo.Open;
Dm.Conexao.Conexao.QryMultas.Open;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
 Dm.Conexao.Conexao.QryProprietario.Close;
  Dm.Conexao.Conexao.QryVeiculo.Close;
   Dm.Conexao.Conexao.QryMultas.Close;
end;

end.
