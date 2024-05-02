object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Form2'
  ClientHeight = 424
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnShow = FormShow
  PixelsPerInch = 120
  DesignSize = (
    621
    424)
  TextHeight = 20
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 44
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Label1'
  end
  object Edit2: TEdit
    Left = 10
    Top = 36
    Width = 151
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
    Text = 'Edit2'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 400
    Width = 621
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Panels = <>
    SimplePanel = True
    SimpleText = 'This is a simple text'
    ExplicitTop = 399
    ExplicitWidth = 615
  end
  object Memo1: TMemo
    Left = 169
    Top = 10
    Width = 435
    Height = 219
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 2
    ExplicitWidth = 429
    ExplicitHeight = 218
  end
  object CheckBox1: TCheckBox
    Left = 10
    Top = 73
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'CheckBox1'
    TabOrder = 3
  end
  object RadioButton1: TRadioButton
    Left = 10
    Top = 101
    Width = 141
    Height = 22
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'RadioButton1'
    Checked = True
    TabOrder = 4
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 10
    Top = 130
    Width = 141
    Height = 21
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'RadioButton2'
    TabOrder = 5
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 245
    Width = 594
    Height = 103
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'GroupBox1'
    TabOrder = 6
    ExplicitTop = 244
    ExplicitWidth = 588
    DesignSize = (
      594
      103)
    object Label2: TLabel
      Left = 4
      Top = 20
      Width = 44
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Label2'
    end
    object ProgressBar1: TProgressBar
      Left = 159
      Top = 20
      Width = 431
      Height = 26
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akTop, akRight]
      Position = 45
      TabOrder = 0
      ExplicitWidth = 425
    end
    object TrackBar1: TTrackBar
      Left = 159
      Top = 54
      Width = 431
      Height = 37
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      ThumbLength = 25
      OnChange = TrackBar1Change
      ExplicitWidth = 425
    end
    object Edit3: TEdit
      Left = 4
      Top = 46
      Width = 147
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 2
      Text = 'Edit3'
    end
  end
  object Button1: TButton
    Left = 308
    Top = 361
    Width = 93
    Height = 32
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akRight, akBottom]
    Caption = 'Button1'
    TabOrder = 7
    ExplicitLeft = 302
    ExplicitTop = 360
  end
  object Button2: TButton
    Left = 409
    Top = 361
    Width = 94
    Height = 32
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akRight, akBottom]
    Caption = 'Button2'
    TabOrder = 8
    ExplicitLeft = 403
    ExplicitTop = 360
  end
  object Button3: TButton
    Left = 510
    Top = 361
    Width = 94
    Height = 32
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akRight, akBottom]
    Caption = 'Button3'
    TabOrder = 9
    ExplicitLeft = 504
    ExplicitTop = 360
  end
  object MainMenu1: TMainMenu
    Left = 168
    Top = 65520
    object N1: TMenuItem
      Caption = 'File'
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
    end
    object View1: TMenuItem
      Caption = 'View'
    end
    object Help1: TMenuItem
      Caption = 'Help'
    end
  end
end
