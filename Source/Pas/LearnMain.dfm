object LearnMainForm: TLearnMainForm
  Left = 220
  Top = 353
  VertScrollBar.Color = clCream
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  BorderWidth = 3
  Caption = #1059#1088#1086#1082#1080
  ClientHeight = 282
  ClientWidth = 312
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 8
    Top = 35
    Width = 297
    Height = 188
    ExtendedSelect = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeMode = imAlpha
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 73
    Top = 229
    Width = 159
    Height = 44
    Caption = #1053#1072#1095#1072#1090#1100' '#1091#1088#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 8
    Width = 297
    Height = 21
    TabOrder = 2
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1088#1072#1079#1076#1077#1083
    OnSelect = ComboBox1Select
  end
  object Button2: TButton
    Left = 8
    Top = 229
    Width = 59
    Height = 44
    Caption = #1053#1072#1079#1072#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Left = 243
    Top = 228
    object N1: TMenuItem
      Caption = #1055#1072#1085#1077#1083#1100' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
      OnClick = N1Click
    end
  end
end
