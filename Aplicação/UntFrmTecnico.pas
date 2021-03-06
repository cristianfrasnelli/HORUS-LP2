unit UntFrmTecnico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,DmConexaoQuy, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TFrmTecnico = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Pais: TLabel;
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
  FrmTecnico: TFrmTecnico;

implementation

{$R *.dfm}

procedure TFrmTecnico.FormCreate(Sender: TObject);
begin
DmConexaoQuery.QuyPais.Open();
DmConexaoQuery.QuyTecnico.Open();
end;

procedure TFrmTecnico.FormDestroy(Sender: TObject);
begin
DmConexaoQuery.QuyPais.Close;
DmConexaoQuery.QuyTecnico.Close;
end;

end.
