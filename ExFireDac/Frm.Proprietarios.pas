unit Frm.Proprietarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Dm.Conexao, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrmProprietarios = class(TForm)
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DsProprietarios: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProprietarios: TFrmProprietarios;

implementation

{$R *.dfm}

procedure TFrmProprietarios.FormCreate(Sender: TObject);
begin
Dm.Conexao.Conexao.QryProprietario.Open;
end;

procedure TFrmProprietarios.FormDestroy(Sender: TObject);
begin
 Dm.Conexao.Conexao.QryProprietario.Close;
end;

end.
