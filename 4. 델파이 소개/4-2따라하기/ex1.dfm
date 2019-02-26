object Form1: TForm1
  Left = 172
  Top = 193
  Width = 700
  Height = 540
  Caption = 'Form1'
  Color = clActiveCaption
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
    Left = 368
    Top = 104
    Width = 44
    Height = 13
    Caption = #49324#50857#51088'ID'
    OnMouseEnter = Label1MouseEnter
  end
  object Panel1: TPanel
    Left = 40
    Top = 96
    Width = 313
    Height = 233
    PopupMenu = PopupMenu1
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 416
    Top = 100
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 584
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 32
    object N1: TMenuItem
      Caption = #54028#51068
      object N2: TMenuItem
        Caption = #51069#44592
      end
      object N3: TMenuItem
        Caption = #51200#51109'&(A)'
        ShortCut = 16467
      end
    end
    object N4: TMenuItem
      Caption = #54200#51665
      object Insert: TMenuItem
        Caption = #44217#52432#50416#44592
        OnClick = InsertClick
      end
      object AAA1: TMenuItem
        Caption = 'AAA'
        object BBB1: TMenuItem
          Caption = 'BBB'
        end
      end
    end
    object N6: TMenuItem
      Caption = #46020#50880#47568
    end
  end
  object ImageList1: TImageList
    Left = 120
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 32
    object a1: TMenuItem
      Caption = 'a'
    end
    object b1: TMenuItem
      Caption = 'b'
    end
    object c1: TMenuItem
      Caption = 'c'
    end
  end
end
