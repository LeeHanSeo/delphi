object Form1: TForm1
  Left = 425
  Top = 151
  Width = 660
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
  object BitBtn1: TBitBtn
    Left = 128
    Top = 96
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
  end
  object MediaPlayer1: TMediaPlayer
    Left = 360
    Top = 24
    Width = 253
    Height = 30
    Display = Panel1
    FileName = 'C:\Users\Lee\Desktop\01.wmv'
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 24
    Top = 160
    Width = 593
    Height = 249
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 16
    object N1: TMenuItem
      Caption = #54028#51068
      object N3: TMenuItem
        Caption = #51069#44592
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
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 136
    Top = 16
  end
end
