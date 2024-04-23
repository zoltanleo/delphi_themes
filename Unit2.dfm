object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Form2'
  ClientHeight = 339
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnShow = FormShow
  DesignSize = (
    491
    339)
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object Edit2: TEdit
    Left = 8
    Top = 29
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Edit2'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 320
    Width = 491
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'This is a simple text'
    ExplicitTop = 311
    ExplicitWidth = 485
  end
  object Memo1: TMemo
    Left = 135
    Top = 8
    Width = 348
    Height = 175
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 2
    ExplicitWidth = 342
    ExplicitHeight = 166
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 58
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 3
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 81
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    Checked = True
    TabOrder = 4
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 8
    Top = 104
    Width = 113
    Height = 17
    Caption = 'RadioButton2'
    TabOrder = 5
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 196
    Width = 475
    Height = 82
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'GroupBox1'
    TabOrder = 6
    ExplicitTop = 187
    ExplicitWidth = 469
    DesignSize = (
      475
      82)
    object Label2: TLabel
      Left = 3
      Top = 16
      Width = 34
      Height = 15
      Caption = 'Label2'
    end
    object ProgressBar1: TProgressBar
      Left = 127
      Top = 16
      Width = 345
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Position = 45
      TabOrder = 0
      ExplicitWidth = 339
    end
    object TrackBar1: TTrackBar
      Left = 127
      Top = 43
      Width = 345
      Height = 30
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnChange = TrackBar1Change
      ExplicitWidth = 339
    end
    object Edit3: TEdit
      Left = 3
      Top = 37
      Width = 118
      Height = 23
      TabOrder = 2
      Text = 'Edit3'
    end
  end
  object Button1: TButton
    Left = 246
    Top = 289
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Button1'
    TabOrder = 7
    ExplicitLeft = 240
    ExplicitTop = 280
  end
  object Button2: TButton
    Left = 327
    Top = 289
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Button2'
    TabOrder = 8
    ExplicitLeft = 321
    ExplicitTop = 280
  end
  object Button3: TButton
    Left = 408
    Top = 289
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Button3'
    TabOrder = 9
    ExplicitLeft = 402
    ExplicitTop = 280
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
