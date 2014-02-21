object Helper: THelper
  Left = 0
  Top = 0
  Caption = 'Helper'
  ClientHeight = 812
  ClientWidth = 933
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 247
    Height = 812
    Align = alLeft
    Caption = 'Panel1'
    Color = cl3DDkShadow
    ParentBackground = False
    TabOrder = 0
    object ListBox1: TListBox
      Left = 10
      Top = 10
      Width = 230
      Height = 789
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clInactiveBorder
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      Sorted = True
      TabOrder = 0
      OnDblClick = ListBox1DblClick
    end
  end
  object Panel2: TPanel
    Left = 247
    Top = 0
    Width = 686
    Height = 812
    Align = alClient
    Caption = 'Panel2'
    Color = clActiveBorder
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 253
    DesignSize = (
      686
      812)
    object Splitter1: TSplitter
      Left = 1
      Top = 1
      Width = 1
      Height = 810
      ExplicitLeft = 0
    end
    object Memo1: TMemo
      Left = 6
      Top = 10
      Width = 675
      Height = 791
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
