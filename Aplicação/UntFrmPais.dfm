object FrmPais: TFrmPais
  Left = 0
  Top = 0
  Caption = 'FrmPais'
  ClientHeight = 348
  ClientWidth = 763
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
    Left = 56
    Top = 40
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 58
    Top = 104
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 763
    Height = 25
    DataSource = DsPais
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 272
    ExplicitTop = 240
    ExplicitWidth = 240
  end
  object GRIDPais: TDBGrid
    Left = 0
    Top = 173
    Width = 763
    Height = 175
    Align = alBottom
    DataSource = DsPais
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PAI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 59
    Width = 153
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsPais
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 123
    Width = 225
    Height = 21
    DataField = 'PAI_NOME'
    DataSource = DsPais
    TabOrder = 3
  end
  object DsPais: TDataSource
    DataSet = DmConexaoQuery.QuyPais
    Left = 456
    Top = 56
  end
end
