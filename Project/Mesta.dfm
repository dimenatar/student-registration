object MestaForm: TMestaForm
  Left = 0
  Top = 0
  Caption = 'MestaForm'
  ClientHeight = 231
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object KolMestEdit: TEdit
    Left = 3
    Top = 24
    Width = 169
    Height = 24
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clSilver
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 0
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1074#1086' '#1084#1077#1089#1090
  end
  object Button1: TButton
    Left = 3
    Top = 124
    Width = 172
    Height = 33
    Cursor = crHandPoint
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object ComboBoxSpecialityKolMest: TComboBox
    Left = 3
    Top = 64
    Width = 169
    Height = 24
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = #1044#1083#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
    Items.Strings = (
      #1055#1054#1048#1058
      #1050#1044
      #1055#1077#1076#1072#1075#1086#1075#1080#1082#1072
      #1069#1083#1077#1082#1090#1088#1086#1089#1085#1072#1073#1078#1077#1085#1080#1077)
  end
  object ADOConnectionKolMest: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='#1058#1056#1055#1054'_'#1041#1044'.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 288
    Top = 48
  end
  object ADOTableKolMest: TADOTable
    Active = True
    Connection = ADOConnectionKolMest
    CursorType = ctStatic
    TableName = 'Specialities'
    Left = 288
    Top = 120
  end
  object DataSourceKolMest: TDataSource
    DataSet = ADOTableKolMest
    Left = 208
    Top = 104
  end
end