object MenuForm: TMenuForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
  ClientHeight = 156
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 8
    Top = 5
    Width = 272
    Height = 44
    Caption = #1059#1088#1086#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -23
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    Font.Quality = fqDraft
    ParentFont = False
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 55
    Width = 272
    Height = 44
    Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button1: TButton
    Left = 8
    Top = 105
    Width = 272
    Height = 44
    Caption = #1058#1077#1089#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
