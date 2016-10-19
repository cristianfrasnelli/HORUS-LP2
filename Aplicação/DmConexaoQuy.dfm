object DmConexaoQuery: TDmConexaoQuery
  OldCreateOrder = False
  Height = 304
  Width = 550
  object QuyPais: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'SELECT PAIS.PAI_CODIGO,'
      'PAIS.PAI_NOME'
      'FROM PAIS')
    Left = 72
    Top = 46
    object QuyPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo Pais'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QuyPaisPAI_NOME: TStringField
      DisplayLabel = 'Nome Pais'
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
  end
  object QuyTatica: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'SELECT TATICA.TAT_CODIGO,'
      'TATICA.TAT_DESCRICAO,'
      'TATICA.TAT_ESQUEMA'
      'FROM TATICA')
    Left = 152
    Top = 48
    object QuyTaticaTAT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo T'#225'tica'
      FieldName = 'TAT_CODIGO'
      Origin = 'TAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QuyTaticaTAT_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o T'#225'tica'
      FieldName = 'TAT_DESCRICAO'
      Origin = 'TAT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QuyTaticaTAT_ESQUEMA: TStringField
      DisplayLabel = 'Esquema'
      FieldName = 'TAT_ESQUEMA'
      Origin = 'TAT_ESQUEMA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
  end
  object QuyTecnico: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'SELECT TECNICO.TEC_CODIGO,'
      'TECNICO.PAI_CODIGO,'
      'TECNICO.TEC_NOME'
      'FROM TECNICO')
    Left = 232
    Top = 48
    object QuyTecnicoTEC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo T'#233'cnico'
      FieldName = 'TEC_CODIGO'
      Origin = 'TEC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QuyTecnicoPAI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo Pais'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QuyTecnicoTEC_NOME: TStringField
      DisplayLabel = 'Nome Tecnico'
      FieldName = 'TEC_NOME'
      Origin = 'TEC_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
  end
  object QuyClube: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'SELECT CLUBE.CLB_CODIGO,'
      'CLUBE.TAT_CODIGO,'
      'CLUBE.TEC_CODIGO,'
      'CLUBE.PAI_CODIGO,'
      'CLUBE.CLB_NOME,'
      'CLUBE.CLB_ESTADIO,'
      'CLUBE.CLB_DTFUNDACAO'
      'FROM CLUBE')
    Left = 312
    Top = 48
    object QuyClubeCLB_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo Clube'
      FieldName = 'CLB_CODIGO'
      Origin = 'CLB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QuyClubeTAT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo T'#225'tica'
      FieldName = 'TAT_CODIGO'
      Origin = 'TAT_CODIGO'
      Required = True
    end
    object QuyClubeTEC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo T'#233'cnico'
      FieldName = 'TEC_CODIGO'
      Origin = 'TEC_CODIGO'
      Required = True
    end
    object QuyClubePAI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo Pais'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      Required = True
    end
    object QuyClubeCLB_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CLB_NOME'
      Origin = 'CLB_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QuyClubeCLB_ESTADIO: TStringField
      DisplayLabel = 'Est'#225'dio'
      FieldName = 'CLB_ESTADIO'
      Origin = 'CLB_ESTADIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object QuyClubeCLB_DTFUNDACAO: TDateField
      DisplayLabel = 'Data Funda'#231#227'o'
      FieldName = 'CLB_DTFUNDACAO'
      Origin = 'CLB_DTFUNDACAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QuyJogador: TFDQuery
    MasterSource = DsMestreDetalhe
    MasterFields = 'CLB_CODIGO'
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'SELECT JOGADOR.JOG_NUMERO,'
      'JOGADOR.PAI_CODIGO,'
      'JOGADOR.CLB_CODIGO,'
      'JOGADOR.JOG_NOME,'
      'JOGADOR.JOG_POSICAO,'
      'JOGADOR.JOG_IDADE,'
      'JOGADOR.JOG_LADO,'
      'JOGADOR.JOG_TITULAR,'
      'JOGADOR.JOG_CARACTERISTICA'
      'FROM JOGADOR'
      'WHERE'
      'JOGADOR.CLB_CODIGO = :CLB_CODIGO')
    Left = 384
    Top = 48
    ParamData = <
      item
        Name = 'CLB_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QuyJogadorJOG_NUMERO: TIntegerField
      DisplayLabel = 'N'#218'MERO'
      FieldName = 'JOG_NUMERO'
      Origin = 'JOG_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QuyJogadorPAI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo Pais'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      Required = True
    end
    object QuyJogadorCLB_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo Clube'
      FieldName = 'CLB_CODIGO'
      Origin = 'CLB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QuyJogadorJOG_NOME: TStringField
      DisplayLabel = 'Nome Jogador'
      FieldName = 'JOG_NOME'
      Origin = 'JOG_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QuyJogadorJOG_POSICAO: TStringField
      DisplayLabel = 'Posi'#231#227'o Jogador'
      FieldName = 'JOG_POSICAO'
      Origin = 'JOG_POSICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object QuyJogadorJOG_IDADE: TIntegerField
      DisplayLabel = 'Idade Jogador'
      FieldName = 'JOG_IDADE'
      Origin = 'JOG_IDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QuyJogadorJOG_LADO: TStringField
      DisplayLabel = 'Lado Jogador'
      FieldName = 'JOG_LADO'
      Origin = 'JOG_LADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QuyJogadorJOG_TITULAR: TStringField
      DisplayLabel = 'Jogador Titular'
      FieldName = 'JOG_TITULAR'
      Origin = 'JOG_TITULAR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QuyJogadorJOG_CARACTERISTICA: TStringField
      FieldName = 'JOG_CARACTERISTICA'
      Origin = 'JOG_CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object DsMestreDetalhe: TDataSource
    DataSet = QuyClube
    Left = 256
    Top = 136
  end
end
