unit Upoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    dgdbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxdbpoin: TfrxDBDataset;
    frxpoin: TfrxReport;
    intgrfldzqry1id_poin: TIntegerField;
    strngfldzqry1nama_poin: TStringField;
    strngfldzqry1bobot: TStringField;
    strngfldzqry1jenis: TStringField;
    strngfldzqry1status: TStringField;
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dgdbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id:String;

implementation

{$R *.dfm}

procedure TForm6.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;

procedure TForm6.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('NAMA POIN TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('BOBOT TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('JENIS KELAS KELAMIN TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else

begin
zqry1.SQL.Clear; //simpan
zqry1.SQL.Add('insert into tbl_poin values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_poin');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tbl_poin where id_poin="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_poin');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end

end;

procedure TForm6.btn3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tbl_poin set nama_poin="'+edt1.Text+'",bobot="'+edt2.Text+'",jenis="'+edt3.Text+'",status="'+edt4.Text+'" where id_poin ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_poin');
zqry1.Open;
posisiawal;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.dgdbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
edt3.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
end;

end.
