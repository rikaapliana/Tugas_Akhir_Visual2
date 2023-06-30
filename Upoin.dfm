object Form6: TForm6
  Left = 359
  Top = 251
  Width = 928
  Height = 442
  Caption = 'FORM POIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 72
    Top = 56
    Width = 80
    Height = 18
    Caption = 'NAMA POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 72
    Top = 96
    Width = 50
    Height = 18
    Caption = 'BOBOT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 72
    Top = 136
    Width = 38
    Height = 18
    Caption = 'JENIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 72
    Top = 176
    Width = 55
    Height = 18
    Caption = 'STATUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dgdbgrd1: TDBGrid
    Left = 48
    Top = 344
    Width = 625
    Height = 177
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dgdbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_poin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_poin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bobot'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 56
    Top = 240
    Width = 105
    Height = 65
    Caption = 'Baru'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 184
    Top = 240
    Width = 105
    Height = 65
    Caption = 'Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 312
    Top = 240
    Width = 97
    Height = 65
    Caption = 'Edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 432
    Top = 240
    Width = 97
    Height = 65
    Caption = 'Hapus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 552
    Top = 240
    Width = 105
    Height = 65
    Caption = 'Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btn5Click
  end
  object edt1: TEdit
    Left = 224
    Top = 56
    Width = 433
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object edt2: TEdit
    Left = 224
    Top = 96
    Width = 433
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edt3: TEdit
    Left = 224
    Top = 144
    Width = 433
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object edt4: TEdit
    Left = 224
    Top = 184
    Width = 433
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    Port = 3306
    Database = 'db_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\LENOVO 110-14IBR\Documents\Rika Apliana_2110010300_UAS_' +
      'Visual2\libmysql.dll'
    Left = 216
    Top = 465
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_poin')
    Params = <>
    Left = 128
    Top = 465
    object intgrfldzqry1id_poin: TIntegerField
      FieldName = 'id_poin'
      Required = True
    end
    object strngfldzqry1nama_poin: TStringField
      FieldName = 'nama_poin'
      Size = 25
    end
    object strngfldzqry1bobot: TStringField
      FieldName = 'bobot'
      Size = 25
    end
    object strngfldzqry1jenis: TStringField
      FieldName = 'jenis'
      Size = 11
    end
    object strngfldzqry1status: TStringField
      FieldName = 'status'
      Size = 8
    end
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 168
    Top = 465
  end
  object frxdbpoin: TfrxDBDataset
    UserName = 'frxdbpoin'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 584
    Top = 465
  end
  object frxpoin: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45106.431242939800000000
    ReportOptions.LastChange = 45107.942353831020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 457
    Datasets = <
      item
        DataSet = frxdbpoin
        DataSetName = 'frxdbpoin'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 181.417440000000000000
          Top = 26.456710000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'LAPORAN DATA POIN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxdbpoin
        DataSetName = 'frxdbpoin'
        RowCount = 0
        object Memo7: TfrxMemoView
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_poin'
          DataSet = frxdbpoin
          DataSetName = 'frxdbpoin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbpoin."id_poin"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 86.929190000000000000
          Width = 182.126101870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_poin'
          DataSet = frxdbpoin
          DataSetName = 'frxdbpoin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbpoin."nama_poin"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 268.346630000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'bobot'
          DataSet = frxdbpoin
          DataSetName = 'frxdbpoin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbpoin."bobot"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 355.275820000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis'
          DataSet = frxdbpoin
          DataSetName = 'frxdbpoin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbpoin."jenis"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 442.205010000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbpoin
          DataSetName = 'frxdbpoin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbpoin."status"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID POIN')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 86.929190000000000000
          Width = 182.126101870000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA POIN')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 268.346630000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'BOBOT')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 355.275820000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JENIS')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 442.205010000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
      end
    end
  end
end
