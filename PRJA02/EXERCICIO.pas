unit EXERCICIO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    dsEXERCICIO: TClientDataSet;
    dsEXERCICIO2: TDataSource;
    pnlEXERCICIO: TPanel;
    grpEXERCICIO: TGroupBox;
    lbl1: TLabel;
    btnADC_FILTRO: TButton;
    btnRMV_FILTRO: TButton;
    dbnvgrEXERCICIO: TDBNavigator;
    DBGrid1: TDBGrid;
    grp1: TGroupBox;
    btnLIMPACAMPOS: TButton;
    btnINDEXA_ID: TButton;
    btnINDEXA_NOME: TButton;
    edt1: TEdit;
    edtPERCORRER: TEdit;
    btnPERCORE: TButton;
    grp2: TGroupBox;
    edtLOCATE: TEdit;
    btnLOCATE: TButton;
    grp3: TGroupBox;
    edtFINDKEY_VALOR: TEdit;
    btnFINDKEY: TButton;
    lbl2: TLabel;
    dbedtPRODUTOS_AGREGADOS: TDBEdit;
    dsEXERCICIOID: TIntegerField;
    dsEXERCICIONOME: TStringField;
    dsEXERCICIOVALOR: TCurrencyField;
    dsEXERCICIOQUANTIDADE: TFloatField;
    dsEXERCICIOTOTAL: TCurrencyField;
    dsEXERCICIOPRODUTOS_TOTAL: TAggregateField;
    procedure dsEXERCICIOCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.dsEXERCICIOCalcFields(DataSet: TDataSet);
begin
//REALIZA O CALCULO E JOGA NO CAMPO TOTAL
dsEXERCICIO.FieldByName('TOTAL').Value:=
dsEXERCICIO.FieldByName('VALOR').Value * dsEXERCICIO.FieldByName('QUANTIDADE').Value;
end;

procedure TForm1.FormCreate(Sender: TObject);
const
cDataFile = 'Dados.xml';
begin
dsEXERCICIO.FileName:= ExtractFilePath(Application.ExeName)+ cDataFile;
if FileExists(dsEXERCICIO.FileName) then
dsEXERCICIO.Open
else
dsEXERCICIO.CreateDataSet;


end;



end.
