unit Usemester;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids,
  ComCtrls;

type
  TForm5 = class(TForm)
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
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxsemester: TfrxReport;
    frxdbsemester: TfrxDBDataset;
    dtp1: TDateTimePicker;
    Cb1: TComboBox;
    Cb2: TComboBox;
    Cb3: TComboBox;
    Cb4: TComboBox;
    Cb5: TComboBox;
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
  Form5: TForm5;
  id:string;

implementation

{$R *.dfm}

procedure TForm5.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;

Cb1.Enabled:= False;
Cb2.Enabled:= False;
Cb3.Enabled:= False;
Cb4.Enabled:= False;
Cb5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;

end;

procedure TForm5.bersih;
begin
edt1.Clear;
edt2.Clear;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;

   Cb1.Items.Clear;
   Cb2.Items.Clear;
   Cb3.Items.Clear;
   Cb4.Items.Clear;
   Cb5.Items.Clear;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT siswa_id FROM tbl_semester');
  zqry1.Open;

  while not zqry1.Eof do
  begin
    Cb1.Items.Add(zqry1.FieldByName('siswa_id').AsString);
    zqry1.Next;
  end;

  zqry1.Close;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT poin_id FROM tbl_semester');
  zqry1.Open;

  while not zqry1.Eof do
  begin
    Cb2.Items.Add(zqry1.FieldByName('poin_id').AsString);
    zqry1.Next;
  end;

  zqry1.Close;



  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT wali_id FROM tbl_semester');
  zqry1.Open;

 
  while not zqry1.Eof do
  begin
    Cb3.Items.Add(zqry1.FieldByName('wali_id').AsString);
    zqry1.Next;
  end;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT ortu_id FROM tbl_semester');
  zqry1.Open;

  while not zqry1.Eof do
  begin
    Cb4.Items.Add(zqry1.FieldByName('ortu_id').AsString);
   zqry1.Next;
  end;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT kelas_id FROM tbl_semester');
  zqry1.Open;


  while not zqry1.Eof do
  begin
    Cb5.Items.Add(zqry1.FieldByName('kelas_id').AsString);
    zqry1.Next;
  end;

  dgdbgrd1.DataSource := ds1;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM tbl_semester');
  zqry1.Open;

end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (zqry1.Locate('siswa_id', Cb1.Text,[])) and (zqry1.Locate('wali_id', Cb2.Text,[]))  then
  begin
    ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
    posisiawal;
  end else
begin
zqry1.SQL.Clear; //simpan
zqry1.SQL.Add('insert into tbl_semester values(null,"'+Cb1.Text+'","'+Cb2.Text+'","'+Cb3.Text+'","'+Cb4.Text+'","'+Cb5.Text+'","'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'","'+edt1.Text+'","'+edt2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_semestter');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;

end;

procedure TForm5.btn1Click(Sender: TObject);
begin
enable;
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tbl_semester where id_semester="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_semester');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end

end;

procedure TForm5.btn3Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
if (Cb1.Text= zqry1.FieldList[1].AsString) and (Cb2.Text = zqry1.FieldList[2].AsString) and (Cb3.Text = zqry1.FieldList[3].AsString) and (edt2.Text = zqry1.FieldList[8].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tbl_semester set siswa_id="'+Cb1.Text+'",poin_id="'+Cb2.Text+'",wali_id="'+Cb3.Text+'",ortu_id="'+Cb4.Text+'",kelas_id="'+Cb5.Text+'",tanggal="'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'",semester="'+edt1.Text+'",status="'+edt2.Text+'" where id_semester ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_semester');
  zqry1.Open;
  posisiawal;
 end
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.dgdbgrd1CellClick(Column: TColumn);
begin
enable;

btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:= zqry1.Fields[0].AsString;
Cb1.Text:= zqry1.Fields[1].AsString;
Cb2.Text:= zqry1.Fields[2].AsString;
Cb3.Text:= zqry1.Fields[3].AsString;
Cb4.Text:= zqry1.Fields[4].AsString;
Cb5.Text:= zqry1.Fields[5].AsString;
dtp1.Date:= StrToDate(zqry1.Fields[6].AsString);
edt1.Text:= zqry1.Fields[7].AsString;
edt2.Text:= zqry1.Fields[8].AsString;
end;

procedure TForm5.enable;
begin
Cb1.Enabled:= True;
Cb2.Enabled:= True;
Cb3.Enabled:= True;
Cb4.Enabled:= True;
Cb5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
end;

end.
