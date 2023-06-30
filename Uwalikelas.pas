unit Uwalikelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
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
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxdbwali_kelas: TfrxDBDataset;
    frxwali_kelas: TfrxReport;
    intgrfldzqry1id_wali_kelas: TIntegerField;
    intgrfldzqry1niknip: TIntegerField;
    strngfldzqry1nama: TStringField;
    strngfldzqry1jk: TStringField;
    strngfldzqry1pendidikan: TStringField;
    strngfldzqry1telp: TStringField;
    strngfldzqry1matpel: TStringField;
    strngfldzqry1alamat: TStringField;
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
  Form4: TForm4;
    id:string;

implementation

{$R *.dfm}

procedure TForm4.posisiawal;
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
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;
end;

procedure TForm4.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('NIK/NIP SISWA TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('NAMA TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('TELEPON TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('MATA PELAJARAN LAHIR TIDAK BOLEH KOSONG!');
end else
if edt7.Text ='' then
begin
ShowMessage('ALAMAT TIDAK BOLEH KOSONG!');
end else
if edt8.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else

begin
zqry1.SQL.Clear; //simpan
zqry1.SQL.Add('insert into tbl_wali_kelas values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_wali_kelas');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;

end;

procedure TForm4.btn1Click(Sender: TObject);
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
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tbl_wali_kelas where id_wali_kelas="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_wali_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end

end;

procedure TForm4.btn3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tbl_wali_kelas set nik/nip="'+edt1.Text+'",nama="'+edt2.Text+'",jk="'+edt3.Text+'",pendidikan="'+edt4.Text+'",telp="'+edt5.Text+'",matpel="'+edt6.Text+'",alamat="'+edt7.Text+'",statust="'+edt8.Text+'" where id_wali_kelas ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_wali_kelas');
zqry1.Open;
posisiawal;
end;


procedure TForm4.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.dgdbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
edt3.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString;
edt5.Text:= zqry1.Fields[5].AsString;
edt6.Text:= zqry1.Fields[6].AsString;
edt7.Text:= zqry1.Fields[7].AsString;
edt8.Text:= zqry1.Fields[8].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;

btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

end;

end.
