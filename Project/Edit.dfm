object EditForm: TEditForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'EditForm'
  ClientHeight = 229
  ClientWidth = 314
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
  object PageControlEdit: TPageControl
    Left = 0
    Top = -4
    Width = 313
    Height = 233
    Cursor = crHandPoint
    ActivePage = TabSheetKolMest
    TabOrder = 0
    object TabSheetAverageMark: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1088#1077#1076#1085#1077#1075#1086' '#1073#1072#1083#1083#1072
      object Label1: TLabel
        Left = 3
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
        Left = 3
        Top = 124
        Width = 172
        Height = 33
        Cursor = crHandPoint
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = ButtonAddMarkClick
      end
      object ComboBoxSpecialityMark: TComboBox
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
        TabOrder = 1
        Text = #1044#1083#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Items.Strings = (
          #1055#1054#1048#1058
          #1050#1044
          #1055#1077#1076#1072#1075#1086#1075#1080#1082#1072
          #1069#1083#1077#1082#1090#1088#1086#1089#1085#1072#1073#1078#1077#1085#1080#1077)
      end
      object MarkEdit: TEdit
        Left = 3
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
    end
    object TabSheetKolMest: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1084#1077#1089#1090
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 28
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
        Text = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1077#1089#1090
        OnExit = KolMestEditExit
        OnMouseDown = KolMestEditMouseDown
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
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 311
    Width = 394
    Height = 120
    DataSource = DataSourceKolMest
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ButtonBack: TButton
    Left = 0
    Top = 227
    Width = 172
    Height = 33
    Cursor = crHandPoint
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 2
    OnClick = ButtonBackClick
  end
  object ADOConnectionKolMest: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='#1058#1056#1055#1054'_' +
      #1041#1044'.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLED' +
      'B:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databa' +
      'se Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lockin' +
      'g Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bu' +
      'lk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:C' +
      'reate System Database=False;Jet OLEDB:Encrypt Database=False;Jet' +
      ' OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact With' +
      'out Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 267
    Top = 48
  end
  object ADOQueryKolMest: TADOQuery
    Connection = ADOConnectionKolMest
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Specialities ')
    Left = 224
    Top = 48
  end
  object DataSourceKolMest: TDataSource
    Left = 212
    Top = 104
  end
  object ADOTableKolMest: TADOTable
    Active = True
    Connection = ADOConnectionKolMest
    CursorType = ctStatic
    TableName = 'Specialities'
    Left = 259
    Top = 88
    object ADOTableKolMestSpeciality: TWideStringField
      FieldName = 'Speciality'
      Size = 35
    end
    object ADOTableKolMestPlaces: TIntegerField
      FieldName = 'Places'
    end
    object ADOTableKolMestPassingscore: TFloatField
      FieldName = 'Passing score'
      DisplayFormat = '######0.0'
    end
  end
end
