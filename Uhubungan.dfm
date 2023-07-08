object Form8: TForm8
  Left = -8
  Top = -8
  Width = 1382
  Height = 744
  Caption = 'FORM HUBUNGAN'
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
    Caption = 'SISWA ID'
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
    Width = 104
    Height = 18
    Caption = 'ORANG TUA ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 448
    Top = 48
    Width = 92
    Height = 18
    Caption = 'KETERANGAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 448
    Top = 96
    Width = 139
    Height = 18
    Caption = 'STATUS HUB. ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l1: TLabel
    Left = 48
    Top = 128
    Width = 136
    Height = 18
    Caption = 'STATUS HUB. ANAK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dgdbgrd1: TDBGrid
    Left = 56
    Top = 280
    Width = 753
    Height = 225
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
        FieldName = 'id_hubungan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'siswa_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ortu_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_hub_anak'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'keterangan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_ortu'
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 80
    Top = 192
    Width = 121
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
    Top = 192
    Width = 121
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
    Left = 368
    Top = 192
    Width = 113
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
    Left = 504
    Top = 192
    Width = 113
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
    Left = 640
    Top = 192
    Width = 129
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
    Left = 632
    Top = 48
    Width = 185
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Cb1: TComboBox
    Left = 216
    Top = 48
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'pilih --'
  end
  object Cb2: TComboBox
    Left = 216
    Top = 88
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = 'pilih --'
  end
  object Cb3: TComboBox
    Left = 216
    Top = 128
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'pilih --'
    Items.Strings = (
      'Kandung'
      'Tiri')
  end
  object Cb4: TComboBox
    Left = 632
    Top = 96
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Text = 'pilih --'
    Items.Strings = (
      'ALM'
      'Hidup')
  end
  object frxhubungan: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45103.878057199100000000
    ReportOptions.LastChange = 45110.007653055600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 624
    Top = 344
    Datasets = <
      item
        DataSet = frxdbhubungan
        DataSetName = 'frxdbhubungan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 71.811070000000000000
          Top = 7.559060000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA STATUS HUBUNGAN ORANG TUA DAN SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574805590000000000
        Top = 79.370130000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 45.354360000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'SISWA ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ORTU ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 272.126160000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS HUB ANAK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KET')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 536.693260000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS ORTU')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        DataSet = frxdbhubungan
        DataSetName = 'frxdbhubungan'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'siswa_id'
          DataSet = frxdbhubungan
          DataSetName = 'frxdbhubungan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbhubungan."siswa_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 177.637910000000000000
          Width = 94.488250000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'ortu_id'
          DataSet = frxdbhubungan
          DataSetName = 'frxdbhubungan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbhubungan."ortu_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 272.126160000000000000
          Width = 162.519790000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'status_hub_anak'
          DataSet = frxdbhubungan
          DataSetName = 'frxdbhubungan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbhubungan."status_hub_anak"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 434.645950000000000000
          Width = 102.047310000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'keterangan'
          DataSet = frxdbhubungan
          DataSetName = 'frxdbhubungan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbhubungan."keterangan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 536.693260000000000000
          Width = 162.519790000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'status_ortu'
          DataSet = frxdbhubungan
          DataSetName = 'frxdbhubungan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbhubungan."status_ortu"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 45.354360000000000000
        Top = 241.889920000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          Left = 366.614410000000000000
          Top = 11.338590000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Data Status Hubungan Ortu-Anak :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 642.520100000000000000
          Top = 11.338590000000000000
          Width = 37.795275590551200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbhubungan: TfrxDBDataset
    UserName = 'frxdbhubungan'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 624
    Top = 408
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
    Left = 192
    Top = 385
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select *from tbl_hubungan')
    Params = <>
    Left = 104
    Top = 385
    object intgrfldzqry1id_hubungan: TIntegerField
      FieldName = 'id_hubungan'
      Required = True
    end
    object intgrfldzqry1siswa_id: TIntegerField
      FieldName = 'siswa_id'
    end
    object intgrfldzqry1ortu_id: TIntegerField
      FieldName = 'ortu_id'
    end
    object strngfldzqry1status_hub_anak: TStringField
      FieldName = 'status_hub_anak'
      Size = 7
    end
    object strngfldzqry1keterangan: TStringField
      FieldName = 'keterangan'
      Size = 5
    end
    object strngfldzqry1status_ortu: TStringField
      FieldName = 'status_ortu'
      Size = 5
    end
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 144
    Top = 385
  end
end
