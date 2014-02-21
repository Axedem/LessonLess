object NewLesson: TNewLesson
  Left = 660
  Top = 498
  BorderStyle = bsSingle
  Caption = 'NewLesson'
  ClientHeight = 108
  ClientWidth = 269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 11
    Width = 54
    Height = 13
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
  end
  object Label2: TLabel
    Left = 18
    Top = 38
    Width = 48
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object ComboBox1: TComboBox
    Left = 79
    Top = 8
    Width = 172
    Height = 21
    TabOrder = 0
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1102
  end
  object Edit1: TEdit
    Left = 79
    Top = 35
    Width = 172
    Height = 21
    TabOrder = 1
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
  end
  object Button1: TButton
    Left = 79
    Top = 62
    Width = 172
    Height = 28
    Caption = #1053#1072#1095#1072#1090#1100' '#1089#1086#1079#1076#1072#1085#1080#1077' '#1091#1088#1086#1082#1072
    TabOrder = 2
    OnClick = Button1Click
  end
end
