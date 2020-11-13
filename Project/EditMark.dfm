object MarkForm: TMarkForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'MarkForm'
  ClientHeight = 204
  ClientWidth = 250
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
  object Label1: TLabel
    Left = 24
    Top = 45
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
  object ButtonAddMark: TButton
    Left = 24
    Top = 153
    Width = 169
    Height = 33
    Cursor = crHandPoint
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 0
    OnClick = ButtonAddMarkClick
  end
  object ComboBoxSpecialityMark: TComboBox
    Left = 24
    Top = 80
    Width = 169
    Height = 24
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = #1044#1083#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
    Items.Strings = (
      #1055#1054#1048#1058
      #1050#1044
      #1055#1077#1076#1072#1075#1086#1075#1080#1082#1072
      #1069#1083#1077#1082#1090#1088#1086#1089#1085#1072#1073#1078#1077#1085#1080#1077)
  end
  object MarkEdit: TEdit
    Left = 24
    Top = 23
    Width = 169
    Height = 24
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clSilver
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 2
    Text = #1042#1074#1077#1076#1080#1090#1077' '#1089#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083'*'
    OnExit = MarkEditExit
    OnKeyPress = MarkEditKeyPress
    OnMouseDown = MarkEditMouseDown
  end
  object ADOQueryMark: TADOQuery
    Connection = ADOConnectionMark
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Specialities ')
    Left = 216
    Top = 64
    object ADOQueryMarkSpeciality: TWideStringField
      FieldName = 'Speciality'
      Size = 35
    end
    object ADOQueryMarkPlaces: TIntegerField
      FieldName = 'Places'
    end
    object ADOQueryMarkPassingscore: TFloatField
      FieldName = 'Passing score'
      DisplayFormat = '######0.0'
    end
  end
  object DataSourceMark: TDataSource
    DataSet = ADOTableMark
    Left = 212
    Top = 104
  end
  object ADOConnectionMark: TADOConnection
    Connected = True
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
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 243
  end
  object ADOTableMark: TADOTable
    Active = True
    Connection = ADOConnectionMark
    CursorType = ctStatic
    TableName = 'Specialities'
    Left = 267
    Top = 88
    object ADOTableMarkSpeciality: TWideStringField
      FieldName = 'Speciality'
      Size = 35
    end
    object ADOTableMarkPlaces: TIntegerField
      FieldName = 'Places'
    end
    object ADOTableMarkPassingscore: TFloatField
      DisplayWidth = 10
      FieldName = 'Passing score'
      DisplayFormat = '######0.0'
    end
  end
end
