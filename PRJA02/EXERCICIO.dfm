object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 464
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlEXERCICIO: TPanel
    Left = 0
    Top = 73
    Width = 788
    Height = 391
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 79
    object lbl2: TLabel
      Left = 64
      Top = 352
      Width = 144
      Height = 13
      Caption = 'Total dos produtos agregados'
    end
    object dbnvgrEXERCICIO: TDBNavigator
      Left = 1
      Top = 1
      Width = 786
      Height = 25
      DataSource = dsEXERCICIO2
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 473
      ExplicitTop = 26
      ExplicitWidth = 240
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 26
      Width = 786
      Height = 159
      Align = alTop
      DataSource = dsEXERCICIO2
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Visible = True
        end>
    end
    object grp1: TGroupBox
      Left = 135
      Top = 224
      Width = 153
      Height = 105
      Caption = 'Percorre e localiza valor'
      TabOrder = 2
      object edtPERCORRER: TEdit
        Left = 16
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object btnPERCORE: TButton
        Left = 16
        Top = 51
        Width = 120
        Height = 25
        Caption = 'Percorrer'
        TabOrder = 1
      end
    end
    object btnLIMPACAMPOS: TButton
      Left = 24
      Top = 224
      Width = 105
      Height = 25
      Caption = 'Limpar Campos'
      TabOrder = 3
    end
    object btnINDEXA_ID: TButton
      Left = 24
      Top = 264
      Width = 105
      Height = 25
      Caption = 'Indexar ID'
      TabOrder = 4
    end
    object btnINDEXA_NOME: TButton
      Left = 24
      Top = 304
      Width = 105
      Height = 25
      Caption = 'Indexar Por Nome'
      TabOrder = 5
    end
    object grp2: TGroupBox
      Left = 294
      Top = 224
      Width = 162
      Height = 105
      Caption = 'Locate valor'
      TabOrder = 6
      object edtLOCATE: TEdit
        Left = 24
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object btnLOCATE: TButton
        Left = 24
        Top = 51
        Width = 121
        Height = 25
        Caption = 'Locate'
        TabOrder = 1
      end
    end
    object grp3: TGroupBox
      Left = 472
      Top = 224
      Width = 185
      Height = 105
      Caption = 'FindKey Valor'
      TabOrder = 7
      object edtFINDKEY_VALOR: TEdit
        Left = 16
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object btnFINDKEY: TButton
        Left = 16
        Top = 51
        Width = 121
        Height = 25
        Caption = 'FindKey'
        TabOrder = 1
      end
    end
    object dbedtPRODUTOS_AGREGADOS: TDBEdit
      Left = 224
      Top = 344
      Width = 193
      Height = 21
      TabOrder = 8
    end
  end
  object grpEXERCICIO: TGroupBox
    Left = 0
    Top = 0
    Width = 788
    Height = 73
    Align = alTop
    Caption = 'Filtro'
    TabOrder = 1
    object lbl1: TLabel
      Left = 48
      Top = 24
      Width = 67
      Height = 13
      Caption = 'Valor Do Filtro'
    end
    object btnADC_FILTRO: TButton
      Left = 367
      Top = 19
      Width = 130
      Height = 25
      Caption = 'ADICIONA FILTRO'
      TabOrder = 0
    end
    object btnRMV_FILTRO: TButton
      Left = 520
      Top = 19
      Width = 137
      Height = 25
      Caption = 'REMOVE FILTRO'
      TabOrder = 1
    end
    object edt1: TEdit
      Left = 121
      Top = 21
      Width = 224
      Height = 21
      TabOrder = 2
      Text = 'edt1'
    end
  end
  object dsEXERCICIO: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = dsEXERCICIOCalcFields
    Left = 512
    Top = 144
    object dsEXERCICIOID: TIntegerField
      FieldName = 'ID'
    end
    object dsEXERCICIONOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object dsEXERCICIOVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
    object dsEXERCICIOQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object dsEXERCICIOTOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
    object dsEXERCICIOPRODUTOS_TOTAL: TAggregateField
      FieldName = 'PRODUTOS_TOTAL'
      DisplayName = ''
      Expression = 'SUM(QUANTIDADE*VALOR)'
    end
  end
  object dsEXERCICIO2: TDataSource
    DataSet = dsEXERCICIO
    Left = 632
    Top = 160
  end
end
