object Form1: TForm1
  Left = 180
  Top = 204
  Width = 542
  Height = 384
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
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 526
    Height = 325
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    Left = 104
    Top = 72
    object N1: TMenuItem
      Caption = #54028#51068
      object N2: TMenuItem
        Caption = #51069#44592
      end
      object N3: TMenuItem
        Caption = #50416#44592
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N5: TMenuItem
        Caption = #51333#47308
        OnClick = N5Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 160
    Top = 72
  end
end
