object FrmClubeJogador: TFrmClubeJogador
  Left = 0
  Top = 0
  Caption = 'Clube/Jogador'
  ClientHeight = 542
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 53
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 192
    Top = 53
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 360
    Top = 55
    Width = 35
    Height = 13
    Caption = 'Est'#225'dio'
  end
  object Label4: TLabel
    Left = 552
    Top = 53
    Width = 73
    Height = 13
    Caption = 'Data Funda'#231#227'o'
  end
  object Label5: TLabel
    Left = 24
    Top = 101
    Width = 29
    Height = 13
    Caption = 'T'#225'tica'
  end
  object Label6: TLabel
    Left = 192
    Top = 101
    Width = 36
    Height = 13
    Caption = 'T'#233'cnico'
  end
  object Label7: TLabel
    Left = 360
    Top = 101
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object Label8: TLabel
    Left = 26
    Top = 301
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label9: TLabel
    Left = 192
    Top = 301
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label10: TLabel
    Left = 360
    Top = 301
    Width = 36
    Height = 13
    Caption = 'Posi'#231#227'o'
  end
  object Label11: TLabel
    Left = 552
    Top = 303
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label12: TLabel
    Left = 26
    Top = 357
    Width = 23
    Height = 13
    Caption = 'Lado'
  end
  object Label13: TLabel
    Left = 192
    Top = 357
    Width = 30
    Height = 13
    Caption = 'Titular'
  end
  object Label14: TLabel
    Left = 360
    Top = 357
    Width = 66
    Height = 13
    Caption = 'Caracter'#237'stica'
  end
  object Label15: TLabel
    Left = 26
    Top = 405
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object Label17: TLabel
    Left = 24
    Top = 31
    Width = 31
    Height = 13
    Caption = 'CLUBE'
  end
  object Label18: TLabel
    Left = 24
    Top = 270
    Width = 49
    Height = 13
    Caption = 'JOGADOR'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 788
    Height = 25
    DataSource = DsClube
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 632
    ExplicitTop = 304
    ExplicitWidth = 240
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 147
    Width = 780
    Height = 86
    DataSource = DsClube
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLB_CODIGO'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAT_CODIGO'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEC_CODIGO'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_CODIGO'
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLB_NOME'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLB_ESTADIO'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLB_DTFUNDACAO'
        Width = 156
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 72
    Width = 121
    Height = 21
    DataField = 'CLB_CODIGO'
    DataSource = DsClube
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 192
    Top = 72
    Width = 121
    Height = 21
    DataField = 'CLB_NOME'
    DataSource = DsClube
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 360
    Top = 72
    Width = 121
    Height = 21
    DataField = 'CLB_ESTADIO'
    DataSource = DsClube
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 552
    Top = 72
    Width = 121
    Height = 21
    DataField = 'CLB_DTFUNDACAO'
    DataSource = DsClube
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 120
    Width = 145
    Height = 21
    DataField = 'TAT_CODIGO'
    DataSource = DsClube
    KeyField = 'TAT_CODIGO'
    ListField = 'TAT_DESCRICAO'
    ListSource = DsTatica
    TabOrder = 6
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 192
    Top = 120
    Width = 145
    Height = 21
    DataField = 'TEC_CODIGO'
    DataSource = DsClube
    KeyField = 'TEC_CODIGO'
    ListField = 'TEC_NOME'
    ListSource = DsTecnico
    TabOrder = 7
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 360
    Top = 120
    Width = 145
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsClube
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsPais
    TabOrder = 8
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 454
    Width = 788
    Height = 88
    Align = alBottom
    DataSource = DsJogador
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'JOG_NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLB_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_NOME'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_POSICAO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_IDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_LADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_TITULAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_CARACTERISTICA'
        Width = 547
        Visible = True
      end>
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 320
    Width = 121
    Height = 21
    DataField = 'JOG_NUMERO'
    DataSource = DsJogador
    TabOrder = 10
  end
  object DBEdit6: TDBEdit
    Left = 192
    Top = 320
    Width = 121
    Height = 21
    DataField = 'JOG_NOME'
    DataSource = DsJogador
    TabOrder = 11
  end
  object DBEdit7: TDBEdit
    Left = 360
    Top = 320
    Width = 121
    Height = 21
    DataField = 'JOG_POSICAO'
    DataSource = DsJogador
    TabOrder = 12
  end
  object DBEdit9: TDBEdit
    Left = 24
    Top = 376
    Width = 121
    Height = 21
    DataField = 'JOG_LADO'
    DataSource = DsJogador
    TabOrder = 13
  end
  object DBEdit10: TDBEdit
    Left = 192
    Top = 376
    Width = 121
    Height = 21
    DataField = 'JOG_TITULAR'
    DataSource = DsJogador
    TabOrder = 14
  end
  object DBEdit11: TDBEdit
    Left = 552
    Top = 322
    Width = 121
    Height = 21
    DataField = 'JOG_IDADE'
    DataSource = DsJogador
    TabOrder = 15
  end
  object DBEdit12: TDBEdit
    Left = 360
    Top = 376
    Width = 121
    Height = 21
    DataField = 'JOG_CARACTERISTICA'
    DataSource = DsJogador
    TabOrder = 16
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 24
    Top = 424
    Width = 145
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsJogador
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsPais
    TabOrder = 17
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 239
    Width = 760
    Height = 25
    DataSource = DsJogador
    TabOrder = 18
  end
  object DsClube: TDataSource
    DataSet = DmConexaoQuery.QuyClube
    Left = 728
    Top = 280
  end
  object DsJogador: TDataSource
    DataSet = DmConexaoQuery.QuyJogador
    Left = 728
    Top = 336
  end
  object DsTatica: TDataSource
    DataSet = DmConexaoQuery.QuyTatica
    Left = 568
    Top = 392
  end
  object DsTecnico: TDataSource
    DataSet = DmConexaoQuery.QuyTecnico
    Left = 640
    Top = 392
  end
  object DsPais: TDataSource
    DataSet = DmConexaoQuery.QuyPais
    Left = 728
    Top = 392
  end
end
