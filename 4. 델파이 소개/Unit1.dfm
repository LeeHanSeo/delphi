object Form1: TForm1
  Left = 555
  Top = 168
  Width = 854
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 529
    Height = 313
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
  end
  object ColorGrid1: TColorGrid
    Left = 536
    Top = 0
    Width = 100
    Height = 100
    TabOrder = 0
  end
  object DrawGrid1: TDrawGrid
    Left = 536
    Top = 112
    Width = 105
    Height = 201
    ColCount = 1
    FixedCols = 0
    FixedRows = 0
    GridLineWidth = 0
    TabOrder = 1
    OnDrawCell = DrawGrid1DrawCell
  end
  object MainMenu1: TMainMenu
    Left = 240
    Top = 368
    object N1: TMenuItem
      Caption = #54028#51068
      object Create: TMenuItem
        AutoHotkeys = maManual
        Caption = #49352#47196#47564#46308#44592
        OnClick = CreateClick
      end
      object N3: TMenuItem
        AutoHotkeys = maManual
        Caption = #48520#47084#50724#44592
        OnClick = N3Click
      end
      object N4: TMenuItem
        AutoHotkeys = maManual
        Caption = #51200#51109#54616#44592
        OnClick = N4Click
      end
      object N5: TMenuItem
        AutoHotkeys = maManual
        Caption = '-'
      end
      object N6: TMenuItem
        AutoHotkeys = maManual
        Caption = #51333#47308
        OnClick = N6Click
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 152
    Top = 368
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = '.bmp'
    Left = 72
    Top = 368
  end
end
