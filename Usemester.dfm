object Form5: TForm5
  Left = 192
  Top = 77
  Width = 928
  Height = 570
  Caption = 'FORM SEMESTER'
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
    Left = 48
    Top = 48
    Width = 66
    Height = 18
    Caption = 'ID SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 48
    Top = 88
    Width = 56
    Height = 18
    Caption = 'ID POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 48
    Top = 128
    Width = 103
    Height = 18
    Caption = 'ID WALI KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 48
    Top = 216
    Width = 62
    Height = 18
    Caption = 'ID KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 480
    Top = 48
    Width = 65
    Height = 18
    Caption = 'TANGGAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 480
    Top = 96
    Width = 71
    Height = 18
    Caption = 'SEMESTER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 480
    Top = 144
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
  object lbl5: TLabel
    Left = 48
    Top = 168
    Width = 104
    Height = 18
    Caption = 'ID ORANG TUA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dgdbgrd1: TDBGrid
    Left = 48
    Top = 384
    Width = 841
    Height = 177
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dgdbgrd1CellClick
  end
  object btn1: TButton
    Left = 48
    Top = 288
    Width = 153
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
    Left = 232
    Top = 288
    Width = 145
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
    Left = 408
    Top = 288
    Width = 137
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
    Left = 576
    Top = 288
    Width = 137
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
    Left = 744
    Top = 288
    Width = 145
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
    Left = 200
    Top = 48
    Width = 233
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
    Left = 200
    Top = 88
    Width = 233
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
    Left = 200
    Top = 136
    Width = 233
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
    Left = 200
    Top = 176
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object edt5: TEdit
    Left = 200
    Top = 216
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object edt6: TEdit
    Left = 656
    Top = 48
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object edt7: TEdit
    Left = 656
    Top = 88
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object edt8: TEdit
    Left = 656
    Top = 136
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
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
    Left = 208
    Top = 411
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_semester')
    Params = <>
    Left = 128
    Top = 411
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 168
    Top = 411
  end
  object frxdbsemester: TfrxDBDataset
    UserName = 'frxdbsemester'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 616
    Top = 411
  end
  object frxsemester: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45106.431242939800000000
    ReportOptions.LastChange = 45107.911249699100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 411
    Datasets = <
      item
        DataSet = frxdbsemester
        DataSetName = 'frxdbsemester'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 377.953000000000000000
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
            'LAPORAN DATA SEMESTER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbsemester
        DataSetName = 'frxdbsemester'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 117.165430000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_semester'
          DataSet = frxdbsemester
          DataSetName = 'frxdbsemester'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsemester."id_semester"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 204.094620000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'siswa_id'
          DataSet = frxdbsemester
          DataSetName = 'frxdbsemester'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsemester."siswa_id"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 291.023810000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'poin_id'
          DataSet = frxdbsemester
          DataSetName = 'frxdbsemester'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsemester."poin_id"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 377.953000000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'wali_id'
          DataSet = frxdbsemester
          DataSetName = 'frxdbsemester'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsemester."wali_id"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 464.882190000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ortu_id'
          DataSet = frxdbsemester
          DataSetName = 'frxdbsemester'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsemester."ortu_id"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 551.811380000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kelas_id'
          DataSet = frxdbsemester
          DataSetName = 'frxdbsemester'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsemester."kelas_id"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 638.740570000000000000
          Width = 110.315031870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxdbsemester
          DataSetName = 'frxdbsemester'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsemester."tanggal"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 748.346940000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'semester'
          DataSet = frxdbsemester
          DataSetName = 'frxdbsemester'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsemester."semester"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 835.276130000000000000
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbsemester
          DataSetName = 'frxdbsemester'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsemester."status"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 113.385900000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Left = 117.165430000000000000
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
            'ID SEMESTER')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 204.094620000000000000
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
            'ID SISWA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 291.023810000000000000
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
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
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
            'ID WALI KELAS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 464.882190000000000000
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
            'ID ORANG TUA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 551.811380000000000000
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
            'ID KELAS')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 638.740570000000000000
          Width = 110.315031870000000000
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
            'TANGGAL')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 748.346940000000000000
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
            'SEMESTER')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 835.276130000000000000
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
