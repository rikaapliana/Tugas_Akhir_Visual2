unit Usiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids,
  ComCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    dgdbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    edt1: TEdit;
    edt2: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl3: TLabel;
    lb4: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    edt5: TEdit;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt8: TEdit;
    edt9: TEdit;
    lbl11: TLabel;
    lbl12: TLabel;
    edt10: TEdit;
    edt11: TEdit;
    lbl13: TLabel;
    edt12: TEdit;
    intgrfldzqry1id_siswa: TIntegerField;
    intgrfldzqry1nis: TIntegerField;
    intgrfldzqry1nisn: TIntegerField;
    strngfldzqry1nama_siswa: TStringField;
    intgrfldzqry1nik: TIntegerField;
    strngfldzqry1tempat_lahir: TStringField;
    dtfldzqry1tanggal_lahir: TDateField;
    strngfldzqry1jenis_kelamin: TStringField;
    strngfldzqry1alamat: TStringField;
    strngfldzqry1telp: TStringField;
    strngfldzqry1status: TStringField;
    strngfldzqry1tingkat_kelas: TStringField;
    strngfldzqry1jurusan: TStringField;
    strngfldzqry1wali_kelas: TStringField;
    lbl5: TLabel;
    edt13: TEdit;
    dtp1: TDateTimePicker;
    Cbjk: TComboBox;
    frxsiswa: TfrxReport;
    frxdbsiswa: TfrxDBDataset;
    procedure bersih;
    procedure posisiawal;
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
  Form3: TForm3;
  id:string;

implementation

{$R *.dfm}

procedure TForm3.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt8.Clear;
edt9.Clear;
edt10.Clear;
edt11.Clear;
edt12.Clear;
edt13.Clear;
end;

procedure TForm3.posisiawal;
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
Cbjk.Enabled:= False;
edt8.Enabled:= False;
edt9.Enabled:= False;
edt10.Enabled:= False;
edt11.Enabled:= False;
edt12.Enabled:= False;
edt13.Enabled:= False;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') or (edt8.Text='') or (edt9.Text='') or (edt10.Text='') or (edt11.Text='')or (edt12.Text='')or (edt13.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (zqry1.Locate('nis', edt1.Text,[])) and (zqry1.Locate('nisn', edt2.Text,[]))  then
  begin
    ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
    posisiawal;
  end else
  begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into tbl_siswa values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'","'+Cbjk.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'","'+edt11.Text+'","'+edt12.Text+'","'+edt13.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_siswa');
  zqry1.Open;
  ShowMessage('DATA BARHASIL DISIMPAN!');
  posisiawal;

  end;


end;

procedure TForm3.btn1Click(Sender: TObject);
begin
enable;
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tbl_siswa where id_siswa="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_siswa');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end

end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') or (edt8.Text='') or (edt9.Text='') or (edt10.Text='') or (edt11.Text='')or (edt12.Text='')or (edt13.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (edt1.Text= zqry1.FieldList[1].AsString) and (edt2.Text = zqry1.FieldList[2].AsString) and (edt3.Text = zqry1.FieldList[3].AsString) and (edt13.Text = zqry1.FieldList[13].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  id:=dgdbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tbl_siswa set nis="'+edt1.Text+'",nisn="'+edt2.Text+'",nama_siswa="'+edt3.Text+'",nik="'+edt4.Text+'",tempat_lahir="'+edt5.Text+'",tanggal_lahir="'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'", jenis_kelamin="'+Cbjk.Text+'",alamat="'+edt8.Text+'",telp="'+edt9.Text+'",status="'+edt10.Text+'",tingkat_kelas="'+edt11.Text+'",jurusan="'+edt12.Text+'",wali_kelas="'+edt13.Text+'" where id_siswa ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_siswa');
  zqry1.Open;
   posisiawal;
  end;

end;


procedure TForm3.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.dgdbgrd1CellClick(Column: TColumn);
begin
enable;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
edt3.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString;
edt5.Text:= zqry1.Fields[5].AsString;
dtp1.Date:= StrToDate(zqry1.Fields[6].AsString);
Cbjk.Text:= zqry1.Fields[7].AsString;
edt8.Text:= zqry1.Fields[8].AsString;
edt9.Text:= zqry1.Fields[9].AsString;
edt10.Text:= zqry1.Fields[10].AsString;
edt11.Text:= zqry1.Fields[11].AsString;
edt12.Text:= zqry1.Fields[12].AsString;
edt13.Text:= zqry1.Fields[13].AsString;
end;

procedure TForm3.enable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
Cbjk.Enabled:= True;
edt8.Enabled:= True;
edt9.Enabled:= True;
edt10.Enabled:= True;
edt11.Enabled:= True;
edt12.Enabled:= True;
edt13.Enabled:= True;
end;

end.
