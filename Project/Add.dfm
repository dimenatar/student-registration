object AddToForm: TAddToForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'AddToForm'
  ClientHeight = 310
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LabelDateChoose: TLabel
    Left = 26
    Top = 130
    Width = 83
    Height = 16
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1090#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 26
    Top = 99
    Width = 229
    Height = 13
    Caption = '*'#1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1089' '#1090#1086#1095#1085#1086#1089#1090#1100#1102' '#1076#1086' '#1076#1077#1089#1103#1090#1099#1093
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Bahnschrift SemiLight'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object AverageMarkEdit: TEdit
    Left = 26
    Top = 77
    Width = 95
    Height = 24
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clSilver
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 0
    Text = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083'*'
    OnExit = AverageMarkEditExit
    OnKeyPress = AverageMarkEditKeyPress
    OnMouseDown = AverageMarkEditMouseDown
  end
  object SurnameEdit: TEdit
    Left = 26
    Top = 32
    Width = 169
    Height = 24
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clSilver
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = #1060#1072#1084#1080#1083#1080#1103
    OnExit = SurnameEditExit
    OnMouseDown = SurnameEditMouseDown
  end
  object NameEdit: TEdit
    Left = 201
    Top = 32
    Width = 169
    Height = 24
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clSilver
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = #1048#1084#1103
    OnExit = NameEditExit
    OnMouseDown = NameEditMouseDown
  end
  object DateTimePicker: TDateTimePicker
    Left = 26
    Top = 144
    Width = 169
    Height = 24
    Date = 43831.000000000000000000
    Time = 43831.000000000000000000
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clSilver
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    MaxDate = 43989.999988425920000000
    ParentFont = False
    TabOrder = 3
  end
  object ComboBoxSpeciality: TComboBox
    Left = 201
    Top = 144
    Width = 169
    Height = 24
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = #1042#1099#1073#1088#1072#1090#1100' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
    Items.Strings = (
      #1055#1054#1048#1058
      #1050#1044
      #1055#1077#1076#1072#1075#1086#1075#1080#1082#1072
      #1069#1083#1077#1082#1090#1088#1086#1089#1085#1072#1073#1078#1077#1085#1080#1077)
  end
  object ButtonAdd: TButton
    Left = 26
    Top = 235
    Width = 344
    Height = 33
    Cursor = crHandPoint
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = ButtonAddClick
  end
  object ADOConnectionAddTo: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Den\Desktop\'#1055#1088#1086#1077#1082#1090' '#1058#1056#1055#1054' '#8212' '#1055#1054#1050#1040' '#1057#1040#1052#1067#1049' '#1056#1040#1041#1054#1063#1048#1049'\Win32\Debug\'#1058#1056#1055 +
      #1054'_'#1041#1044'.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OL' +
      'EDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Data' +
      'base Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lock' +
      'ing Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global ' +
      'Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB' +
      ':Create System Database=False;Jet OLEDB:Encrypt Database=False;J' +
      'et OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wi' +
      'thout Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 216
    Top = 192
  end
  object ADOQueryAddTo: TADOQuery
    Connection = ADOConnectionAddTo
    CursorType = ctStatic
    Parameters = <>
    Left = 136
    Top = 176
  end
  object DataSourceAddTo: TDataSource
    DataSet = ADOTableAddTo
    Left = 48
    Top = 192
  end
  object ADOTableAddTo: TADOTable
    Connection = ADOConnectionAddTo
    CursorType = ctStatic
    TableName = 'Applicants'
    Left = 312
    Top = 176
  end
  object ADOConnectionKolMest: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Den\Desktop\'#1055#1088#1086#1077#1082#1090' '#1058#1056#1055#1054' '#8212' '#1055#1054#1050#1040' '#1057#1040#1052#1067#1049' '#1056#1040#1041#1054#1063#1048#1049'\Win32\Debug\'#1058#1056#1055 +
      #1054'_'#1041#1044'.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OL' +
      'EDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Data' +
      'base Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lock' +
      'ing Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global ' +
      'Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB' +
      ':Create System Database=False;Jet OLEDB:Encrypt Database=False;J' +
      'et OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wi' +
      'thout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 336
    Top = 56
  end
  object ADOTableKolMest: TADOTable
    Connection = ADOConnectionAddTo
    CursorType = ctStatic
    TableName = 'Specialities'
    Left = 296
    Top = 96
  end
  object ADOQueryKolMest: TADOQuery
    Connection = ADOConnectionKolMest
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Specialities ')
    Left = 248
    Top = 56
  end
end
