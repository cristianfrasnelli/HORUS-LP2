unit UnitTRABALHO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    dstCONTROLE: TClientDataSet;
    dsESTOQUE: TDataSource;
    dstCONTROLEcodigo: TIntegerField;
    dstCONTROLEdescricao: TStringField;
    dstCONTROLEunidade: TStringField;
    dstCONTROLEfornecedor: TStringField;
    dstCONTROLEdata: TDateField;
    dstCONTROLEquantidade: TFloatField;
    dstCONTROLEunitario: TCurrencyField;
    dstCONTROLEtotal: TCurrencyField;
    dstCONTROLEestoqueqtd: TAggregateField;
    dstCONTROLEestoquevlr: TAggregateField;
    pnl1: TPanel;
    dbnvgrCONTROLE: TDBNavigator;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    dbedtCODIGO: TDBEdit;
    dbedtDESCRICAO: TDBEdit;
    dbedtUNIDADE: TDBEdit;
    dbedtDATA: TDBEdit;
    dbedtFORNECEDOR: TDBEdit;
    dbedtQUANTIDADE: TDBEdit;
    dbedtUNITARIO: TDBEdit;
    dbedtTOTAL: TDBEdit;
    grp2: TGroupBox;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    cbbCAMPO: TComboBox;
    cbbACAO: TComboBox;
    edtVALOR: TEdit;
    btnEXECUTAR: TButton;
    dbgrd1: TDBGrid;
    grp3: TGroupBox;
    lbl12: TLabel;
    lbl13: TLabel;
    dbedtQTD_EM_ESTOQUE: TDBEdit;
    dbedtVLR_EM_ESTOQUE: TDBEdit;
    procedure dstCONTROLECalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnEXECUTARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnEXECUTARClick(Sender: TObject);
//LIMPA TODOS OS CAMPOS QUE TEM NO FORM.
begin
  if cbbACAO.ItemIndex = 3 then
  begin
    dstCONTROLE.EmptyDataSet;
  end;

end;

procedure TForm1.dstCONTROLECalcFields(DataSet: TDataSet);
begin
//REALIZA O CALCULO E JOGA NO CAMPO TOTAL.
  dstCONTROLE.FieldByName('total').Value := dstCONTROLE.FieldByName('quantidade').Value * dstCONTROLE.FieldByName('unitario').Value;

end;

procedure TForm1.FormCreate(Sender: TObject);
//CRIA UM XML.
const
  cDataFile = 'Dados.xml';
begin
  dstCONTROLE.FileName := ExtractFilePath(Application.ExeName) + cDataFile;
  if FileExists(dstCONTROLE.FileName) then
    dstCONTROLE.Open
  else
    dstCONTROLE.CreateDataSet;

end;

end.

