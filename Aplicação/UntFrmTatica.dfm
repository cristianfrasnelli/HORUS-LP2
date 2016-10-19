object FrmTatica: TFrmTatica
  Left = 0
  Top = 0
  Caption = 'FrmTatica'
  ClientHeight = 326
  ClientWidth = 777
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
    Left = 32
    Top = 83
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label2: TLabel
    Left = 32
    Top = 133
    Width = 43
    Height = 13
    Caption = 'Esquema'
  end
  object Label3: TLabel
    Left = 32
    Top = 31
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 777
    Height = 25
    DataSource = DsTatica
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 240
    ExplicitTop = 144
    ExplicitWidth = 240
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 206
    Width = 777
    Height = 120
    Align = alBottom
    DataSource = DsTatica
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TAT_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAT_DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAT_ESQUEMA'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 56
    Width = 121
    Height = 21
    DataField = 'TAT_CODIGO'
    DataSource = DsTatica
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 106
    Width = 121
    Height = 21
    DataField = 'TAT_DESCRICAO'
    DataSource = DsTatica
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 152
    Width = 121
    Height = 21
    DataField = 'TAT_ESQUEMA'
    DataSource = DsTatica
    TabOrder = 4
  end
  object DsTatica: TDataSource
    DataSet = DmConexaoQuery.QuyTatica
    Left = 400
    Top = 96
  end
end
