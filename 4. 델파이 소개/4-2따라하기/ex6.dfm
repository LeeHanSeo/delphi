object Form6: TForm6
  Left = 353
  Top = 195
  Width = 627
  Height = 540
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MaskEdit1: TMaskEdit
    Left = 24
    Top = 40
    Width = 119
    Height = 21
    EditMask = '!\(999\)000-0000;1;_'
    MaxLength = 13
    TabOrder = 0
    Text = '(   )   -    '
  end
  object Button1: TButton
    Left = 168
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object MaskEdit2: TMaskEdit
    Left = 24
    Top = 80
    Width = 120
    Height = 21
    EditMask = '###,###,###,###'
    MaxLength = 15
    TabOrder = 2
    Text = '   ,   ,   ,   '
  end
  object StringGrid1: TStringGrid
    Left = 24
    Top = 120
    Width = 320
    Height = 120
    TabOrder = 3
  end
  object DrawGrid1: TDrawGrid
    Left = 16
    Top = 256
    Width = 320
    Height = 120
    FixedRows = 0
    TabOrder = 4
    OnDrawCell = DrawGrid1DrawCell
  end
  object Button2: TButton
    Left = 376
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
end
