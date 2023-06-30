object Form3: TForm3
  Left = 254
  Top = 108
  Width = 999
  Height = 585
  Caption = 'FORM SISWA'
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
    Left = 40
    Top = 56
    Width = 24
    Height = 18
    Caption = 'NIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 96
    Width = 34
    Height = 18
    Caption = 'NISN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 136
    Width = 90
    Height = 18
    Caption = 'NAMA SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lb4: TLabel
    Left = 40
    Top = 176
    Width = 25
    Height = 18
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 40
    Top = 256
    Width = 111
    Height = 18
    Caption = 'TANGGAL LAHIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 40
    Top = 296
    Width = 104
    Height = 18
    Caption = 'JENIS KELAMIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 488
    Top = 48
    Width = 56
    Height = 18
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 488
    Top = 88
    Width = 62
    Height = 18
    Caption = 'TELEPON'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 488
    Top = 128
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
  object lbl11: TLabel
    Left = 488
    Top = 168
    Width = 110
    Height = 18
    Caption = 'TINGKAT KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl12: TLabel
    Left = 488
    Top = 208
    Width = 62
    Height = 18
    Caption = 'JURUSAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl13: TLabel
    Left = 488
    Top = 248
    Width = 82
    Height = 18
    Caption = 'WALI KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 216
    Width = 103
    Height = 18
    Caption = 'TEMPAT LAHIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dgdbgrd1: TDBGrid
    Left = 40
    Top = 456
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
    Left = 40
    Top = 360
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
    Left = 224
    Top = 360
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
    Left = 400
    Top = 360
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
    Left = 568
    Top = 360
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
    Left = 736
    Top = 360
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
    Left = 200
    Top = 256
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
    Left = 200
    Top = 296
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
    Left = 648
    Top = 48
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
  object edt9: TEdit
    Left = 648
    Top = 88
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object edt10: TEdit
    Left = 648
    Top = 128
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object edt11: TEdit
    Left = 648
    Top = 168
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
  object edt12: TEdit
    Left = 648
    Top = 208
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
  end
  object edt13: TEdit
    Left = 648
    Top = 248
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
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
    Left = 200
    Top = 483
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_siswa')
    Params = <>
    Left = 120
    Top = 483
    object intgrfldzqry1id_siswa: TIntegerField
      FieldName = 'id_siswa'
      Required = True
    end
    object intgrfldzqry1nis: TIntegerField
      FieldName = 'nis'
    end
    object intgrfldzqry1nisn: TIntegerField
      FieldName = 'nisn'
    end
    object strngfldzqry1nama_siswa: TStringField
      FieldName = 'nama_siswa'
      Size = 25
    end
    object intgrfldzqry1nik: TIntegerField
      FieldName = 'nik'
    end
    object strngfldzqry1tempat_lahir: TStringField
      FieldName = 'tempat_lahir'
      Size = 25
    end
    object dtfldzqry1tanggal_lahir: TDateField
      FieldName = 'tanggal_lahir'
    end
    object strngfldzqry1jenis_kelamin: TStringField
      FieldName = 'jenis_kelamin'
      Size = 1
    end
    object strngfldzqry1alamat: TStringField
      FieldName = 'alamat'
      Size = 50
    end
    object strngfldzqry1telp: TStringField
      FieldName = 'telp'
      Size = 13
    end
    object strngfldzqry1status: TStringField
      FieldName = 'status'
      Size = 8
    end
    object strngfldzqry1tingkat_kelas: TStringField
      FieldName = 'tingkat_kelas'
      Size = 10
    end
    object strngfldzqry1jurusan: TStringField
      FieldName = 'jurusan'
      Size = 25
    end
    object strngfldzqry1wali_kelas: TStringField
      FieldName = 'wali_kelas'
      Size = 25
    end
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 160
    Top = 483
  end
  object frxdbsiswa: TfrxDBDataset
    UserName = 'frxdbsiswa'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 600
    Top = 467
  end
  object frxsiswa: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45106.431242939800000000
    ReportOptions.LastChange = 45107.373418993100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 467
    Datasets = <
      item
        DataSet = frxdbsiswa
        DataSetName = 'frxdbsiswa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 420.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 8
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 1511.812000000000000000
        object Memo1: TfrxMemoView
          Left = 623.622450000000000000
          Top = 22.677180000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'LAPORAN DATA SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 1511.812000000000000000
        DataSet = frxdbsiswa
        DataSetName = 'frxdbsiswa'
        RowCount = 0
        object Memo16: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."id_siswa"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nis'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."nis"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 170.078850000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nisn'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."nisn"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 238.110390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_siswa'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."nama_siswa"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 340.157700000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."nik"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 442.205010000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tempat_lahir'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."tempat_lahir"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 563.149970000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal_lahir'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."tanggal_lahir"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 695.433520000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis_kelamin'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 831.496600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."alamat"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 944.882500000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."telp"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 1058.268400000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."status"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 1160.315710000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tingkat_kelas'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."tingkat_kelas"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 1285.040200000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jurusan'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."jurusan"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 1409.764690000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'wali_kelas'
          DataSet = frxdbsiswa
          DataSetName = 'frxdbsiswa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbsiswa."wali_kelas"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 102.047310000000000000
        Width = 1511.812000000000000000
        object Memo2: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SISWA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 170.078850000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NISN')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 238.110390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA SISWA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 340.157700000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 442.205010000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TEMPAT LAHIR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 563.149970000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL LAHIR')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 695.433520000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JENIS KELAMIN')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 831.496600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 944.882500000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TELPON')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 1058.268400000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 1160.315710000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TINGKAT KELAS')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 1285.040200000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JURUSAN')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 1409.764690000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'WALI KELAS')
          ParentFont = False
        end
      end
    end
  end
end
