object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'MainForm'
  ClientHeight = 328
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMenu: TPanel
    Left = -8
    Top = -9
    Width = 425
    Height = 521
    Color = clNone
    ParentBackground = False
    TabOrder = 0
    object LabelBookList: TLabel
      Left = 59
      Top = 64
      Width = 287
      Height = 48
      Cursor = crHandPoint
      Caption = #1040#1073#1080#1090#1091#1088#1080#1077#1085#1090#1099
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clSilver
      Font.Height = -48
      Font.Name = 'Fixedsys'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
      OnClick = LabelBookListClick
    end
    object LabelGenreList: TLabel
      Left = 11
      Top = 192
      Width = 407
      Height = 48
      Cursor = crHandPoint
      Caption = #1042#1085#1077#1089#1090#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clSilver
      Font.Height = -48
      Font.Name = 'Fixedsys'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
      OnClick = LabelGenreListClick
    end
  end
end
