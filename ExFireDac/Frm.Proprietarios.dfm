object FrmProprietarios: TFrmProprietarios
  Left = 0
  Top = 0
  Caption = 'Propriet'#225'rios'
  ClientHeight = 426
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
    Left = 16
    Top = 31
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 18
    Top = 112
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 22
    Top = 192
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 788
    Height = 25
    DataSource = DsProprietarios
    Align = alTop
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 18
    Top = 72
    Width = 121
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DsProprietarios
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 144
    Width = 649
    Height = 21
    DataField = 'PRP_NOME'
    DataSource = DsProprietarios
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 232
    Width = 649
    Height = 21
    DataField = 'PRP_ENDERECO'
    DataSource = DsProprietarios
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 288
    Width = 788
    Height = 138
    Align = alBottom
    DataSource = DsProprietarios
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRP_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_ENDERECO'
        Visible = True
      end>
  end
  object DsProprietarios: TDataSource
    DataSet = Conexao.QryProprietario
    Left = 616
    Top = 64
  end
end
