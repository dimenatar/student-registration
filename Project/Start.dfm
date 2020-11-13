object StartForm: TStartForm
  Left = 0
  Top = 0
  Anchors = [akRight, akBottom]
  Caption = 'StartForm'
  ClientHeight = 448
  ClientWidth = 844
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
    844
    448)
  PixelsPerInch = 96
  TextHeight = 13
  object LabelAuth: TLabel
    Left = 508
    Top = 416
    Width = 328
    Height = 19
    Cursor = crHandPoint
    Anchors = [akTop, akRight, akBottom]
    Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1086#1074#1072#1090#1100#1089#1103' '#1076#1083#1103' '#1076#1072#1083#1100#1085#1077#1081#1096#1077#1081' '#1088#1072#1073#1086#1090#1099' '
    Color = clRed
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clSilver
    Font.Height = -16
    Font.Name = 'Bahnschrift'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
    Layout = tlBottom
    OnClick = LabelAuthClick
    ExplicitLeft = 488
  end
  object Label1: TLabel
    Left = 56
    Top = -24
    Width = 104
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
  end
  object PageControlApplicants: TPageControl
    Left = 0
    Top = 0
    Width = 849
    Height = 331
    Cursor = crHandPoint
    ActivePage = POITTabShit
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object POITTabShit: TTabSheet
      Caption = #1055#1054#1048#1058
      DesignSize = (
        841
        303)
      object LabelPoit: TLabel
        Left = 734
        Top = 2
        Width = 5
        Height = 19
        Caption = '1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 441
        Top = 3
        Width = 287
        Height = 19
        Caption = #1055#1088#1086#1093#1086#1076#1085#1086#1081' '#1073#1072#1083#1083' '#1076#1083#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080': >'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGridPoit: TDBGrid
        Left = 0
        Top = 33
        Width = 842
        Height = 275
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clSilver
        DataSource = DataSourceApplicants
        FixedColor = clCream
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Bahnschrift SemiCondensed'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Bahnschrift SemiCondensed'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Average mark'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Application date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Speciality'
            Visible = False
          end>
      end
      object EditPoisk: TEdit
        Left = 0
        Top = 3
        Width = 334
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
        OnExit = EditPoiskExit
        OnMouseDown = EditPoiskMouseDown
      end
      object ButtonPoisk: TButton
        Left = 343
        Top = 3
        Width = 82
        Height = 24
        Cursor = crHandPoint
        Caption = #1055#1086#1080#1089#1082
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = ButtonPoiskClick
      end
      object ButtonSbros: TButton
        Left = 769
        Top = 3
        Width = 76
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1057#1073#1088#1086#1089
        TabOrder = 3
        OnClick = ButtonSbrosClick
      end
    end
    object KDSheet: TTabSheet
      Caption = #1050#1044
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        841
        303)
      object LabelKd: TLabel
        Left = 734
        Top = 2
        Width = 5
        Height = 19
        Caption = '1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 441
        Top = 2
        Width = 287
        Height = 19
        Caption = #1055#1088#1086#1093#1086#1076#1085#1086#1081' '#1073#1072#1083#1083' '#1076#1083#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080': >'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGridKD: TDBGrid
        Left = 0
        Top = 33
        Width = 842
        Height = 275
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clSilver
        DataSource = DataSourceKD
        FixedColor = clCream
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Bahnschrift SemiCondensed'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Bahnschrift SemiCondensed'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Average mark'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Application date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Speciality'
            Visible = False
          end>
      end
      object EditPoiskKD: TEdit
        Left = 0
        Top = 3
        Width = 334
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
        OnExit = EditPoiskKDExit
        OnMouseDown = EditPoiskKDMouseDown
      end
      object ButtonPoiskKD: TButton
        Left = 343
        Top = 3
        Width = 82
        Height = 24
        Cursor = crHandPoint
        Caption = #1055#1086#1080#1089#1082
        Enabled = False
        TabOrder = 2
        OnClick = ButtonPoiskKDClick
      end
      object ButtonSbrosKD: TButton
        Left = 769
        Top = 3
        Width = 76
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1057#1073#1088#1086#1089
        TabOrder = 3
        OnClick = ButtonSbrosKDClick
      end
    end
    object TabSheetPed: TTabSheet
      Caption = #1055#1077#1076#1072#1075#1086#1075#1080#1082#1072
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        841
        303)
      object LabelPed: TLabel
        Left = 734
        Top = 2
        Width = 5
        Height = 19
        Caption = '1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 441
        Top = 2
        Width = 287
        Height = 19
        Caption = #1055#1088#1086#1093#1086#1076#1085#1086#1081' '#1073#1072#1083#1083' '#1076#1083#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080': >'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ButtonSbrosPed: TButton
        Left = 769
        Top = 3
        Width = 76
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight, akBottom]
        Caption = #1057#1073#1088#1086#1089
        TabOrder = 0
        OnClick = ButtonSbrosPedClick
      end
      object DBGridPed: TDBGrid
        Left = 0
        Top = 33
        Width = 842
        Height = 275
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clSilver
        DataSource = DataSourcePed
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
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Average mark'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Application date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Speciality'
            Visible = False
          end>
      end
      object ButtonPoiskPed: TButton
        Left = 343
        Top = 3
        Width = 82
        Height = 24
        Cursor = crHandPoint
        Caption = #1055#1086#1080#1089#1082
        Enabled = False
        TabOrder = 2
        OnClick = ButtonPoiskPedClick
      end
      object EditPoiskPed: TEdit
        Left = 0
        Top = 3
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
        OnExit = EditPoiskPedExit
        OnMouseDown = EditPoiskPedMouseDown
      end
    end
    object TabSheetEl: TTabSheet
      Caption = #1069#1083#1077#1082#1090#1088#1086#1089#1085#1072#1073#1078#1077#1085#1080#1077
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        841
        303)
      object LabelEl: TLabel
        Left = 734
        Top = 2
        Width = 5
        Height = 19
        Caption = '1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 441
        Top = 2
        Width = 287
        Height = 19
        Caption = #1055#1088#1086#1093#1086#1076#1085#1086#1081' '#1073#1072#1083#1083' '#1076#1083#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080': >'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGridEl: TDBGrid
        Left = 0
        Top = 33
        Width = 842
        Height = 275
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clSilver
        DataSource = DataSourceEl
        FixedColor = clCream
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Bahnschrift SemiCondensed'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Bahnschrift SemiCondensed'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Average mark'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Application date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Speciality'
            Visible = False
          end>
      end
      object EditPoiskEl: TEdit
        Left = 0
        Top = 3
        Width = 334
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
        OnExit = EditPoiskElExit
        OnMouseDown = EditPoiskElMouseDown
      end
      object ButtonPoiskEl: TButton
        Left = 343
        Top = 3
        Width = 82
        Height = 24
        Cursor = crHandPoint
        Caption = #1055#1086#1080#1089#1082
        Enabled = False
        TabOrder = 2
        OnClick = ButtonPoiskElClick
      end
      object ButtonSbrosEl: TButton
        Left = 769
        Top = 3
        Width = 76
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1057#1073#1088#1086#1089
        TabOrder = 3
        OnClick = ButtonSbrosElClick
      end
    end
  end
  object ADOConnectionApplicants: TADOConnection
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
    Left = 80
    Top = 353
  end
  object ADOQueryApplicants: TADOQuery
    Connection = ADOConnectionApplicants
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ApplicantsPoit')
    Left = 24
    Top = 407
    object ADOQueryApplicantsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQueryApplicantsSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'Surname'
      Size = 35
    end
    object ADOQueryApplicantsName: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'Name'
      Size = 35
    end
    object ADOQueryApplicantsAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOQueryApplicantsApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1084
      FieldName = 'Application date'
    end
    object ADOQueryApplicantsSpeciality: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      FieldName = 'Speciality'
      Visible = False
      Size = 35
    end
  end
  object DataSourceApplicants: TDataSource
    DataSet = ADOTableApplicants
    Left = 24
    Top = 353
  end
  object ADOTableApplicants: TADOTable
    Connection = ADOConnectionApplicants
    CursorType = ctStatic
    TableName = 'ApplicantsPoit'
    Left = 80
    Top = 401
    object ADOTableApplicantsid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTableApplicantsSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 35
      FieldName = 'Surname'
      Size = 35
    end
    object ADOTableApplicantsName: TWideStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 35
      FieldName = 'Name'
      Size = 35
    end
    object ADOTableApplicantsAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      DisplayWidth = 12
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOTableApplicantsApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      DisplayWidth = 18
      FieldName = 'Application date'
    end
    object ADOTableApplicantsSpeciality: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      DisplayWidth = 35
      FieldName = 'Speciality'
      Visible = False
      Size = 35
    end
  end
  object ADOConnectionKD: TADOConnection
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
    Left = 224
    Top = 353
  end
  object ADOQueryKD: TADOQuery
    Connection = ADOConnectionKD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ApplicantsKd')
    Left = 160
    Top = 399
    object ADOQueryKDid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQueryKDSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'Surname'
      Visible = False
      Size = 35
    end
    object ADOQueryKDName: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'Name'
      Size = 35
    end
    object ADOQueryKDAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOQueryKDApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      FieldName = 'Application date'
    end
    object ADOQueryKDSpeciality: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      FieldName = 'Speciality'
      Size = 35
    end
  end
  object DataSourceKD: TDataSource
    DataSet = ADOTableKD
    Left = 160
    Top = 361
  end
  object ADOTableKD: TADOTable
    Connection = ADOConnectionKD
    CursorType = ctStatic
    TableName = 'ApplicantsKd'
    Left = 224
    Top = 400
    object ADOTableKDid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTableKDSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'Surname'
      Size = 35
    end
    object ADOTableKDName: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'Name'
      Size = 35
    end
    object ADOTableKDAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOTableKDApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      FieldName = 'Application date'
    end
    object ADOTableKDSpeciality: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      FieldName = 'Speciality'
      Visible = False
      Size = 35
    end
  end
  object ADOConnectionPed: TADOConnection
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
    Left = 368
    Top = 361
  end
  object ADOQueryPed: TADOQuery
    Connection = ADOConnectionPed
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ApplicantsPed')
    Left = 312
    Top = 407
    object ADOQueryPedid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQueryPedSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'Surname'
      Size = 35
    end
    object ADOQueryPedName: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'Name'
      Size = 35
    end
    object ADOQueryPedAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOQueryPedApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      FieldName = 'Application date'
    end
    object ADOQueryPedSpeciality: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      FieldName = 'Speciality'
      Visible = False
      Size = 35
    end
  end
  object DataSourcePed: TDataSource
    DataSet = ADOTablePed
    Left = 320
    Top = 353
  end
  object ADOTablePed: TADOTable
    Connection = ADOConnectionPed
    CursorType = ctStatic
    TableName = 'ApplicantsPed'
    Left = 360
    Top = 401
    object ADOTablePedid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTablePedSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'Surname'
      Size = 35
    end
    object ADOTablePedName: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'Name'
      Size = 35
    end
    object ADOTablePedAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOTablePedApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      FieldName = 'Application date'
    end
    object ADOTablePedSpeciality: TWideStringField
      FieldName = 'Speciality'
      Visible = False
      Size = 35
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Den\Desktop\'#1055#1088#1086#1077#1082#1090' '#1058#1056#1055#1054'\Win32\Debug\'#1058#1056#1055#1054'_'#1041#1044'.mdb;Mode=Share D' +
      'eny None;Persist Security Info=False;Jet OLEDB:System database="' +
      '";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet ' +
      'OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:' +
      'Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;J' +
      'et OLEDB:New Database Password="";Jet OLEDB:Create System Databa' +
      'se=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy L' +
      'ocale on Compact=False;Jet OLEDB:Compact Without Replica Repair=' +
      'False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 584
    Top = 665
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Books')
    Left = 512
    Top = 711
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 512
    Top = 657
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ApplicantsPed'
    Left = 592
    Top = 713
  end
  object ADOConnectionEl: TADOConnection
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
    Left = 512
    Top = 361
  end
  object ADOQueryEl: TADOQuery
    Connection = ADOConnectionEl
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ApplicantsEl')
    Left = 472
    Top = 399
    object ADOQueryElid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQueryElSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'Surname'
      Size = 35
    end
    object ADOQueryElName: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'Name'
      Size = 35
    end
    object ADOQueryElAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOQueryElApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      FieldName = 'Application date'
    end
    object ADOQueryElSpeciality: TWideStringField
      FieldName = 'Speciality'
      Visible = False
      Size = 35
    end
  end
  object DataSourceEl: TDataSource
    DataSet = ADOTableEl
    Left = 472
    Top = 361
  end
  object ADOTableEl: TADOTable
    Connection = ADOConnectionEl
    CursorType = ctStatic
    TableName = 'ApplicantsEl'
    Left = 520
    Top = 401
    object ADOTableElid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTableElSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'Surname'
      Size = 35
    end
    object ADOTableElName: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'Name'
      Size = 35
    end
    object ADOTableElAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOTableElApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      FieldName = 'Application date'
    end
    object ADOTableElSpeciality: TWideStringField
      FieldName = 'Speciality'
      Visible = False
      Size = 35
    end
  end
end
