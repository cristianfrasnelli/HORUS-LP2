object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 244
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 40
    Top = 16
    object fgdfg1: TMenuItem
      Caption = 'Cadastros'
      object Pas1: TMenuItem
        Caption = 'Pa'#237's'
        OnClick = Pas1Click
      end
      object tica1: TMenuItem
        Caption = 'T'#225'tica'
        OnClick = tica1Click
      end
      object cnico1: TMenuItem
        Caption = 'T'#233'cnico'
        OnClick = cnico1Click
      end
      object ClubeJogador1: TMenuItem
        Caption = 'Clube/Jogador'
        OnClick = ClubeJogador1Click
      end
    end
  end
end
