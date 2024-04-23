object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 384
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 503
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    DesignSize = (
      503
      41)
    object cbbThemesList: TComboBox
      Left = 8
      Top = 8
      Width = 483
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      DropDownCount = 20
      Sorted = True
      TabOrder = 0
      OnChange = cbbThemesListChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 503
    Height = 343
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 487
      Height = 320
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 20
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      ExplicitLeft = 256
      ExplicitTop = 152
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
  end
end
