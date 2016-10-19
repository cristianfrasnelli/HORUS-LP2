unit DmConexaoQuy;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DmConexaoBanco;

type
  TDmConexaoQuery = class(TDataModule)
    QuyPais: TFDQuery;
    QuyPaisPAI_CODIGO: TIntegerField;
    QuyPaisPAI_NOME: TStringField;
    QuyTatica: TFDQuery;
    QuyTaticaTAT_CODIGO: TIntegerField;
    QuyTaticaTAT_DESCRICAO: TStringField;
    QuyTaticaTAT_ESQUEMA: TStringField;
    QuyTecnico: TFDQuery;
    QuyTecnicoTEC_CODIGO: TIntegerField;
    QuyTecnicoPAI_CODIGO: TIntegerField;
    QuyTecnicoTEC_NOME: TStringField;
    QuyClube: TFDQuery;
    QuyJogador: TFDQuery;
    QuyClubeCLB_CODIGO: TIntegerField;
    QuyClubeTAT_CODIGO: TIntegerField;
    QuyClubeTEC_CODIGO: TIntegerField;
    QuyClubePAI_CODIGO: TIntegerField;
    QuyClubeCLB_NOME: TStringField;
    QuyClubeCLB_ESTADIO: TStringField;
    QuyClubeCLB_DTFUNDACAO: TDateField;
    QuyJogadorJOG_NUMERO: TIntegerField;
    QuyJogadorPAI_CODIGO: TIntegerField;
    QuyJogadorCLB_CODIGO: TIntegerField;
    QuyJogadorJOG_NOME: TStringField;
    QuyJogadorJOG_POSICAO: TStringField;
    QuyJogadorJOG_IDADE: TIntegerField;
    QuyJogadorJOG_LADO: TStringField;
    QuyJogadorJOG_TITULAR: TStringField;
    QuyJogadorJOG_CARACTERISTICA: TStringField;
    DsMestreDetalhe: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConexaoQuery: TDmConexaoQuery;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
