object Form1: TForm1
  Left = 334
  Top = 203
  Width = 871
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 481
    Height = 289
    TabOrder = 0
    ControlData = {
      4C000000B6310000DE1D00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Button1: TButton
    Left = 544
    Top = 104
    Width = 75
    Height = 25
    Caption = #45944#47560#45817
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 289
    Width = 838
    Height = 259
    Align = alBottom
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    Filter = 'AllFiles|*.*|TextFiles|*.txt'
    Left = 544
    Top = 176
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 16
    object N1: TMenuItem
      Caption = #54028#51068
      object N3: TMenuItem
        Caption = #51069#44592
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #51200#51109
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object XXXX1: TMenuItem
        Caption = 'XXXX'
        object AAAA1: TMenuItem
          Caption = 'AAAA'
        end
        object BBBB1: TMenuItem
          Caption = 'BBBB'
        end
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object N7: TMenuItem
        Caption = #51333#47308
      end
    end
    object N2: TMenuItem
      Caption = #54200#51665
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 96
    object A1: TMenuItem
      Caption = 'A'
    end
    object B1: TMenuItem
      Caption = 'B'
    end
    object C1: TMenuItem
      Caption = 'C'
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 608
    Top = 184
  end
end
