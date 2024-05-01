object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 566
  ClientWidth = 1205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1205
    Height = 81
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 1199
    DesignSize = (
      1205
      81)
    object cbbThemesList: TComboBox
      Left = 10
      Top = 10
      Width = 1173
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      DropDownCount = 20
      Sorted = True
      TabOrder = 0
      OnChange = cbbThemesListChange
    end
    object chbApply: TCheckBox
      Left = 10
      Top = 44
      Width = 581
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1055#1088#1080#1084#1077#1085#1103#1090#1100' '#1090#1077#1084#1091' '#1082#1086' '#1074#1089#1077#1084' '#1082#1086#1085#1090#1088#1086#1083#1083#1072#1084' '#1085#1072' '#1092#1086#1088#1084#1077
      TabOrder = 1
      OnClick = chbApplyClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 1205
    Height = 485
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitWidth = 1199
    ExplicitHeight = 484
    object Splitter1: TSplitter
      Left = 621
      Top = 1
      Width = 4
      Height = 483
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 620
      ExplicitHeight = 397
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 14
      Top = 14
      Width = 594
      Height = 445
      Margins.Left = 13
      Margins.Top = 13
      Margins.Right = 13
      Margins.Bottom = 25
      Align = alLeft
      Caption = 'Panel3'
      TabOrder = 0
      ExplicitHeight = 444
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 638
      Top = 14
      Width = 553
      Height = 445
      Margins.Left = 13
      Margins.Top = 13
      Margins.Right = 13
      Margins.Bottom = 25
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 1
      ExplicitWidth = 547
      ExplicitHeight = 444
    end
  end
end
