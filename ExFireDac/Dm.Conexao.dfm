object Conexao: TConexao
  OldCreateOrder = False
  Height = 311
  Width = 392
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=C:\LP2\ExFireDac\fbclient.dll'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 128
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 240
    Top = 32
  end
  object QryProprietario: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT PROPRIETARIO.PRP_CODIGO, '
      'PROPRIETARIO.PRP_NOME, '
      'PROPRIETARIO.PRP_ENDERECO'
      'FROM PROPRIETARIO')
    Left = 40
    Top = 112
    object QryProprietarioPRP_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRP_CODIGO'
      Origin = 'PRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProprietarioPRP_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'PRP_NOME'
      Origin = 'PRP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object QryProprietarioPRP_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'PRP_ENDERECO'
      Origin = 'PRP_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object QryVeiculo: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT VEICULO.VEI_CODIGO, '
      'VEICULO.VEI_PLACA, '
      'VEICULO.VEI_MARCA, '
      'VEICULO.VEI_MODELO, '
      'VEICULO.VEI_ANO, '
      'VEICULO.PRP_CODIGO'
      'FROM VEICULO')
    Left = 136
    Top = 120
    object QryVeiculoVEI_CODIGO: TIntegerField
      DisplayLabel = 'Codigo Veiculo'
      FieldName = 'VEI_CODIGO'
      Origin = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVeiculoVEI_PLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'VEI_PLACA'
      Origin = 'VEI_PLACA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object QryVeiculoVEI_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'VEI_MARCA'
      Origin = 'VEI_MARCA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object QryVeiculoVEI_MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'VEI_MODELO'
      Origin = 'VEI_MODELO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object QryVeiculoVEI_ANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'VEI_ANO'
      Origin = 'VEI_ANO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryVeiculoPRP_CODIGO: TIntegerField
      DisplayLabel = 'Cdg Proprietario'
      FieldName = 'PRP_CODIGO'
      Origin = 'PRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVeiculoPRP_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'PRP_NOME'
      LookupDataSet = QryProprietario
      LookupKeyFields = 'PRP_CODIGO'
      LookupResultField = 'PRP_NOME'
      KeyFields = 'PRP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 60
      Lookup = True
    end
  end
  object QryMultas: TFDQuery
    AfterInsert = QryMultasAfterInsert
    MasterSource = DsMestreVeiculo
    MasterFields = 'VEI_CODIGO'
    Connection = FDConexao
    SQL.Strings = (
      'SELECT MULTAS.VEI_CODIGO, '
      'MULTAS.MLT_ITEM, '
      'MULTAS.MLT_DATA, '
      'MULTAS.MLT_HORA, '
      'MULTAS.MLT_VALOR, '
      'MULTAS.MLT_LOCAL'
      'FROM MULTAS'
      'WHERE'
      '(MULTAS.VEI_CODIGO = :VEI_CODIGO)')
    Left = 136
    Top = 232
    ParamData = <
      item
        Name = 'VEI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QryMultasVEI_CODIGO: TIntegerField
      DisplayLabel = 'Codigo Veiculo'
      FieldName = 'VEI_CODIGO'
      Origin = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMultasMLT_ITEM: TIntegerField
      DisplayLabel = 'Multa Item'
      FieldName = 'MLT_ITEM'
      Origin = 'MLT_ITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryMultasMLT_DATA: TDateField
      DisplayLabel = 'Data Multa'
      FieldName = 'MLT_DATA'
      Origin = 'MLT_DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryMultasMLT_HORA: TTimeField
      DisplayLabel = 'Hora Multa'
      FieldName = 'MLT_HORA'
      Origin = 'MLT_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object QryMultasMLT_VALOR: TBCDField
      DisplayLabel = 'Valor Multa'
      FieldName = 'MLT_VALOR'
      Origin = 'MLT_VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object QryMultasMLT_LOCAL: TStringField
      DisplayLabel = 'Local Multa'
      FieldName = 'MLT_LOCAL'
      Origin = 'MLT_LOCAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object DsMestreVeiculo: TDataSource
    DataSet = QryVeiculo
    Left = 136
    Top = 176
  end
end
