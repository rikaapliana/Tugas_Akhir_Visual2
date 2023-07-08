unit Umainmenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Ukelas, Usiswa, Uwalikelas, Usemester, Upoin, Uortu, Uhubungan, U,  Uuser ;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    fDATAKELAS1: TMenuItem;
    fDATASISWA1: TMenuItem;
    fDATAWALIKELAS1: TMenuItem;
    fDATASEMESTER1: TMenuItem;
    fDATAPOIN1: TMenuItem;
    fDATAORANGTUA1: TMenuItem;
    fDATAHUBUNGAN1: TMenuItem;
    fDATAUSER1: TMenuItem;
    procedure fDATAKELAS1Click(Sender: TObject);
    procedure fDATASISWA1Click(Sender: TObject);
    procedure fDATAWALIKELAS1Click(Sender: TObject);
    procedure fDATASEMESTER1Click(Sender: TObject);
    procedure fDATAPOIN1Click(Sender: TObject);
    procedure fDATAORANGTUA1Click(Sender: TObject);
    procedure fDATAHUBUNGAN1Click(Sender: TObject);
    procedure fDATAUSER1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.fDATAKELAS1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.fDATASISWA1Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm1.fDATAWALIKELAS1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.fDATASEMESTER1Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm1.fDATAPOIN1Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm1.fDATAORANGTUA1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm1.fDATAHUBUNGAN1Click(Sender: TObject);
begin
form8.ShowModal;
end;

procedure TForm1.fDATAUSER1Click(Sender: TObject);
begin
Form9.ShowModal
end;

end.
