object Form5: TForm5
  Left = 295
  Top = 210
  Width = 619
  Height = 475
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 32
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'ComboBox1'
    Items.Strings = (
      #44397#50612
      #50689#50612
      #49688#54617)
  end
  object ListBox1: TListBox
    Left = 192
    Top = 32
    Width = 201
    Height = 193
    ItemHeight = 13
    Items.Strings = (
      #44608#54620#49436
      #48149#54620#49436
      #51060#54620#49436
      #51060#54620#49436
      #51060#54620#49436)
    TabOrder = 1
  end
  object Button1: TButton
    Left = 32
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
