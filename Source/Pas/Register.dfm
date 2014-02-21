object RegisterForm: TRegisterForm
  Left = 0
  Top = 0
  Caption = 'RegisterForm'
  ClientHeight = 151
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EditLogin: TDBEdit
    Left = 111
    Top = 8
    Width = 164
    Height = 21
    DataField = 'PersonName'
    DataSource = DBSource
    TabOrder = 0
  end
  object EditPass: TDBEdit
    Left = 111
    Top = 62
    Width = 165
    Height = 21
    DataField = 'Password'
    DataSource = DBSource
    TabOrder = 1
  end
  object ButtonEnter: TButton
    Left = 201
    Top = 116
    Width = 75
    Height = 25
    Caption = 'ButtonEnter'
    TabOrder = 2
    OnClick = ButtonEnterClick
  end
  object EditSur: TDBEdit
    Left = 111
    Top = 35
    Width = 165
    Height = 21
    DataField = 'PersonSName'
    DataSource = DBSource
    TabOrder = 3
  end
  object ComboGroup: TDBComboBox
    Left = 111
    Top = 89
    Width = 165
    Height = 21
    DataField = 'Group'
    DataSource = DBSource
    TabOrder = 4
  end
  object DBSource: TDataSource
    DataSet = DBM.StudentsTable
    Left = 9
    Top = 10
  end
end
