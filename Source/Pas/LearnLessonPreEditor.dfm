object LessonPreEditor: TLessonPreEditor
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1091#1088#1086#1082#1086#1074
  ClientHeight = 239
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 11
    Width = 54
    Height = 13
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
  end
  object ComboBox1: TComboBox
    Left = 67
    Top = 8
    Width = 182
    Height = 21
    TabOrder = 0
    TextHint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1102
    OnSelect = ComboBox1Select
  end
  object ListBox1: TListBox
    Left = 8
    Top = 35
    Width = 241
    Height = 163
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 204
    Width = 241
    Height = 25
    Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1102
    TabOrder = 2
    OnClick = Button1Click
  end
end
