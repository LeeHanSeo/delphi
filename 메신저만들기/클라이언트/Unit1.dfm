object Form1: TForm1
  Left = 207
  Top = 141
  Width = 607
  Height = 472
  Caption = 'Form1'
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
    Left = 8
    Top = 8
    Width = 369
    Height = 273
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 288
    Width = 369
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 384
    Top = 8
    Width = 75
    Height = 25
    Caption = #51217#49549
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 384
    Top = 40
    Width = 185
    Height = 241
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 8
    Top = 320
    Width = 137
    Height = 21
    TabOrder = 4
    OnKeyPress = Edit1KeyPress
  end
  object Edit3: TEdit
    Left = 8
    Top = 352
    Width = 137
    Height = 21
    TabOrder = 5
    OnKeyPress = Edit1KeyPress
  end
  object Button2: TButton
    Left = 160
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 6
    OnClick = Button2Click
  end
  object IdTCPClient1: TIdTCPClient
    MaxLineAction = maException
    ReadTimeout = 0
    Host = '127.0.0.1'
    Port = 1234
    Left = 304
    Top = 32
  end
  object Timer1: TTimer
    Interval = 300
    OnTimer = Timer1Timer
    Left = 304
    Top = 88
  end
end
