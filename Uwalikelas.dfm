object Form4: TForm4
  Left = 394
  Top = 209
  Width = 928
  Height = 480
  Caption = 'FORM WALI KELAS'
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
    Width = 55
    Height = 18
    Caption = 'NIK/NIP'
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
    Width = 40
    Height = 18
    Caption = 'NAMA'
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
  object lbl6: TLabel
    Left = 48
    Top = 216
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
  object lbl7: TLabel
    Left = 480
    Top = 48
    Width = 120
    Height = 18
    Caption = 'MATA PELAJARAN'
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
    Width = 86
    Height = 18
    Caption = 'PENDIDIKAN'
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
      'select * from tbl_wali_kelas')
    Params = <>
    Left = 128
    Top = 411
    object intgrfldzqry1id_wali_kelas: TIntegerField
      FieldName = 'id_wali_kelas'
      Required = True
    end
    object intgrfldzqry1niknip: TIntegerField
      FieldName = 'nik/nip'
    end
    object strngfldzqry1nama: TStringField
      FieldName = 'nama'
    end
    object strngfldzqry1jk: TStringField
      FieldName = 'jk'
      Size = 1
    end
    object strngfldzqry1pendidikan: TStringField
      FieldName = 'pendidikan'
      Size = 25
    end
    object strngfldzqry1telp: TStringField
      FieldName = 'telp'
      Size = 13
    end
    object strngfldzqry1matpel: TStringField
      FieldName = 'matpel'
      Size = 25
    end
    object strngfldzqry1alamat: TStringField
      FieldName = 'alamat'
      Size = 25
    end
    object strngfldzqry1status: TStringField
      FieldName = 'status'
      Size = 10
    end
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 168
    Top = 411
  end
  object frxdbwali_kelas: TfrxDBDataset
    UserName = 'frxdbwali_kelas'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 616
    Top = 411
  end
  object frxwali_kelas: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45106.431242939800000000
    ReportOptions.LastChange = 45107.666820925920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 544
    Top = 419
    Datasets = <
      item
        DataSet = frxdbwali_kelas
        DataSetName = 'frxdbwali_kelas'
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 393.071120000000000000
          Top = 22.677180000000000000
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
            'LAPORAN DATA WALI KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbwali_kelas
        DataSetName = 'frxdbwali_kelas'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 87.637851870000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_wali_kelas'
          DataSet = frxdbwali_kelas
          DataSetName = 'frxdbwali_kelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbwali_kelas."id_wali_kelas"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 87.637851870000000000
          Width = 85.228401500000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nik/nip'
          DataSet = frxdbwali_kelas
          DataSetName = 'frxdbwali_kelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbwali_kelas."nik/nip"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 173.225308720000000000
          Width = 130.932368020000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxdbwali_kelas
          DataSetName = 'frxdbwali_kelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbwali_kelas."nama"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 417.250663170000000000
          Width = 100.015812620000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pendidikan'
          DataSet = frxdbwali_kelas
          DataSetName = 'frxdbwali_kelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbwali_kelas."pendidikan"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 517.266475800000000000
          Width = 98.985890700000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxdbwali_kelas
          DataSetName = 'frxdbwali_kelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbwali_kelas."telp"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 615.590948750000000000
          Width = 127.842602250000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'matpel'
          DataSet = frxdbwali_kelas
          DataSetName = 'frxdbwali_kelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbwali_kelas."matpel"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 743.433551000000000000
          Width = 127.152838020000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbwali_kelas
          DataSetName = 'frxdbwali_kelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbwali_kelas."alamat"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 870.586389020000000000
          Width = 128.532366470000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbwali_kelas
          DataSetName = 'frxdbwali_kelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbwali_kelas."status"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 302.362400000000000000
          Width = 115.814248020000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jk'
          DataSet = frxdbwali_kelas
          DataSetName = 'frxdbwali_kelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbwali_kelas."jk"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 102.047310000000000000
        Width = 1046.929810000000000000
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
            'ID WALI KELAS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 87.637851870000000000
          Width = 85.228401500000000000
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
            'NIK/NIP')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 173.225308720000000000
          Width = 130.932368020000000000
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
            'NAMA')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 417.250663170000000000
          Width = 100.015812620000000000
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
            'PENDIDIKAN')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 517.266475800000000000
          Width = 98.985890700000000000
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
            'TELEPON')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 615.590948750000000000
          Width = 127.842602250000000000
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
            'MATA PELAJARAN')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 743.433551000000000000
          Width = 127.152838020000000000
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
            'ALAMAT')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 870.586389020000000000
          Width = 128.532366470000000000
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
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Width = 115.814248020000000000
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
            'JENIS KELAMIN')
          ParentFont = False
        end
      end
    end
  end
end
