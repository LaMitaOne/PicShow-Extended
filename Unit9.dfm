object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PicShow1: TPicShow
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    ExactTiming = True
    Proportional = True
    Stretch = True
    Style = 1
    TabOrder = 0
    ExplicitLeft = 168
    ExplicitTop = 56
    ExplicitWidth = 441
    ExplicitHeight = 329
  end
  object Button1: TButton
    Left = 8
    Top = 37
    Width = 75
    Height = 25
    Caption = 'Show effect'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 8
    Width = 161
    Height = 23
    TabOrder = 2
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
  end
end
