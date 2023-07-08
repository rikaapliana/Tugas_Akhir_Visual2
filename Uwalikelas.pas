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
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    intgrfldzqry1id_wali_kelas: TIntegerField;
    intgrfldzqry1niknip: TIntegerField;
    strngfldzqry1nama: TStringField;
    strngfldzqry1jk: TStringField;
    strngfldzqry1pendidikan: TStringField;
    strngfldzqry1telp: TStringField;
    strngfldzqry1matpel: TStringField;
    strngfldzqry1alamat: TStringField;
    strngfldzqry1status: TStringField;
    Cb1: TComboBox;
    Cb2: TComboBox;
    frxwali_kelas: TfrxReport;
    frxdbwali_kelas: TfrxDBDataset;
    procedure posisiawal;
    procedure bersih;
    procedure enable;
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
Cb1.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
Cb2.Enabled:= False;
end;

procedure TForm4.bersih;
begin
edt1.Clear;
edt2.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt4.Text='') or (edt5.Text='') or (edt6.Text='') or (edt7.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (zqry1.Locate('nik/nip', edt1.Text,[])) and (zqry1.Locate('nama', edt2.Text,[]))  then
  begin
    ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
    posisiawal;
  end else
  begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into tbl_wali_kelas values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cb1.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+cb2.Text+'")');
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
enable;
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
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
  if (edt1.Text='') or (edt2.Text='') or (edt4.Text='') or (edt5.Text='') or (edt6.Text='') or (edt7.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (edt1.Text= zqry1.FieldList[1].AsString) and (edt2.Text = zqry1.FieldList[2].AsString) and (cb1.Text = zqry1.FieldList[3].AsString) and (cb2.Text = zqry1.FieldList[8].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  id:=dgdbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tbl_wali_kelas set nik/nip="'+edt1.Text+'",nama="'+edt2.Text+'",jk="'+cb1.Text+'",pendidikan="'+edt4.Text+'",telp="'+edt5.Text+'",matpel="'+edt6.Text+'",alamat="'+edt7.Text+'",status="'+cb2.Text+'" where id_wali_kelas ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_wali_kelas');
  zqry1.Open;
  posisiawal;
  end;

end;


procedure TForm4.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.dgdbgrd1CellClick(Column: TColumn);
begin
enable;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
cb1.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString;
edt5.Text:= zqry1.Fields[5].AsString;
edt6.Text:= zqry1.Fields[6].AsString;
edt7.Text:= zqry1.Fields[7].AsString;
cb2.Text:= zqry1.Fields[8].AsString;
end;

procedure TForm4.enable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
Cb1.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
Cb2.Enabled:= True;
end;

end.
