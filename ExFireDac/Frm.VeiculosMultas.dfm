object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 529
  ClientWidth = 781
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
    Left = 72
    Top = 48
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 24
    Top = 26
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label3: TLabel
    Left = 24
    Top = 125
    Width = 56
    Height = 13
    Caption = 'Propriet'#225'rio'
  end
  object Label4: TLabel
    Left = 24
    Top = 80
    Width = 25
    Height = 13
    Caption = 'Placa'
  end
  object Label5: TLabel
    Left = 209
    Top = 79
    Width = 29
    Height = 13
    Caption = 'Marca'
  end
  object Label6: TLabel
    Left = 415
    Top = 80
    Width = 34
    Height = 13
    Caption = 'Modelo'
  end
  object Label7: TLabel
    Left = 616
    Top = 79
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Label8: TLabel
    Left = 8
    Top = 333
    Width = 22
    Height = 13
    Caption = #205'tem'
  end
  object Label9: TLabel
    Left = 209
    Top = 330
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label10: TLabel
    Left = 415
    Top = 333
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label11: TLabel
    Left = 624
    Top = 333
    Width = 40
    Height = 13
    Caption = 'R$ Valor'
  end
  object Label12: TLabel
    Left = 8
    Top = 389
    Width = 24
    Height = 13
    Caption = 'Local'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 781
    Height = 25
    DataSource = DsVeiculo
    Align = alTop
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 45
    Width = 121
    Height = 21
    DataField = 'VEI_CODIGO'
    DataSource = DsVeiculo
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 98
    Width = 145
    Height = 21
    DataField = 'VEI_PLACA'
    DataSource = DsVeiculo
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 209
    Top = 98
    Width = 144
    Height = 21
    DataField = 'VEI_MARCA'
    DataSource = DsVeiculo
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 415
    Top = 99
    Width = 146
    Height = 21
    DataField = 'VEI_MODELO'
    DataSource = DsVeiculo
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 616
    Top = 98
    Width = 137
    Height = 21
    DataField = 'VEI_ANO'
    DataSource = DsVeiculo
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 144
    Width = 729
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DsVeiculo
    KeyField = 'PRP_CODIGO'
    ListField = 'PRP_NOME'
    ListSource = DsProprietarios
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 171
    Width = 737
    Height = 120
    DataSource = DsVeiculo
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_PLACA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MARCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MODELO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_ANO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_NOME'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 3
    Top = 297
    Width = 770
    Height = 25
    DataSource = DsMultas
    TabOrder = 8
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 352
    Width = 121
    Height = 21
    DataField = 'MLT_ITEM'
    DataSource = DsMultas
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 209
    Top = 352
    Width = 121
    Height = 21
    DataField = 'MLT_DATA'
    DataSource = DsMultas
    TabOrder = 10
  end
  object DBEdit8: TDBEdit
    Left = 415
    Top = 352
    Width = 121
    Height = 21
    DataField = 'MLT_HORA'
    DataSource = DsMultas
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 624
    Top = 352
    Width = 121
    Height = 21
    DataField = 'MLT_VALOR'
    DataSource = DsMultas
    TabOrder = 12
  end
  object DBEdit10: TDBEdit
    Left = 8
    Top = 408
    Width = 737
    Height = 21
    DataField = 'MLT_LOCAL'
    DataSource = DsMultas
    TabOrder = 13
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 435
    Width = 781
    Height = 94
    Align = alBottom
    DataSource = DsMultas
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_ITEM'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_DATA'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_HORA'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_VALOR'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_LOCAL'
        Visible = True
      end>
  end
  object DsVeiculo: TDataSource
    DataSet = Conexao.QryVeiculo
    Left = 288
    Top = 32
  end
  object DsMultas: TDataSource
    DataSet = Conexao.QryMultas
    Left = 360
    Top = 32
  end
  object DsProprietarios: TDataSource
    DataSet = Conexao.QryProprietario
    Left = 432
    Top = 32
  end
end
