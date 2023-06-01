object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 343
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 67
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object cbbThemesList: TComboBox
    Left = 8
    Top = 16
    Width = 431
    Height = 21
    Style = csDropDownList
    DropDownCount = 20
    Sorted = True
    TabOrder = 0
    OnChange = cbbThemesListChange
  end
  object Button1: TButton
    Left = 364
    Top = 310
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 102
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 2
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 133
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 176
    Top = 43
    Width = 263
    Height = 261
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
end
