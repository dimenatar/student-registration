object ApplicantsForm: TApplicantsForm
  Left = 0
  Top = 0
  Caption = 'ApplicantsForm'
  ClientHeight = 526
  ClientWidth = 845
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
    845
    526)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlApplicants: TPageControl
    Left = 0
    Top = 0
    Width = 847
    Height = 327
    Cursor = crHandPoint
    ActivePage = POITSheet
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object POITSheet: TTabSheet
      Caption = #1055#1054#1048#1058
      DesignSize = (
        839
        299)
      object LabelMarkPoit: TLabel
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
      object LabelPoit: TLabel
        Left = 734
        Top = 3
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
      object DBGridPoit: TDBGrid
        Left = 3
        Top = 33
        Width = 832
        Height = 265
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
        Left = 3
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
        TabOrder = 2
        OnClick = ButtonPoiskClick
      end
      object ButtonSbros: TButton
        Left = 759
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
      DesignSize = (
        839
        299)
      object Label3: TLabel
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
      object DBGridKD: TDBGrid
        Left = 3
        Top = 33
        Width = 832
        Height = 265
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
        Left = 3
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
        Left = 760
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
    object PedSheet: TTabSheet
      Caption = #1055#1077#1076#1072#1075#1086#1075#1080#1082#1072
      ImageIndex = 2
      DesignSize = (
        839
        299)
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
      object LabelPed: TLabel
        Left = 734
        Top = 3
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
      object ButtonSbrosPed: TButton
        Left = 760
        Top = 3
        Width = 76
        Height = 24
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1057#1073#1088#1086#1089
        TabOrder = 0
        OnClick = ButtonSbrosPedClick
      end
      object DBGridPed: TDBGrid
        Left = 4
        Top = 33
        Width = 832
        Height = 265
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
        Left = 3
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
      DesignSize = (
        839
        299)
      object Label5: TLabel
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
      object DBGridEl: TDBGrid
        Left = 3
        Top = 34
        Width = 832
        Height = 265
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
        Left = 3
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
        Left = 760
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
  object ButtonBack: TButton
    Left = 0
    Top = 496
    Width = 153
    Height = 30
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1082' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080#1103
    TabOrder = 1
    OnClick = ButtonBackClick
  end
  object ButtonAdd: TButton
    Left = 0
    Top = 329
    Width = 209
    Height = 34
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
    TabOrder = 2
    OnClick = ButtonAddClick
  end
  object Button1: TButton
    Left = 586
    Top = 329
    Width = 251
    Height = 34
    Cursor = crHandPoint
    Anchors = [akRight, akBottom]
    Caption = #1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1087#1086#1083#1085#1099#1081' '#1089#1087#1080#1089#1086#1082' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1086#1074
    TabOrder = 3
    OnClick = Button1Click
  end
  object ButtonDelete: TButton
    Left = 0
    Top = 369
    Width = 209
    Height = 34
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
    TabOrder = 4
    OnClick = ButtonDeleteClick
  end
  object MarkButton: TButton
    Left = 0
    Top = 409
    Width = 209
    Height = 34
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1093#1086#1076#1085#1086#1081' '#1073#1072#1083#1083
    TabOrder = 5
    OnClick = MarkButtonClick
  end
  object ADOConnection2: TADOConnection
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
    Top = 611
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Books')
    Left = 512
    Top = 611
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 520
    Top = 603
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'ApplicantsPed'
    Left = 592
    Top = 611
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
    Left = 320
    Top = 361
  end
  object ADOQueryApplicants: TADOQuery
    Connection = ADOConnectionApplicants
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ApplicantsPoit')
    Left = 272
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
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      FieldName = 'Application date'
    end
    object ADOQueryApplicantsSpeciality: TWideStringField
      FieldName = 'Speciality'
      Visible = False
      Size = 35
    end
  end
  object DataSourceApplicants: TDataSource
    DataSet = ADOTableApplicants
    Left = 273
    Top = 369
  end
  object ADOTableApplicants: TADOTable
    Connection = ADOConnectionApplicants
    CursorType = ctStatic
    TableName = 'ApplicantsPoit'
    Left = 320
    Top = 401
    object ADOTableApplicantsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTableApplicantsSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'Surname'
      Size = 35
    end
    object ADOTableApplicantsName: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'Name'
      Size = 35
    end
    object ADOTableApplicantsAveragemark: TFloatField
      DisplayLabel = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      FieldName = 'Average mark'
      DisplayFormat = '######0.0'
    end
    object ADOTableApplicantsApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      FieldName = 'Application date'
    end
    object ADOTableApplicantsSpeciality: TWideStringField
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
    Left = 488
    Top = 345
  end
  object ADOQueryKD: TADOQuery
    Connection = ADOConnectionKD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ApplicantsKd')
    Left = 448
    Top = 375
    object ADOQueryKDid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQueryKDSurname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'Surname'
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
      FieldName = 'Speciality'
      Visible = False
      Size = 35
    end
  end
  object DataSourceKD: TDataSource
    DataSet = ADOTableKD
    Left = 448
    Top = 345
  end
  object ADOTableKD: TADOTable
    Connection = ADOConnectionKD
    CursorType = ctStatic
    TableName = 'ApplicantsKd'
    Left = 488
    Top = 376
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
    Left = 624
    Top = 393
  end
  object ADOQueryPed: TADOQuery
    Connection = ADOConnectionPed
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ApplicantsPed')
    Left = 584
    Top = 431
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
      Visible = False
      DisplayFormat = '######0.0'
    end
    object ADOQueryPedApplicationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080
      FieldName = 'Application date'
    end
    object ADOQueryPedSpeciality: TWideStringField
      FieldName = 'Speciality'
      Size = 35
    end
  end
  object DataSourcePed: TDataSource
    DataSet = ADOTablePed
    Left = 584
    Top = 393
  end
  object ADOTablePed: TADOTable
    Connection = ADOConnectionPed
    CursorType = ctStatic
    TableName = 'ApplicantsPed'
    Left = 624
    Top = 433
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
    Left = 600
    Top = 611
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Books')
    Left = 488
    Top = 555
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 544
    Top = 547
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ApplicantsPed'
    Left = 608
    Top = 611
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
    Left = 800
    Top = 385
  end
  object ADOQueryEl: TADOQuery
    Connection = ADOConnectionEl
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ApplicantsEl')
    Left = 760
    Top = 431
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
    Left = 760
    Top = 393
  end
  object ADOTableEl: TADOTable
    Connection = ADOConnectionEl
    CursorType = ctStatic
    TableName = 'ApplicantsEl'
    Left = 800
    Top = 433
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
  object ADOTableMark: TADOTable
    Connection = ADOConnectionMark
    CursorType = ctStatic
    TableName = 'Specialities'
    Left = 403
    Top = 448
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
  object DataSourceMark: TDataSource
    DataSet = ADOTableMark
    Left = 452
    Top = 448
  end
  object ADOConnectionMark: TADOConnection
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
    Left = 435
    Top = 488
  end
end
