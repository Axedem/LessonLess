object LessonEditor: TLessonEditor
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'LessonEditor'
  ClientHeight = 646
  ClientWidth = 803
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
  object Image1: TImage
    Left = 0
    Top = 35
    Width = 803
    Height = 526
    Align = alClient
    Center = True
    Proportional = True
    ExplicitWidth = 801
    ExplicitHeight = 555
  end
  object Panel1: TPanel
    Left = 0
    Top = 561
    Width = 803
    Height = 85
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    object Memo1: TMemo
      Left = 163
      Top = 6
      Width = 481
      Height = 73
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 650
      Top = 6
      Width = 142
      Height = 73
      Caption = #1042#1087#1077#1088#1077#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 6
      Top = 6
      Width = 153
      Height = 73
      Caption = #1053#1072#1079#1072#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 35
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 220
      Top = 0
      Width = 80
      Height = 29
      Caption = #1064#1072#1075' '#8470'1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Calibri Light'
      Font.Style = []
      ParentFont = False
    end
    object Button3: TButton
      Left = 6
      Top = 4
      Width = 153
      Height = 25
      Caption = #1057#1084#1077#1085#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 631
      Top = 4
      Width = 161
      Height = 25
      Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 390
      Top = 4
      Width = 235
      Height = 25
      Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1077' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      TabOrder = 2
      Visible = False
      OnClick = Button5Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 180
    Top = 2
  end
end
