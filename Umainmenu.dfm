object Form1: TForm1
  Left = 349
  Top = 197
  Width = 926
  Height = 474
  Caption = 'MENU UTAMA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 48
    Top = 40
    object fFILE1: TMenuItem
      Caption = 'FILE'
      object fDATAKELAS1: TMenuItem
        Caption = 'DATA KELAS'
        OnClick = fDATAKELAS1Click
      end
      object fDATASISWA1: TMenuItem
        Caption = 'DATA SISWA'
        OnClick = fDATASISWA1Click
      end
      object fDATAWALIKELAS1: TMenuItem
        Caption = 'DATA WALI KELAS'
        OnClick = fDATAWALIKELAS1Click
      end
      object fDATASEMESTER1: TMenuItem
        Caption = 'DATA SEMESTER'
        OnClick = fDATASEMESTER1Click
      end
      object fDATAPOIN1: TMenuItem
        Caption = 'DATA POIN'
        OnClick = fDATAPOIN1Click
      end
      object fDATAORANGTUA1: TMenuItem
        Caption = 'DATA ORANG TUA'
        OnClick = fDATAORANGTUA1Click
      end
      object fDATAHUBUNGAN1: TMenuItem
        Caption = 'DATA HUBUNGAN'
        OnClick = fDATAHUBUNGAN1Click
      end
      object fDATAUSER1: TMenuItem
        Caption = 'DATA USER'
        OnClick = fDATAUSER1Click
      end
    end
  end
end
