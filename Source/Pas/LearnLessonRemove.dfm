object LessonRemoveForm: TLessonRemoveForm
  Left = 0
  Top = 0
  Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '
  ClientHeight = 231
  ClientWidth = 240
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
    Left = 9
    Top = 10
    Width = 60
    Height = 16
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 75
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 0
    TextHint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1102
    OnSelect = ComboBox1Select
  end
  object ListBox1: TListBox
    Left = 8
    Top = 35
    Width = 217
    Height = 154
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 195
    Width = 217
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1088#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
