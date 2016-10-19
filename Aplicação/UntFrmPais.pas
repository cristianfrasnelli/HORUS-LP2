unit UntFrmPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,DmConexaoQuy, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPais = class(TForm)
    DsPais: TDataSource;
    DBNavigator1: TDBNavigator;
    GRIDPais: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPais: TFrmPais;

implementation

{$R *.dfm}

procedure TFrmPais.FormCreate(Sender: TObject);
begin
DmConexaoQuery.QuyPais.Open();
end;

procedure TFrmPais.FormDestroy(Sender: TObject);
begin
DmConexaoQuery.QuyPais.Close;
end;

end.
