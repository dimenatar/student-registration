object FullForm: TFullForm
  Left = 0
  Top = 0
  Caption = 'FullForm'
  ClientHeight = 530
  ClientWidth = 960
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
  DesignSize = (
    960
    530)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 595
    Top = 0
    Width = 157
    Height = 18
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1080#1072#1087#1072#1079#1086#1085' '#1076#1072#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Bahnschrift'
    Font.Style = []
    ParentFont = False
  end
  object ButtonSbrosFull: TButton
    Left = 883
    Top = 24
    Width = 76
    Height = 24
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Caption = #1057#1073#1088#1086#1089
    TabOrder = 0
    OnClick = ButtonSbrosFullClick
    ExplicitLeft = 893
  end
  object DBGridFull: TDBGrid
    Left = 0
    Top = 84
    Width = 959
    Height = 382
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clSilver
    DataSource = DataSourceFull
    FixedColor = clCream
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Bahnschrift SemiCondensed'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Bahnschrift SemiCondensed'
    TitleFont.Style = []
  end
  object ButtonPoiskFull: TButton
    Left = 340
    Top = 24
    Width = 82
    Height = 24
    Cursor = crHandPoint
    Caption = #1055#1086#1080#1089#1082
    Enabled = False
    TabOrder = 2
    OnClick = ButtonPoiskFullClick
  end
  object EditPoiskFull: TEdit
    Left = 0
    Top = 23
    Width = 334
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
    OnExit = EditPoiskFullExit
    OnMouseDown = EditPoiskFullMouseDown
  end
  object ButtonBack: TButton
    Left = 0
    Top = 472
    Width = 105
    Height = 34
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 4
    OnClick = ButtonBackClick
    ExplicitTop = 482
  end
  object ButtonDelete: TButton
    Left = 750
    Top = 472
    Width = 209
    Height = 34
    Cursor = crHandPoint
    Anchors = [akRight, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
    TabOrder = 5
    OnClick = ButtonDeleteClick
    ExplicitLeft = 760
    ExplicitTop = 482
  end
  object DateTimePicker: TDateTimePicker
    Left = 484
    Top = 24
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
    MaxDate = 43989.999988425930000000
    MinDate = 43831.000000000000000000
    ParentFont = False
    TabOrder = 6
  end
  object DateTimePicker1: TDateTimePicker
    Left = 691
    Top = 24
    Width = 169
    Height = 24
    Date = 43832.000000000000000000
    Time = 43832.000000000000000000
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clSilver
    Font.Height = -13
    Font.Name = 'Bahnschrift'
    Font.Style = []
    MaxDate = 43989.999988425930000000
    MinDate = 43831.000000000000000000
    ParentFont = False
    TabOrder = 7
  end
  object ButtonDate: TButton
    Left = 635
    Top = 54
    Width = 82
    Height = 24
    Cursor = crHandPoint
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
    TabOrder = 8
    OnClick = ButtonDateClick
  end
  object ADOConnectionFull: TADOConnection
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
    Left = 528
    Top = 484
  end
  object ADOQueryFull: TADOQuery
    Connection = ADOConnectionFull
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Applicants')
    Left = 328
    Top = 484
    object ADOQueryFullid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQueryFullSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'Surname'
      Size = 35
    end
    object ADOQueryFullName: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'Name'
      Size = 35
    end
    object ADOQueryFullAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOQueryFullApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      FieldName = 'Application date'
    end
    object ADOQueryFullSpeciality: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      FieldName = 'Speciality'
      Size = 35
    end
  end
  object DataSourceFull: TDataSource
    DataSet = ADOTableFull
    Left = 384
    Top = 484
  end
  object ADOTableFull: TADOTable
    Active = True
    Connection = ADOConnectionFull
    CursorType = ctStatic
    TableName = 'Applicants'
    Left = 448
    Top = 476
    object ADOTableFullid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTableFullSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 35
      FieldName = 'Surname'
      Size = 35
    end
    object ADOTableFullName: TWideStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 35
      FieldName = 'Name'
      Size = 35
    end
    object ADOTableFullAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      DisplayWidth = 12
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOTableFullApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      DisplayWidth = 18
      FieldName = 'Application date'
    end
    object ADOTableFullSpeciality: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      DisplayWidth = 20
      FieldName = 'Speciality'
      Size = 35
    end
  end
end
