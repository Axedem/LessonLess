object LearnForm: TLearnForm
  Left = 0
  Top = 0
  Caption = 'Learning'
  ClientHeight = 659
  ClientWidth = 803
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 803
    Height = 583
    Align = alClient
    Center = True
    Constraints.MaxHeight = 590
    Constraints.MaxWidth = 803
    Proportional = True
    Transparent = True
    ExplicitLeft = -2
    ExplicitTop = -3
    ExplicitHeight = 586
  end
  object Panel1: TPanel
    Left = 0
    Top = 583
    Width = 803
    Height = 76
    Align = alBottom
    Caption = 'Panel1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      803
      76)
    object Button1: TButton
      Left = 2
      Top = 2
      Width = 150
      Height = 69
      Anchors = [akLeft, akBottom]
      Caption = #1053#1072#1079#1072#1076
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -29
      Font.Name = 'Calibri Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 649
      Top = 2
      Width = 150
      Height = 69
      Anchors = [akLeft, akBottom]
      Caption = #1044#1072#1083#1077#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -29
      Font.Name = 'Calibri Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Memo1: TMemo
      Left = 153
      Top = 3
      Width = 497
      Height = 68
      Anchors = [akLeft, akRight, akBottom]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
end
