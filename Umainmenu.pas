unit Umainmenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Ukelas, Usiswa ;

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

end.
