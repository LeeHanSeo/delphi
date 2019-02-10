object Form1: TForm1
  Left = 192
  Top = 125
  Width = 1044
  Height = 540
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 181
    Width = 1028
    Height = 320
    Align = alBottom
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 104
    Width = 121
    Height = 21
    DataField = 'Category'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBImage1: TDBImage
    Left = 272
    Top = 8
    Width = 353
    Height = 161
    DataField = 'Graphic'
    DataSource = DataSource1
    TabOrder = 3
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'biolife.db'
    Left = 24
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 80
    Top = 48
  end
end
