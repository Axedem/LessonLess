object LessonCreater: TLessonCreater
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1091#1088#1086#1082#1072
  ClientHeight = 663
  ClientWidth = 820
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
  object Image1: TImage
    Left = 0
    Top = 41
    Width = 820
    Height = 543
    Align = alClient
    Center = True
    Proportional = True
    ExplicitLeft = 8
    ExplicitTop = 35
    ExplicitWidth = 794
    ExplicitHeight = 533
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 820
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 333
      Top = 6
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
    object Button1: TButton
      Left = 9
      Top = 6
      Width = 129
      Height = 29
      Caption = #1042#1099#1073#1086#1088' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 557
      Top = 6
      Width = 248
      Height = 29
      Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1077' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      TabOrder = 1
      Visible = False
      OnClick = Button4Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 584
    Width = 820
    Height = 79
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object Button2: TButton
      Left = 647
      Top = 10
      Width = 158
      Height = 64
      Caption = #1044#1072#1083#1077#1077
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 4
      Top = 9
      Width = 134
      Height = 64
      Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100
      TabOrder = 1
      OnClick = Button3Click
    end
    object Memo1: TMemo
      Left = 145
      Top = 10
      Width = 496
      Height = 64
      TabOrder = 2
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|PN' +
      'G Image File|*.png|GIF Image File|*.gif|BMP Image File|*.bmp'
    Left = 446
    Top = 6
  end
end
