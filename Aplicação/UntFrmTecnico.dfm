object FrmTecnico: TFrmTecnico
  Left = 0
  Top = 0
  Caption = 'FrmTecnico'
  ClientHeight = 307
  ClientWidth = 673
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
    Top = 31
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 26
    Top = 77
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Pais: TLabel
    Left = 26
    Top = 123
    Width = 19
    Height = 13
    Caption = 'Pais'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 192
    Width = 673
    Height = 115
    Align = alBottom
    DataSource = DsTecnico
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TEC_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEC_NOME'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 673
    Height = 25
    DataSource = DsTecnico
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 160
    ExplicitWidth = 240
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 142
    Width = 209
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsTecnico
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsPais
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 50
    Width = 121
    Height = 21
    DataField = 'TEC_CODIGO'
    DataSource = DsTecnico
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 96
    Width = 121
    Height = 21
    DataField = 'TEC_NOME'
    DataSource = DsTecnico
    TabOrder = 4
  end
  object DsTecnico: TDataSource
    DataSet = DmConexaoQuery.QuyTecnico
    Left = 368
    Top = 48
  end
  object DsPais: TDataSource
    DataSet = DmConexaoQuery.QuyPais
    Left = 264
    Top = 40
  end
end
