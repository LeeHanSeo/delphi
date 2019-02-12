object Form1: TForm1
  Left = 253
  Top = 184
  Width = 770
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
  object Label1: TLabel
    Left = 120
    Top = 112
    Width = 42
    Height = 13
    Caption = #51060#54620#49436
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 440
    Top = 16
    Width = 241
    Height = 81
    PopupMenu = PopupMenu1
    TabOrder = 0
    object RadioButton4: TRadioButton
      Left = 8
      Top = 8
      Width = 113
      Height = 17
      Caption = 'RadioButton4'
      TabOrder = 0
    end
    object RadioButton5: TRadioButton
      Left = 8
      Top = 48
      Width = 113
      Height = 17
      Caption = 'RadioButton5'
      TabOrder = 1
    end
  end
  object Edit1: TEdit
    Left = 40
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 40
    Top = 208
    Width = 393
    Height = 129
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button1: TButton
    Left = 168
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 168
    Top = 56
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 4
  end
  object RadioButton1: TRadioButton
    Left = 304
    Top = 24
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 5
  end
  object RadioButton2: TRadioButton
    Left = 304
    Top = 64
    Width = 113
    Height = 17
    Caption = 'RadioButton2'
    TabOrder = 6
  end
  object RadioButton3: TRadioButton
    Left = 304
    Top = 104
    Width = 113
    Height = 17
    Caption = 'RadioButton3'
    TabOrder = 7
  end
  object RadioGroup1: TRadioGroup
    Left = 440
    Top = 104
    Width = 241
    Height = 105
    Caption = 'RadioGroup1'
    Items.Strings = (
      #51060
      #54620
      #49436)
    TabOrder = 8
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
        OnClick = N7Click
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
end
