object Form2: TForm2
  Left = 369
  Top = 128
  Width = 553
  Height = 540
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 24
    Top = 24
    Width = 297
    Height = 281
    Lines.Strings = (
      'LeeHanSeo')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 344
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 344
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 344
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 344
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 344
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Load'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Edit1: TEdit
    Left = 32
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
    OnKeyPress = Edit1KeyPress
  end
  object Button7: TButton
    Left = 160
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Message'
    TabOrder = 7
    OnClick = Button7Click
  end
end
