unit UntFrmClubeJogador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.DB,DmConexaoQuy;

type
  TFrmClubeJogador = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid2: TDBGrid;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label15: TLabel;
    DBNavigator2: TDBNavigator;
    Label17: TLabel;
    Label18: TLabel;
    DsClube: TDataSource;
    DsJogador: TDataSource;
    DsTatica: TDataSource;
    DsTecnico: TDataSource;
    DsPais: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClubeJogador: TFrmClubeJogador;

implementation

{$R *.dfm}

procedure TFrmClubeJogador.FormCreate(Sender: TObject);
begin
DmConexaoQuery.QuyPais.Open();
DmConexaoQuery.QuyTecnico.Open();
DmConexaoQuery.QuyTatica.Open();
DmConexaoQuery.QuyClube.Open();
DmConexaoQuery.QuyJogador.Open();

end;

procedure TFrmClubeJogador.FormDestroy(Sender: TObject);
begin
DmConexaoQuery.QuyPais.Close;
DmConexaoQuery.QuyTecnico.Close;
DmConexaoQuery.QuyTatica.Close;
DmConexaoQuery.QuyClube.Close;
DmConexaoQuery.QuyJogador.Close;
end;

end.
